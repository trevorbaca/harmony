%! ide.Path.extern()
ab_Global_Skips = {

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Skips measure 256 / measure 1]
    %! baca.SegmentMaker._make_global_skips(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 2/4
    %! EMPTY_START_BAR
    %! +SEGMENT
    %! baca.SegmentMaker._make_global_skips(4)
    \bar ""
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 1/2
    %! baca.rehearsal_mark()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    - \tweak extra-offset #'(0 . 18)
    %! baca.rehearsal_mark()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    - \baca-rehearsal-mark-markup "BB" #10
    %! baca.rehearsal_mark()
    %! +PARTS
    %! baca.IndicatorCommand._call()
%%% - \tweak extra-offset #'(0 . 10)
    %! baca.rehearsal_mark()
    %! +PARTS
    %! baca.IndicatorCommand._call()
%%% - \baca-rehearsal-mark-markup "BB" #4
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "1"
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% - \baca-start-mn-left-only "256"
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    - \baca-start-snm-left-only "[BB.1-4]"
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \abjad-invisible-line
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #1 #1 #2 #0 #'(1 . 1)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \abjad-invisible-line
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #1 #1 #2 #0 #'(0.525 . 0.525)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \abjad-invisible-line
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "48"
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #1 #2 #0 #'(1 . 1) #'blue
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% - \baca-start-ct-left-only "[13'56'']"
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Skips measure 257 / measure 2]
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 1/2
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "2"
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% - \baca-start-mn-left-only "257"
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% - \baca-start-ct-left-only "[13'58'']"
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Skips measure 258 / measure 3]
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 1/2
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "3"
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% - \baca-start-mn-left-only "258"
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% - \baca-start-ct-left-only "[14'01'']"
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Skips measure 259 / measure 4]
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 1/2
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "4"
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% - \baca-start-mn-left-only "259"
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% - \baca-start-ct-left-only "[14'03'']"
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Skips measure 260 / measure 5]
    %! baca.SegmentMaker._make_global_skips(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 6/4
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 3/2
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanSNM
    %! baca.SegmentMaker._attach_metronome_marks(1)
    \bacaStopTextSpanMM
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "5"
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% - \baca-start-mn-left-only "260"
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    - \baca-start-snm-colored-left-only "[◀Y.2]" #darkgreen
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \abjad-invisible-line
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \abjad-invisible-line
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(0.525 . 0.525)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \abjad-invisible-line
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text-mixed-number 2 0 1 "57" "3" "5"
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% - \baca-start-ct-left-only "[14'06'']"
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Skips measure 261 / measure 6]
    %! baca.SegmentMaker._make_global_skips(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 1/4
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 1/4
    %! baca.markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    - \tweak extra-offset #'(4 . -30)
    %! baca.markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    ^ \harmony-text-twenty-seven
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "6"
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% - \baca-start-mn-left-only "261"
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% - \baca-start-ct-left-only-fermata "2''"
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Skips measure 262 / measure 7]
    %! baca.SegmentMaker._make_global_skips(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 7/4
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 7/4
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanSNM
    %! baca.SegmentMaker._attach_metronome_marks(1)
    \bacaStopTextSpanMM
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "7"
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% - \baca-start-mn-left-only "262"
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    - \baca-start-snm-left-only "[BB.5-8]"
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \abjad-invisible-line
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \abjad-invisible-line
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(0.525 . 0.525)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \abjad-invisible-line
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "48"
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) #'blue
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% - \baca-start-ct-left-only "[14'14'']"
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Skips measure 263 / measure 8]
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 7/4
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "8"
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% - \baca-start-mn-left-only "263"
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% - \baca-start-ct-left-only "[14'23'']"
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Skips measure 264 / measure 9]
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 7/4
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "9"
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% - \baca-start-mn-left-only "264"
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% - \baca-start-ct-left-only "[14'31'']"
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Skips measure 265 / measure 10]
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 7/4
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStopTextSpanCT
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "10"
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% - \baca-start-mn-left-only "265"
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% - \baca-start-ct-both "[14'40'']" "[14'49'']"
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.SegmentMaker._style_phantom_measures(1)
    %! PHANTOM
    % [28 Global_Skips measure 266 / measure 11]
    %! baca.SegmentMaker._make_global_skips(3)
    %! PHANTOM
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    %! baca.SegmentMaker._style_phantom_measures(1)
    \time 1/4
    %! baca.SegmentMaker._style_phantom_measures(2)
    %! PHANTOM
    \baca-time-signature-transparent
    %! baca.SegmentMaker._make_global_skips(3)
    %! PHANTOM
    s1 * 1/4
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %! baca.SegmentMaker._style_phantom_measures(1)
    %! PHANTOM
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %! baca.SegmentMaker._style_phantom_measures(1)
    %! PHANTOM
    %@% \bacaStopTextSpanMN
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    %! baca.SegmentMaker._style_phantom_measures(1)
    %! PHANTOM
    \bacaStopTextSpanSNM
    %! EOS_STOP_MM_SPANNER
    %! baca.SegmentMaker._attach_metronome_marks(4)
    %! baca.SegmentMaker._style_phantom_measures(1)
    %! PHANTOM
    \bacaStopTextSpanMM
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %! baca.SegmentMaker._style_phantom_measures(1)
    %! PHANTOM
    %@% \bacaStopTextSpanCT
    %! baca.SegmentMaker._style_phantom_measures(3)
    %! PHANTOM
    \once \override Score.BarLine.transparent = ##t
    %! baca.SegmentMaker._style_phantom_measures(3)
    %! PHANTOM
    \once \override Score.SpanBar.transparent = ##t

%! abjad.ScoreTemplate._make_global_context()
%! ide.Path.extern()
}


%! ide.Path.extern()
ab_Global_Rests = {

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Rests measure 256 / measure 1]
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 1/2

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Rests measure 257 / measure 2]
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 1/2

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Rests measure 258 / measure 3]
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 1/2

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Rests measure 259 / measure 4]
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 1/2

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Rests measure 260 / measure 5]
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 3/2

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Rests measure 261 / measure 6]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    %! baca.global_fermata()
    %! baca.GlobalFermataCommand._call(2)
    \baca-fermata-measure
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 1/4
    %! baca.global_fermata()
    %! baca.GlobalFermataCommand._call(1)
    ^ \baca-fermata-markup

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Rests measure 262 / measure 7]
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 7/4

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Rests measure 263 / measure 8]
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 7/4

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Rests measure 264 / measure 9]
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 7/4

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Rests measure 265 / measure 10]
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 7/4

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Global_Rests measure 266 / measure 11]
    %! baca.SegmentMaker._make_global_rests(2)
    %! PHANTOM
    R1 * 1/4

%! abjad.ScoreTemplate._make_global_context()
%! ide.Path.extern()
}


%! ide.Path.extern()
ab_Bass_Flute_Music_Voice = {

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        \context Voice = "Bass_Flute_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Bass_Flute_Music_Voice measure 256 / measure 1]
            %! -PARTS
            %! baca.SegmentMaker._reapply_persistent_indicators(3)
            %! baca.SegmentMaker._set_status_tag()
            %! REAPPLIED_MARGIN_MARKUP
            \set Staff.shortInstrumentName = \harmony-bfl-markup
            %! baca.SegmentMaker._reapply_persistent_indicators(3)
            %! baca.SegmentMaker._set_status_tag()
            %! REAPPLIED_BAR_EXTENT
            %! EXPLICIT_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            %! baca.SegmentMaker._reapply_persistent_indicators(3)
            %! baca.SegmentMaker._set_status_tag()
            %! REAPPLIED_STAFF_LINES
            \stopStaff
            %! baca.SegmentMaker._reapply_persistent_indicators(3)
            %! baca.SegmentMaker._set_status_tag()
            %! REAPPLIED_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 5
            %! baca.SegmentMaker._reapply_persistent_indicators(3)
            %! baca.SegmentMaker._set_status_tag()
            %! REAPPLIED_STAFF_LINES
            \startStaff
            %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \set Staff.instrumentName = \harmony-bfl-markup
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca.dls_staff_padding()
            %! baca.OverrideCommand._call(1)
            \override DynamicLineSpanner.staff-padding = 4
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._reapply_persistent_indicators(3)
            %! baca.SegmentMaker._set_status_tag()
            %! REAPPLIED_CLEF
            \clef "treble"
            %! baca.SegmentMaker._attach_color_literal(2)
            %! REAPPLIED_MARGIN_MARKUP_COLOR
            %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
            %! baca.SegmentMaker._attach_color_literal(2)
            %! REAPPLIED_CLEF_COLOR
            \once \override Staff.Clef.color = #(x11-color 'green4)
            %! baca.SegmentMaker._attach_color_literal(1)
            %! REAPPLIED_CLEF_COLOR_CANCELLATION
            %@% \override Staff.Clef.color = ##f
            %! baca.SegmentMaker._reapply_persistent_indicators(3)
            %! baca.SegmentMaker._treat_persistent_wrapper(2)
            %! baca.SegmentMaker._set_status_tag()
            %! REAPPLIED_CLEF
            \set Staff.forceClef = ##t
            %! baca.SegmentMaker._attach_color_literal(2)
            %! REAPPLIED_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            b'1 * 1/2
            %! REAPPLIED_DYNAMIC_COLOR
            %! _treat_persistent_wrapper(1)
            %! baca.SegmentMaker._reapply_persistent_indicators(3)
            %! baca.SegmentMaker._set_status_tag()
            %! REAPPLIED_DYNAMIC
            - \tweak color #(x11-color 'green4)
            %! baca.SegmentMaker._reapply_persistent_indicators(3)
            %! baca.SegmentMaker._set_status_tag()
            %! REAPPLIED_DYNAMIC
            \ff
            %! REAPPLIED_MARGIN_MARKUP_ALERT
            %! baca.SegmentMaker._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "[“Bfl.”]"
            %! REAPPLIED_INSTRUMENT_ALERT
            %! baca.SegmentMaker._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "(“BassFlute”)"
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
            %! baca.SegmentMaker._attach_color_literal(2)
            %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
            %! -PARTS
            %! baca.SegmentMaker._reapply_persistent_indicators(3)
            %! baca.SegmentMaker._treat_persistent_wrapper(3)
            %! baca.SegmentMaker._set_status_tag()
            %! REDRAWN_REAPPLIED_MARGIN_MARKUP
            \set Staff.shortInstrumentName = \harmony-bfl-markup
            %! baca.SegmentMaker._attach_color_literal(2)
            %! REAPPLIED_CLEF_REDRAW_COLOR
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        \context Voice = "Bass_Flute_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Bass_Flute_Rest_Voice measure 256 / measure 1]
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/2
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    >>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Bass_Flute_Music_Voice measure 257 / measure 2]
    %! baca.SegmentMaker._make_measure_silences()
    R1 * 1/2
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Bass_Flute_Music_Voice measure 258 / measure 3]
    %! baca.SegmentMaker._make_measure_silences()
    R1 * 1/2
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Bass_Flute_Music_Voice measure 259 / measure 4]
    %! baca.SegmentMaker._make_measure_silences()
    R1 * 1/2
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    %! harmony.warble()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.warble()
    \times 12/14
    %! harmony.warble()
    {

        %! baca.SegmentMaker._comment_measure_numbers()
        % [28 Bass_Flute_Music_Voice measure 260 / measure 5]
        %! harmony.warble()
        r32
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %@% - \abjad-dashed-line-with-hook
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %@% - \baca-text-spanner-left-text "warble(sixteenths=[12, 12, 1, 11, 12], extra_counts=[4, 0, 0, 2, 0], rest_tuplets_cyclic=([1, 2, 4], 5))"
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
        %@% - \tweak color #darkyellow
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %@% - \tweak staff-padding 8
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %@% \bacaStartTextSpanRhythmAnnotation

        %! baca.note_head_font_size()
        %! baca.OverrideCommand._call(1)
        \override NoteHead.font-size = -3
        %! baca.accidental_font_size()
        %! baca.OverrideCommand._call(1)
        \override Accidental.font-size = -3
        %! baca.accidental_x_offset()
        %! baca.OverrideCommand._call(1)
        \override Accidental.X-offset = 0
        %! baca.accidental_y_offset()
        %! baca.OverrideCommand._call(1)
        \override Accidental.Y-offset = -2
        %! harmony.warble()
        af'!32
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak circled-tip ##t
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \<
        %! harmony.warble()
        [
        %! baca.trill_spanner()
        %! baca.SpannerIndicatorCommand._call(2)
        %! SPANNER_START
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        %! baca.trill_spanner()
        %! baca.SpannerIndicatorCommand._call(2)
        %! SPANNER_START
        \startTrillSpan

        %! harmony.warble()
        g'32

        %! harmony.warble()
        gs'!32

        %! harmony.warble()
        a'32

        %! harmony.warble()
        as'!32

        %! harmony.warble()
        b'32

        %! harmony.warble()
        c''32

        %! harmony.warble()
        cs''!32

        %! harmony.warble()
        c''32

        %! harmony.warble()
        b'32

        %! harmony.warble()
        bf'!32

        %! harmony.warble()
        a'32

        %! harmony.warble()
        af'!32
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \mp
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak to-barline ##t
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak circled-tip ##t
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \>

        %! harmony.warble()
        g'32

        %! harmony.warble()
        gs'!32

        %! harmony.warble()
        a'32

        %! harmony.warble()
        as'!32

        %! harmony.warble()
        b'32

        %! harmony.warble()
        c''32

        %! harmony.warble()
        cs''!32

        %! harmony.warble()
        c''32

        %! harmony.warble()
        b'32

        %! harmony.warble()
        bf'!32

        %! harmony.warble()
        a'32

        %! harmony.warble()
        af'!32

        %! harmony.warble()
        g'32

        %! harmony.warble()
        gs'!32
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \!
        %! harmony.warble()
        ]
        %! baca.note_head_font_size()
        %! baca.OverrideCommand._call(2)
        \revert NoteHead.font-size
        %! baca.accidental_font_size()
        %! baca.OverrideCommand._call(2)
        \revert Accidental.font-size
        %! baca.accidental_x_offset()
        %! baca.OverrideCommand._call(2)
        \revert Accidental.X-offset
        %! baca.accidental_y_offset()
        %! baca.OverrideCommand._call(2)
        \revert Accidental.Y-offset

    %! harmony.warble()
    }

    %! harmony.warble()
    r2.
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(4)
    %! SPANNER_STOP
    \stopTrillSpan
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        \context Voice = "Bass_Flute_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Bass_Flute_Music_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._style_fermata_measures(1)
            \stopStaff
            %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.SegmentMaker._style_fermata_measures(2)
            %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(0 . 0)

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        \context Voice = "Bass_Flute_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Bass_Flute_Rest_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    >>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Bass_Flute_Music_Voice measure 262 / measure 7]
    %! baca.SegmentMaker._style_fermata_measures(3)
    \stopStaff
    %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff
    %! baca.SegmentMaker._style_fermata_measures(4)
    %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! FERMATA_MEASURE
    %! MEASURE_261
    %! baca.SegmentMaker._style_fermata_measures(7)
    \once \override Score.BarLine.transparent = ##t
    %! FERMATA_MEASURE
    %! MEASURE_261
    %! baca.SegmentMaker._style_fermata_measures(7)
    \once \override Score.SpanBar.transparent = ##t
    %! harmony.sixteenths()
    a''1.. * 1/7
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"7"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([4], written_double_dotted_wholes=([0], 7), invisible=([1, 2, 3, 4, 5, 6], 7), talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 3
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    \startTrillSpan

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
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
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Bass_Flute_Music_Voice measure 263 / measure 8]
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''1.. * 1/7
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"7"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Bass_Flute_Music_Voice measure 264 / measure 9]
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''1.. * 1/7
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"7"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Bass_Flute_Music_Voice measure 265 / measure 10]
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
    %! harmony.sixteenths()
    a''1.. * 1/7
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"7"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Bass_Flute_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Bass_Flute_Music_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! _treat_persistent_wrapper(1)
            %! baca.dynamic()
            %! baca.IndicatorCommand._call()
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            - \tweak color #(x11-color 'blue)
            %! baca.dynamic()
            %! baca.IndicatorCommand._call()
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \p
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.trill_spanner()
            %! baca.SpannerIndicatorCommand._call(4)
            %! SPANNER_STOP
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \stopTrillSpan

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Bass_Flute_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Bass_Flute_Rest_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
}


%! ide.Path.extern()
ab_Bass_Flute_Music_Staff = <<

    %! abjad.ScoreTemplate._make_global_context()
    \context GlobalRests = "Global_Rests"
    %! abjad.ScoreTemplate._make_global_context()
    %! ide.Path.extern()
    \ab_Global_Rests

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Bass_Flute_Music_Voice"
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \ab_Bass_Flute_Music_Voice

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>>


%! ide.Path.extern()
ab_Percussion_I_Music_Voice = {

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_I_Music_Voice measure 256 / measure 1]
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_BAR_EXTENT
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \stopStaff
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \startStaff
    %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-perc-i-markup
    %! baca.stem_up()
    %! baca.OverrideCommand._call(1)
    \override Stem.direction = #up
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_CLEF
    \clef "percussion"
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(1)
    %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! harmony.sixteenths()
    d'2 * 1/2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Perc. I”]"
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-triangle-markup
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([4, 4, 8, 4, 4, 7, -1], fuse=True, do_not_rewrite_meter=True, written_halves=[0], talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

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
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_I_Music_Voice measure 257 / measure 2]
    %! harmony.sixteenths()
    d'2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_I_Music_Voice measure 258 / measure 3]
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_I_Music_Voice measure 259 / measure 4]
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
    %! harmony.sixteenths()
    d'4..
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.stem_up()
    %! baca.OverrideCommand._call(2)
    \revert Stem.direction

    %! harmony.sixteenths()
    r16
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_I_Music_Voice measure 260 / measure 5]
    %! baca.stem_up()
    %! baca.OverrideCommand._call(1)
    \once \override Stem.direction = #up
    %! harmony.sixteenths()
    c'16
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-f-sempre
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-brake-drum-markup
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([1, -23, -1, 1, -22], talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation

    %! harmony.sixteenths()
    r8.

    %! harmony.sixteenths()
    r1

    %! harmony.sixteenths()
    r4
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_I_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Percussion_I_Music_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._style_fermata_measures(1)
            \stopStaff
            %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            c'1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.SegmentMaker._style_fermata_measures(2)
            %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_I_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Percussion_I_Rest_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    >>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_I_Music_Voice measure 262 / measure 7]
    %! baca.SegmentMaker._style_fermata_measures(3)
    \stopStaff
    %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 1
    %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff
    %! baca.SegmentMaker._style_fermata_measures(4)
    %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    %! baca.stem_up()
    %! baca.OverrideCommand._call(1)
    \override Stem.direction = #up
    %! harmony.sixteenths()
    d'1.. * 1/7
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-triangle-markup
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"7"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([4], written_double_dotted_wholes=([0], 7), invisible=([1, 2, 3, 4, 5, 6], 7), talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
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
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_I_Music_Voice measure 263 / measure 8]
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'1.. * 1/7
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"7"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_I_Music_Voice measure 264 / measure 9]
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'1.. * 1/7
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"7"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_I_Music_Voice measure 265 / measure 10]
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
    %! harmony.sixteenths()
    d'1.. * 1/7
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"7"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    d'4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.stem_up()
    %! baca.OverrideCommand._call(2)
    \revert Stem.direction
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Percussion_I_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Percussion_I_Music_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            c'1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! _treat_persistent_wrapper(1)
            %! baca.dynamic()
            %! baca.IndicatorCommand._call()
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            - \tweak color #(x11-color 'blue)
            %! baca.dynamic()
            %! baca.IndicatorCommand._call()
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \p
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Percussion_I_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Percussion_I_Rest_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
}


%! ide.Path.extern()
ab_Percussion_I_Music_Staff = <<

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \ab_Global_Rests

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Percussion_I_Music_Voice"
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \ab_Percussion_I_Music_Voice

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>>


%! ide.Path.extern()
ab_Percussion_II_Music_Voice = {

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_II_Music_Voice measure 256 / measure 1]
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-perc-ii-markup
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_256
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_256
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "treble"
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.sixteenths()
    cs''!8
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.laissez_vibrer()
    %! baca.IndicatorCommand._call()
    \laissezVibrer
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Perc. II”]"
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 4
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-glockenspiel-markup
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([2, '-'], talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    r8

    %! harmony.sixteenths()
    r4

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_II_Music_Voice measure 257 / measure 2]
    %! harmony.sixteenths()
    r2

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_II_Music_Voice measure 258 / measure 3]
    %! harmony.sixteenths()
    r2

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_II_Music_Voice measure 259 / measure 4]
    %! harmony.sixteenths()
    r2
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_II_Music_Voice measure 260 / measure 5]
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca.stem_down()
    %! baca.OverrideCommand._call(1)
    \once \override Stem.direction = #down
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 5
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_260
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_260
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "percussion"
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.sixteenths()
    d'8
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-slate-brush-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([2, -22, -1, 2, -21], talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    r8
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \!

    %! harmony.sixteenths()
    r1

    %! harmony.sixteenths()
    r4
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(2)
    \revert TupletBracket.direction
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_II_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Percussion_II_Music_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._style_fermata_measures(1)
            \stopStaff
            %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            c'1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_II_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Percussion_II_Rest_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    >>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_II_Music_Voice measure 262 / measure 7]
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_262
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_262
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "treble"
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.sixteenths()
    r2.
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([-26, 2], talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    r2

    %! harmony.sixteenths()
    r4.

    %! harmony.sixteenths()
    a'8
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X 0.25
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-mp-sempre
    %! baca.laissez_vibrer()
    %! baca.IndicatorCommand._call()
    \laissezVibrer
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak self-alignment-X 0.25
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 4
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-glockenspiel-markup

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_II_Music_Voice measure 263 / measure 8]
    %! harmony.sixteenths()
    r2.

    %! harmony.sixteenths()
    r2

    %! harmony.sixteenths()
    r4.

    %! harmony.sixteenths()
    a'8
    %! baca.laissez_vibrer()
    %! baca.IndicatorCommand._call()
    \laissezVibrer

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_II_Music_Voice measure 264 / measure 9]
    %! harmony.sixteenths()
    r2.

    %! harmony.sixteenths()
    r2

    %! harmony.sixteenths()
    r4.

    %! harmony.sixteenths()
    a'8
    %! baca.laissez_vibrer()
    %! baca.IndicatorCommand._call()
    \laissezVibrer

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Percussion_II_Music_Voice measure 265 / measure 10]
    %! harmony.sixteenths()
    r2.

    %! harmony.sixteenths()
    r2

    %! harmony.sixteenths()
    r4.

    %! harmony.sixteenths()
    a'8
    %! baca.laissez_vibrer()
    %! baca.IndicatorCommand._call()
    \laissezVibrer
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Percussion_II_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Percussion_II_Music_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Percussion_II_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Percussion_II_Rest_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
}


%! ide.Path.extern()
ab_Percussion_II_Music_Staff = <<

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \ab_Global_Rests

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Percussion_II_Music_Voice"
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \ab_Percussion_II_Music_Voice

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>>


%! ide.Path.extern()
ab_Harp_Music_Voice = {

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Harp_Music_Voice measure 256 / measure 1]
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-hp-markup
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_BAR_EXTENT
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \stopStaff
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \startStaff
    %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-hp-markup
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_256
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_256
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "bass"
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! harmony.sixteenths()
    a,,4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.laissez_vibrer()
    %! baca.IndicatorCommand._call()
    \laissezVibrer
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Harp”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Hp.”]"
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([4, '-'], talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-hp-markup
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    r4

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Harp_Music_Voice measure 257 / measure 2]
    %! harmony.sixteenths()
    r2

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Harp_Music_Voice measure 258 / measure 3]
    %! harmony.sixteenths()
    r2

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Harp_Music_Voice measure 259 / measure 4]
    %! harmony.sixteenths()
    r2
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        \context Voice = "Harp_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Harp_Music_Voice measure 260 / measure 5]
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            d1 * 3/2
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"3" #"2"

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        \context Voice = "Harp_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Harp_Rest_Voice measure 260 / measure 5]
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 3/2
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"3" #"2"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    >>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Harp_Music_Voice measure 261 / measure 6]
    %! baca.SegmentMaker._style_fermata_measures(1)
    \stopStaff
    %! baca.SegmentMaker._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
    %! baca.SegmentMaker._style_fermata_measures(1)
    \startStaff
    %! baca.SegmentMaker._make_measure_silences()
    R1 * 1/4
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    %! baca.SegmentMaker._style_fermata_measures(2)
    %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 2)

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Harp_Music_Voice measure 262 / measure 7]
    %! baca.SegmentMaker._style_fermata_measures(3)
    \stopStaff
    %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff
    %! baca.SegmentMaker._style_fermata_measures(4)
    %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    <e ff!>1..
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-mp-sempre
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 5.5
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \harmony-rh-bow-plus-lh-bow-markup
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths(['+'], talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "0 pul. / beat"
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Harp_Music_Voice measure 263 / measure 8]
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
    <e ff!>1..
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \stopTextSpan
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "6 pul. / beat"
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Harp_Music_Voice measure 264 / measure 9]
    <e ff!>1..
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \stopTextSpan
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "0 pul. / beat"
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Harp_Music_Voice measure 265 / measure 10]
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
    <e ff!>1..
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \stopTextSpan
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "8 pul. / beat"
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-right-text "0 pul. / beat"
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Harp_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Harp_Music_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            d1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.text_spanner()
            %! baca.PiecewiseCommand._call(3)
            %! SPANNER_STOP
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \stopTextSpan

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Harp_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Harp_Rest_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
}


%! ide.Path.extern()
ab_Harp_Music_Staff = <<

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \ab_Global_Rests

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Harp_Music_Voice"
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \ab_Harp_Music_Voice

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>>


%! ide.Path.extern()
ab_Viola_Music_Voice = {

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Viola_Music_Voice measure 256 / measure 1]
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-va-markup
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_BAR_EXTENT
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \stopStaff
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \startStaff
    %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-va-markup
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_CLEF
    \clef "alto"
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(1)
    %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! baca.glissando()
    %! abjad.glissando(2)
    %! HIDE_TO_JOIN_BROKEN_SPANNERS
    %! LEFT_BROKEN
    \hide NoteHead
    %! baca.glissando()
    %! abjad.glissando(2)
    %! HIDE_TO_JOIN_BROKEN_SPANNERS
    %! LEFT_BROKEN
    \override Accidental.stencil = ##f
    %! baca.glissando()
    %! abjad.glissando(2)
    %! HIDE_TO_JOIN_BROKEN_SPANNERS
    %! LEFT_BROKEN
    \override NoteHead.no-ledgers = ##t
    %! baca.glissando()
    %! abjad.glissando(2)
    %! HIDE_TO_JOIN_BROKEN_SPANNERS
    %! LEFT_BROKEN
    \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(2)
    %! HIDE_TO_JOIN_BROKEN_SPANNERS
    %! LEFT_BROKEN
    \override Stem.transparent = ##t
    %! baca.make_notes()
    gqf!2
    %! REAPPLIED_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_DYNAMIC
    \p
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Va.”]"
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Viola”)"
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "make_notes()"
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
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando
    %! baca.bow_speed_spanner()
    %! BOW_SPEED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! LEFT_BROKEN
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.bow_speed_spanner()
    %! BOW_SPEED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! LEFT_BROKEN
    %! SPANNER_START
    - \baca-text-spanner-left-text "poc. scr."
    %! baca.bow_speed_spanner()
    %! BOW_SPEED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! LEFT_BROKEN
    %! SPANNER_START
    - \tweak bound-details.right.padding 6
    %! baca.bow_speed_spanner()
    %! BOW_SPEED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! LEFT_BROKEN
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.bow_speed_spanner()
    %! BOW_SPEED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! LEFT_BROKEN
    %! SPANNER_START
    \bacaStartTextSpanBowSpeed
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-va-markup
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Viola_Music_Voice measure 257 / measure 2]
    %! baca.glissando()
    %! abjad.glissando(3)
    %! HIDE_TO_JOIN_BROKEN_SPANNERS
    %! LEFT_BROKEN
    \override NoteColumn.glissando-skip = ##t
    %! baca.make_notes()
    gqf!2

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Viola_Music_Voice measure 258 / measure 3]
    %! baca.make_notes()
    gqf!2

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Viola_Music_Voice measure 259 / measure 4]
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
    %! baca.make_notes()
    gqf!2
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Viola_Music_Voice measure 260 / measure 5]
    %! baca.note_head_style_harmonic_black()
    %! baca.OverrideCommand._call(1)
    \once \override NoteHead.style = #'harmonic-black
    <g' af'! bf'!>1.
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-quasi-bisb-markup
    %! baca.bow_speed_spanner()
    %! BOW_SPEED_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanBowSpeed
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "tessera_4(4)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        \context Voice = "Viola_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Viola_Music_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._style_fermata_measures(1)
            \stopStaff
            %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            c'1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.SegmentMaker._style_fermata_measures(2)
            %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        \context Voice = "Viola_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Viola_Rest_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    >>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Viola_Music_Voice measure 262 / measure 7]
    %! baca.SegmentMaker._style_fermata_measures(3)
    \stopStaff
    %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff
    %! baca.SegmentMaker._style_fermata_measures(4)
    %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! baca.make_notes()
    e1..
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-p-sempre
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "make_notes()"
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
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando
    %! baca.bow_speed_spanner()
    %! BOW_SPEED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook
    %! baca.bow_speed_spanner()
    %! BOW_SPEED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "poco scr."
    %! baca.bow_speed_spanner()
    %! BOW_SPEED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.bow_speed_spanner()
    %! BOW_SPEED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 3.25
    %! baca.bow_speed_spanner()
    %! BOW_SPEED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.bow_speed_spanner()
    %! BOW_SPEED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanBowSpeed

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Viola_Music_Voice measure 263 / measure 8]
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
    %! baca.make_notes()
    e1..

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Viola_Music_Voice measure 264 / measure 9]
    %! baca.make_notes()
    e1..

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Viola_Music_Voice measure 265 / measure 10]
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
    %! baca.make_notes()
    e1..
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Viola_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Viola_Music_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            c'1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.bow_speed_spanner()
            %! BOW_SPEED_SPANNER
            %! baca.PiecewiseCommand._call(4)
            %! SPANNER_STOP
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \bacaStopTextSpanBowSpeed

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Viola_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Viola_Rest_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
}


%! ide.Path.extern()
ab_Viola_Music_Staff = <<

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \ab_Global_Rests

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Viola_Music_Voice"
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \ab_Viola_Music_Voice

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>>


%! ide.Path.extern()
ab_Cello_I_Music_Voice = {

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_I_Music_Voice measure 256 / measure 1]
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \stopStaff
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \startStaff
    %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-vc-i-markup
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.style = #'harmonic
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_CLEF
    \clef "treble"
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(1)
    %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! harmony.sixteenths()
    e'''2
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Vc. I”]"
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Cello”)"
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak padding 1
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    _ \baca-string-i-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([10, 6], talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_I_Music_Voice measure 257 / measure 2]
    %! harmony.sixteenths()
    e'''8
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando

    %! harmony.sixteenths()
    cs'''!8
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    cs'''4
    \repeatTie
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_I_Music_Voice measure 258 / measure 3]
    %! harmony.sixteenths()
    e'''2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_I_Music_Voice measure 259 / measure 4]
    %! harmony.sixteenths()
    e'''8
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando

    %! harmony.sixteenths()
    cs'''!8
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    cs'''4
    \repeatTie
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.style
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_I_Music_Voice measure 260 / measure 5]
    %! baca.note_head_style_harmonic_black()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.style = #'harmonic-black
    <a' b' c''>4
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-quasi-bisb-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #constante-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "tessera_4(3)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation

    %! baca.note_head_transparent()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.transparent = ##t
    %! baca.SegmentMaker._color_not_yet_pitched()
    %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
    b'8
    %! rmakers.RewriteMeterCommand.__call__
    [

    %! baca.SegmentMaker._color_not_yet_pitched()
    %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
    b'8
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! rmakers.RewriteMeterCommand.__call__
    ]

    %! baca.SegmentMaker._color_not_yet_pitched()
    %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
    b'2.

    %! baca.SegmentMaker._color_not_yet_pitched()
    %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
    b'8
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! baca.note_head_transparent()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.transparent

    <a' b' c''>8
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca.note_head_style_harmonic_black()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.style
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        \context Voice = "Cello_I_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Cello_I_Music_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._style_fermata_measures(1)
            \stopStaff
            %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! _treat_persistent_wrapper(1)
            %! baca.hairpin()
            %! baca.PiecewiseCommand._call(3)
            %! SPANNER_STOP
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            - \tweak color #(x11-color 'blue)
            %! baca.hairpin()
            %! baca.PiecewiseCommand._call(3)
            %! SPANNER_STOP
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            \!
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        \context Voice = "Cello_I_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Cello_I_Rest_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    >>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_I_Music_Voice measure 262 / measure 7]
    %! baca.SegmentMaker._style_fermata_measures(3)
    \stopStaff
    %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.style = #'harmonic
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    \pitchedTrill
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak padding 1
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    _ \baca-string-i-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([2], written_quarters=True, invisible_pairs=True, talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 3
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    \startTrillSpan e'''

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_I_Music_Voice measure 263 / measure 8]
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_I_Music_Voice measure 264 / measure 9]
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_I_Music_Voice measure 265 / measure 10]
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'''!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.style
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Cello_I_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Cello_I_Music_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! _treat_persistent_wrapper(1)
            %! baca.dynamic()
            %! baca.IndicatorCommand._call()
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            - \tweak color #(x11-color 'blue)
            %! baca.dynamic()
            %! baca.IndicatorCommand._call()
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \!
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.trill_spanner()
            %! baca.SpannerIndicatorCommand._call(4)
            %! SPANNER_STOP
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \stopTrillSpan

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Cello_I_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Cello_I_Rest_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
}


%! ide.Path.extern()
ab_Cello_I_Music_Staff = <<

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \ab_Global_Rests

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Cello_I_Music_Voice"
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \ab_Cello_I_Music_Voice

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>>


%! ide.Path.extern()
ab_Cello_II_Music_Voice = {

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_II_Music_Voice measure 256 / measure 1]
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \stopStaff
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \startStaff
    %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-vc-ii-markup
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.style = #'harmonic
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_CLEF
    \clef "treble"
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(1)
    %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! harmony.sixteenths()
    a''2
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Vc. II”]"
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Cello”)"
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak padding 1
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    _ \baca-string-i-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([10, 6], talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_II_Music_Voice measure 257 / measure 2]
    %! harmony.sixteenths()
    a''8
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando

    %! harmony.sixteenths()
    cs'''!8
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    cs'''4
    \repeatTie
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_II_Music_Voice measure 258 / measure 3]
    %! harmony.sixteenths()
    a''2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_II_Music_Voice measure 259 / measure 4]
    %! harmony.sixteenths()
    a''8
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando

    %! harmony.sixteenths()
    cs'''!8
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    cs'''4
    \repeatTie
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.style
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_II_Music_Voice measure 260 / measure 5]
    %! baca.note_head_style_harmonic_black()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.style = #'harmonic-black
    <g' af'! bf'!>8
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-quasi-bisb-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #constante-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "tessera_4(2)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation

    %! baca.note_head_transparent()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.transparent = ##t
    c''8
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! rmakers.RewriteMeterCommand.__call__
    ]

    c''8.
    %! rmakers.RewriteMeterCommand.__call__
    [

    c''16
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #constante-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! rmakers.RewriteMeterCommand.__call__
    ]

    c''4

    c''8
    %! rmakers.RewriteMeterCommand.__call__
    [

    c''8
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca.note_head_transparent()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.transparent

    <g' af'! bf'!>2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! baca.note_head_style_harmonic_black()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.style
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        \context Voice = "Cello_II_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Cello_II_Music_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._style_fermata_measures(1)
            \stopStaff
            %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! _treat_persistent_wrapper(1)
            %! baca.hairpin()
            %! baca.PiecewiseCommand._call(3)
            %! SPANNER_STOP
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            - \tweak color #(x11-color 'blue)
            %! baca.hairpin()
            %! baca.PiecewiseCommand._call(3)
            %! SPANNER_STOP
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            \!
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        \context Voice = "Cello_II_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Cello_II_Rest_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    >>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_II_Music_Voice measure 262 / measure 7]
    %! baca.SegmentMaker._style_fermata_measures(3)
    \stopStaff
    %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.style = #'harmonic
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.style = #'harmonic
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    \pitchedTrill
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak padding 1
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    _ \baca-string-i-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([2], written_quarters=True, invisible_pairs=True, talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 3
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    \startTrillSpan cs'''

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_II_Music_Voice measure 263 / measure 8]
    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_II_Music_Voice measure 264 / measure 9]
    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Cello_II_Music_Voice measure 265 / measure 10]
    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    a''4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a''4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.style
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.style
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Cello_II_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Cello_II_Music_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! _treat_persistent_wrapper(1)
            %! baca.dynamic()
            %! baca.IndicatorCommand._call()
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            - \tweak color #(x11-color 'blue)
            %! baca.dynamic()
            %! baca.IndicatorCommand._call()
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \!
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.trill_spanner()
            %! baca.SpannerIndicatorCommand._call(4)
            %! SPANNER_STOP
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \stopTrillSpan

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Cello_II_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Cello_II_Rest_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
}


%! ide.Path.extern()
ab_Cello_II_Music_Staff = <<

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \ab_Global_Rests

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Cello_II_Music_Voice"
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \ab_Cello_II_Music_Voice

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>>


%! ide.Path.extern()
ab_Contrabass_I_Music_Voice = {

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_I_Music_Voice measure 256 / measure 1]
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \stopStaff
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \startStaff
    %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-cb-i-markup
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.style = #'harmonic
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_256
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_256
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "treble"
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! harmony.sixteenths()
    cs'!4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \!
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Cb. I”]"
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak padding 1
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    _ \baca-string-iii-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([4, 4, -8], talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    \startTrillSpan
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    cs'!4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_I_Music_Voice measure 257 / measure 2]
    %! harmony.sixteenths()
    r2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \!
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(4)
    %! SPANNER_STOP
    \stopTrillSpan

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_I_Music_Voice measure 258 / measure 3]
    %! harmony.sixteenths()
    cs'!4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \!
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    \startTrillSpan

    %! harmony.sixteenths()
    cs'!4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.style

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_I_Music_Voice measure 259 / measure 4]
    %! harmony.sixteenths()
    r2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \!
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(4)
    %! SPANNER_STOP
    \stopTrillSpan
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_I_Music_Voice measure 260 / measure 5]
    %! baca.note_head_style_harmonic_black()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.style = #'harmonic-black
    <a' b' c''>4
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-quasi-bisb-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #constante-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "tessera_4(1)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation

    %! baca.note_head_transparent()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.transparent = ##t
    %! baca.SegmentMaker._color_not_yet_pitched()
    %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
    b'8.
    %! rmakers.RewriteMeterCommand.__call__
    [

    %! baca.SegmentMaker._color_not_yet_pitched()
    %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
    b'16
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! rmakers.RewriteMeterCommand.__call__
    ]

    %! baca.SegmentMaker._color_not_yet_pitched()
    %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
    b'4

    %! baca.SegmentMaker._color_not_yet_pitched()
    %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
    b'8.
    %! rmakers.RewriteMeterCommand.__call__
    [

    %! baca.SegmentMaker._color_not_yet_pitched()
    %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
    b'16
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca.note_head_transparent()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.transparent

    <a' b' c''>2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! baca.note_head_style_harmonic_black()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.style
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        \context Voice = "Contrabass_I_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Contrabass_I_Music_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._style_fermata_measures(1)
            \stopStaff
            %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! _treat_persistent_wrapper(1)
            %! baca.hairpin()
            %! baca.PiecewiseCommand._call(3)
            %! SPANNER_STOP
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            - \tweak color #(x11-color 'blue)
            %! baca.hairpin()
            %! baca.PiecewiseCommand._call(3)
            %! SPANNER_STOP
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            \!
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        \context Voice = "Contrabass_I_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Contrabass_I_Rest_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    >>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_I_Music_Voice measure 262 / measure 7]
    %! baca.SegmentMaker._style_fermata_measures(3)
    \stopStaff
    %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.style = #'harmonic
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak padding 1
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    _ \baca-string-iii-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([2], written_quarters=True, invisible_pairs=True, talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 3
    %! baca.trill_spanner()
    %! baca.SpannerIndicatorCommand._call(2)
    %! SPANNER_START
    \startTrillSpan

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_I_Music_Voice measure 263 / measure 8]
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_I_Music_Voice measure 264 / measure 9]
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_I_Music_Voice measure 265 / measure 10]
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \p
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    cs'!4 * 1/2
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.note_head_style_harmonic()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.style
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Contrabass_I_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Contrabass_I_Music_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! _treat_persistent_wrapper(1)
            %! baca.dynamic()
            %! baca.IndicatorCommand._call()
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            - \tweak color #(x11-color 'blue)
            %! baca.dynamic()
            %! baca.IndicatorCommand._call()
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \!
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.trill_spanner()
            %! baca.SpannerIndicatorCommand._call(4)
            %! SPANNER_STOP
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \stopTrillSpan

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Contrabass_I_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Contrabass_I_Rest_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
}


%! ide.Path.extern()
ab_Contrabass_I_Music_Staff = <<

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \ab_Global_Rests

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Contrabass_I_Music_Voice"
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \ab_Contrabass_I_Music_Voice

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>>


%! ide.Path.extern()
ab_Contrabass_II_Music_Voice = {

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_II_Music_Voice measure 256 / measure 1]
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_BAR_EXTENT
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \stopStaff
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_STAFF_LINES
    \startStaff
    %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-cb-ii-markup
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_CLEF
    \clef "bass"
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! baca.SegmentMaker._attach_color_literal(1)
    %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! harmony.sixteenths()
    a,2
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Cb. II”]"
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak padding 1
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    _ \baca-string-iii-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([8, 8, 8, 6, 2], fuse=True, do_not_rewrite_meter=True, written_halves=[-2], invisible=[-1], talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! baca.SegmentMaker._reapply_persistent_indicators(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_II_Music_Voice measure 257 / measure 2]
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Dots.transparent = ##t
    %! baca.glissando()
    %! abjad.glissando(-1)
    \once \override Stem.transparent = ##t
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
    %! harmony.sixteenths()
    a,2

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_II_Music_Voice measure 258 / measure 3]
    %! harmony.sixteenths()
    a,2
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
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
    - \baca-text-spanner-right-text "T4"
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
    \bacaStartTextSpanSCP

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_II_Music_Voice measure 259 / measure 4]
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
    %! harmony.sixteenths()
    a,2 * 3/4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \ff
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    a,8
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_II_Music_Voice measure 260 / measure 5]
    %! baca.note_head_style_harmonic_black()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.style = #'harmonic-black
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_260
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_260
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "treble"
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    <g' af'! bf'!>2.
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \pp
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-quasi-bisb-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #constante-hairpin
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "tessera_4(0)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! baca.note_head_transparent()
    %! baca.OverrideCommand._call(1)
    \override NoteHead.transparent = ##t
    c''8
    %! rmakers.RewriteMeterCommand.__call__
    [

    c''8
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \!
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca.note_head_transparent()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.transparent

    <g' af'! bf'!>2
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.note_head_style_harmonic_black()
    %! baca.OverrideCommand._call(2)
    \revert NoteHead.style
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        \context Voice = "Contrabass_II_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Contrabass_II_Music_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._style_fermata_measures(1)
            \stopStaff
            %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
            %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %@% \abjad-invisible-music
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            \baca-not-yet-pitched-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! HIDDEN
            %! NOTE
            b'1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! _treat_persistent_wrapper(1)
            %! baca.hairpin()
            %! baca.PiecewiseCommand._call(3)
            %! SPANNER_STOP
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            - \tweak color #(x11-color 'blue)
            %! baca.hairpin()
            %! baca.PiecewiseCommand._call(3)
            %! SPANNER_STOP
            %! baca.SegmentMaker._set_status_tag()
            %! EXPLICIT_DYNAMIC
            \!
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.SegmentMaker._style_fermata_measures(2)
            %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        \context Voice = "Contrabass_II_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            % [28 Contrabass_II_Rest_Voice measure 261 / measure 6]
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    >>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_II_Music_Voice measure 262 / measure 7]
    %! baca.SegmentMaker._style_fermata_measures(3)
    \stopStaff
    %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
    %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff
    %! baca.SegmentMaker._style_fermata_measures(4)
    %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_262
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_262
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "bass"
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    %! harmony.sixteenths()
    a,4
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak padding 1
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    _ \baca-string-iii-markup
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \<
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \abjad-dashed-line-with-hook
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \baca-text-spanner-left-text "sixteenths([4], talea_denominator=16)"
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
    %@% - \tweak color #darkyellow
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% - \tweak staff-padding 8
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %@% \bacaStartTextSpanRhythmAnnotation
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "T4+"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! baca.glissando()
    %! abjad.glissando(0)
    %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %! RIGHT_BROKEN
    \hide NoteHead
    %! baca.glissando()
    %! abjad.glissando(0)
    %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %! RIGHT_BROKEN
    \override Accidental.stencil = ##f
    %! baca.glissando()
    %! abjad.glissando(0)
    %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %! RIGHT_BROKEN
    \override NoteColumn.glissando-skip = ##t
    %! baca.glissando()
    %! abjad.glissando(0)
    %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %! RIGHT_BROKEN
    \override NoteHead.no-ledgers = ##t
    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "O"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "T2"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP

    %! harmony.sixteenths()
    a,4

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_II_Music_Voice measure 263 / measure 8]
    %! harmony.sixteenths()
    a,4
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
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
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P3"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP

    %! harmony.sixteenths()
    a,4

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_II_Music_Voice measure 264 / measure 9]
    %! harmony.sixteenths()
    a,4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \ff
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "O"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
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
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "O"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP

    %! harmony.sixteenths()
    a,4

    %! baca.SegmentMaker._comment_measure_numbers()
    % [28 Contrabass_II_Music_Voice measure 265 / measure 10]
    %! harmony.sixteenths()
    a,4
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-ff-parenthesized
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \>
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_STOP
    \bacaStopTextSpanSCP
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_START
    - \abjad-solid-line-with-arrow
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_START
    - \baca-text-spanner-right-text "T4+"
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! AUTODETECT
    %! SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_START
    - \tweak bound-details.right.padding 3.25
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_START
    - \tweak staff-padding 3
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! RIGHT_BROKEN
    %! SPANNER_START
    \bacaStartTextSpanSCP

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4

    %! harmony.sixteenths()
    a,4
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    <<

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Contrabass_II_Music_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Contrabass_II_Music_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! baca.glissando()
            %! abjad.glissando(4)
            %! HIDE_TO_JOIN_BROKEN_SPANNERS
            %! RIGHT_BROKEN
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \revert Accidental.stencil
            %! baca.glissando()
            %! abjad.glissando(4)
            %! HIDE_TO_JOIN_BROKEN_SPANNERS
            %! RIGHT_BROKEN
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \revert NoteColumn.glissando-skip
            %! baca.glissando()
            %! abjad.glissando(4)
            %! HIDE_TO_JOIN_BROKEN_SPANNERS
            %! RIGHT_BROKEN
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \revert NoteHead.no-ledgers
            %! baca.glissando()
            %! abjad.glissando(4)
            %! HIDE_TO_JOIN_BROKEN_SPANNERS
            %! RIGHT_BROKEN
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \undo \hide NoteHead
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            a,1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! baca.scp_spanner()
            %! SCP_SPANNER
            %! baca.PiecewiseCommand._call(3)
            %! RIGHT_BROKEN
            %! SPANNER_STOP
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \bacaStopTextSpanSCP
            %! baca.hairpin()
            %! baca.PiecewiseCommand._call(1)
            %! RIGHT_BROKEN
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \!

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        }

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Contrabass_II_Rest_Voice"
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        {

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [28 Contrabass_II_Rest_Voice measure 266 / measure 11]
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        }

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >>

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
}


%! ide.Path.extern()
ab_Contrabass_II_Music_Staff = <<

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests"
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \ab_Global_Rests

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Contrabass_II_Music_Voice"
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \ab_Contrabass_II_Music_Voice

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>>
