  %! baca.path.extern()
number.7.Skips = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 1]
    % OPENING:
    % COMMANDS:
      %! REAPPLIED_TIME_SIGNATURE_COLOR
      %! baca._attach_color_literal(2)
    \baca-time-signature-color #'green4
      %! +SEGMENT
      %! EMPTY_START_BAR
      %! baca._attach_nonfirst_empty_start_bar()
    \bar ""
      %! REAPPLIED_TIME_SIGNATURE
      %! baca._make_global_skips(2)
      %! baca._reapply_persistent_indicators(1)
      %! baca._set_status_tag()
    \time 4/4
      %! baca._make_global_skips(1)
    s1 * 4/4
    % AFTER:
    % SPANNER_STARTS:
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \baca-metronome-mark-spanner-left-text-mixed-number 2 0 1 "57" "3" "5"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[3'03'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "1"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "55"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    - \baca-start-snm-left-only "[G.1]"
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 2]
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_TIME_SIGNATURE_COLOR
      %! baca._attach_color_literal(2)
    \baca-time-signature-color #'blue
      %! EXPLICIT_TIME_SIGNATURE
      %! baca._make_global_skips(2)
      %! baca._set_status_tag()
    \time 3/4
      %! baca._make_global_skips(1)
    s1 * 3/4
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! baca._attach_metronome_marks(1)
    \bacaStopTextSpanMM
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    \bacaStopTextSpanSNM
    % SPANNER_STARTS:
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1) #'blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "96"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[3'07'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "2"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "56"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    - \baca-start-snm-colored-left-only "[>H.1]" #darkgreen
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 3]
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_TIME_SIGNATURE_COLOR
      %! baca._attach_color_literal(2)
    \baca-time-signature-color #'blue
      %! EXPLICIT_TIME_SIGNATURE
      %! baca._make_global_skips(2)
      %! baca._set_status_tag()
    \time 1/4
      %! baca._make_global_skips(1)
    s1 * 1/4
    % AFTER:
    % MARKUP:
      %! -PARTS
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak extra-offset #'(4 . -30)
      %! -PARTS
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \harmony-text-six
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only-fermata "2''"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "3"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "57"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 4]
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_TIME_SIGNATURE_COLOR
      %! baca._attach_color_literal(2)
    \baca-time-signature-color #'blue
      %! EXPLICIT_TIME_SIGNATURE
      %! baca._make_global_skips(2)
      %! baca._set_status_tag()
    \time 4/4
      %! baca._make_global_skips(1)
    s1 * 4/4
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! baca._attach_metronome_marks(1)
    \bacaStopTextSpanMM
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    \bacaStopTextSpanSNM
    % SPANNER_STARTS:
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
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
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \baca-metronome-mark-spanner-left-text-mixed-number 2 0 1 "57" "3" "5"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[3'11'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "4"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "58"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    - \baca-start-snm-left-only "[G.2-3]"
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 5]
      %! baca._make_global_skips(1)
    s1 * 4/4
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[3'15'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "5"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "59"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 6]
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_TIME_SIGNATURE_COLOR
      %! baca._attach_color_literal(2)
    \baca-time-signature-color #'blue
      %! EXPLICIT_TIME_SIGNATURE
      %! baca._make_global_skips(2)
      %! baca._set_status_tag()
    \time 5/4
      %! baca._make_global_skips(1)
    s1 * 5/4
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! baca._attach_metronome_marks(1)
    \bacaStopTextSpanMM
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    \bacaStopTextSpanSNM
    % SPANNER_STARTS:
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) #'blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "48"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[3'19'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "6"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "60"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    - \baca-start-snm-colored-left-only "[<F.3]" #darkgreen
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 7]
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_TIME_SIGNATURE_COLOR
      %! baca._attach_color_literal(2)
    \baca-time-signature-color #'blue
      %! EXPLICIT_TIME_SIGNATURE
      %! baca._make_global_skips(2)
      %! baca._set_status_tag()
    \time 6/4
      %! baca._make_global_skips(1)
    s1 * 6/4
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! baca._attach_metronome_marks(1)
    \bacaStopTextSpanMM
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    \bacaStopTextSpanSNM
    % SPANNER_STARTS:
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #2 #3 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #2 #3 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #2 #3 #2 #0 #'(1 . 1) #'blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "144"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[3'25'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "7"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "61"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    - \baca-start-snm-colored-left-only "[>I.1]" #darkgreen
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 8]
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_TIME_SIGNATURE_COLOR
      %! baca._attach_color_literal(2)
    \baca-time-signature-color #'blue
      %! EXPLICIT_TIME_SIGNATURE
      %! baca._make_global_skips(2)
      %! baca._set_status_tag()
    \time 4/4
      %! baca._make_global_skips(1)
    s1 * 4/4
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! baca._attach_metronome_marks(1)
    \bacaStopTextSpanMM
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    \bacaStopTextSpanSNM
    % SPANNER_STARTS:
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(1 . 1) #'blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% - \baca-metronome-mark-spanner-left-text-mixed-number 2 0 1 "57" "3" "5"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-both "[3'28'']" "[3'32'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "8"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "62"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    - \baca-start-snm-left-only "[G.4]"
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! ANCHOR_SKIP
      %! baca._comment_measure_numbers()
      %! baca._style_anchor_skip(1)
    % [anchor skip]
    % OPENING:
    % COMMANDS:
      %! ANCHOR_SKIP
      %! baca._style_anchor_skip(2)
    \baca-time-signature-transparent
      %! ANCHOR_SKIP
      %! EXPLICIT_TIME_SIGNATURE
      %! baca._set_status_tag()
      %! baca._style_anchor_skip(1)
    \time 1/4
      %! ANCHOR_SKIP
      %! baca._make_global_skips(3)
    s1 * 1/4
    % AFTER:
    % SPANNER_STOPS:
      %! ANCHOR_SKIP
      %! CLOCK_TIME
      %! baca._label_clock_time()
      %! baca._style_anchor_skip(1)
    %@% \bacaStopTextSpanCT
      %! ANCHOR_SKIP
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
      %! baca._style_anchor_skip(1)
    \bacaStopTextSpanLMN
      %! ANCHOR_SKIP
      %! EOS_STOP_MM_SPANNER
      %! baca._attach_metronome_marks(4)
      %! baca._style_anchor_skip(1)
    \bacaStopTextSpanMM
      %! ANCHOR_SKIP
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
      %! baca._style_anchor_skip(1)
    %@% \bacaStopTextSpanMN
      %! ANCHOR_SKIP
      %! STAGE_NUMBER
      %! baca._label_stage_numbers()
      %! baca._style_anchor_skip(1)
    \bacaStopTextSpanSNM
    % COMMANDS:
      %! ANCHOR_SKIP
      %! baca._style_anchor_skip(3)
    \once \override Score.BarLine.transparent = ##t
      %! ANCHOR_SKIP
      %! baca._style_anchor_skip(3)
    \once \override Score.SpanBar.transparent = ##t
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! baca.make_global_context()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Rests = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 1]
      %! baca._make_global_rests(1)
    R1 * 4/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 2]
      %! baca._make_global_rests(1)
    R1 * 3/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 3]
    % BEFORE:
    % GROB_OVERRIDES:
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    % OPENING:
    % COMMANDS:
      %! baca.GlobalFermataCommand._call(2)
      %! baca.global_fermata()
    \baca-fermata-measure
      %! baca._make_global_rests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! baca.GlobalFermataCommand._call(1)
      %! baca.global_fermata()
    ^ \baca-fermata-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 4]
      %! baca._make_global_rests(1)
    R1 * 4/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 5]
      %! baca._make_global_rests(1)
    R1 * 4/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 6]
      %! baca._make_global_rests(1)
    R1 * 5/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 7]
      %! baca._make_global_rests(1)
    R1 * 6/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 8]
      %! baca._make_global_rests(1)
    R1 * 4/4
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! baca.make_global_context()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Bass_Flute.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Bass_Flute.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! baca._clone_section_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-bfl-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \set Staff.shortInstrumentName = \harmony-bfl-markup
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \stopStaff
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \clef "treble"
      %! REAPPLIED_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    bf'''!4 * 1/2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“BassFlute”)"
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Bfl.”]"
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! REAPPLIED_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! INVISIBLE_MUSIC_COMMAND
      %! harmony.make_sixteenths()
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
      %! harmony.make_sixteenths()
    \abjad-invisible-music-coloring
      %! harmony.make_sixteenths()
    bf'''!4 * 1/2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \f
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \!
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Bass_Flute.Music measure 2]
      %! baca._make_mmrests_flat()
    R1 * 3/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Bass_Flute.Music measure 3]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca._make_mmrests_flat()
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % COMMANDS:
      %! FERMATA_MEASURE
      %! MEASURE_57
      %! baca._style_fermata_measures(7)
%%% \once \override Score.BarLine.transparent = ##t
      %! FERMATA_MEASURE
      %! MEASURE_57
      %! baca._style_fermata_measures(7)
%%% \once \override Score.SpanBar.transparent = ##t
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
      %! baca._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(0 . 0)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Bass_Flute.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
      %! baca._style_fermata_measures(4)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! baca._style_fermata_measures(3)
    \stopStaff
      %! baca._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
      %! baca._style_fermata_measures(3)
    \startStaff
      %! harmony.make_sixteenths()
    bf'''!8 * 1/2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dynamic_text_x_offset()
    \once \override DynamicText.X-offset = -0.75
    % OPENING:
    % COMMANDS:
      %! INVISIBLE_MUSIC_COMMAND
      %! harmony.make_sixteenths()
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
      %! harmony.make_sixteenths()
    \abjad-invisible-music-coloring
      %! harmony.make_sixteenths()
    bf'''!8 * 1/2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \f
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \!
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Bass_Flute.Music measure 5]
      %! harmony.make_sixteenths()
    r2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    bf'''!8 * 1/2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dynamic_text_x_offset()
    \once \override DynamicText.X-offset = -2
    % OPENING:
    % COMMANDS:
      %! INVISIBLE_MUSIC_COMMAND
      %! harmony.make_sixteenths()
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
      %! harmony.make_sixteenths()
    \abjad-invisible-music-coloring
      %! harmony.make_sixteenths()
    bf'''!8 * 1/2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \mf
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Bass_Flute.Music measure 6]
      %! harmony.make_sixteenths()
    r2.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \!
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_sixteenths()
    \times 2/3
      %! harmony.make_sixteenths()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r8
        % AFTER:
        % SPANNER_STARTS:
          %! AUTODETECT
          %! COVERED_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.covered_spanner()
          %! COVERED_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.covered_spanner()
        - \tweak bound-details.right.padding 2.75
          %! COVERED_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.covered_spanner()
        - \tweak staff-padding 5.5
          %! COVERED_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.covered_spanner()
        - \abjad-dashed-line-with-hook
          %! COVERED_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.covered_spanner()
        - \baca-text-spanner-left-markup \baca-covered-markup
          %! COVERED_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.covered_spanner()
        - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
          %! COVERED_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.covered_spanner()
        \bacaStartTextSpanCovered
          %! AUTODETECT
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \tweak bound-details.right.padding 2.75
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \tweak staff-padding 8
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \abjad-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        \bacaStartTextSpanMetricModulation
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        af'!4
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.dynamic()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.dynamic()
        \mf
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_sixteenths()
    \times 2/3
      %! harmony.make_sixteenths()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r8
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        af'!4
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Bass_Flute.Music measure 7]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
      %! baca.OverrideCommand._call(1)
      %! baca.tuplet_bracket_staff_padding()
    \override TupletBracket.staff-padding = 6.5
      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    g'2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % AFTER:
    % SPANNER_STOPS:
      %! COVERED_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.covered_spanner()
    \bacaStopTextSpanCovered
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner()
    \bacaStopTextSpanMetricModulation
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_sixteenths()
    \times 5/4
      %! harmony.make_sixteenths()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r4
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        bf'''!4 * 1/2
        % AFTER:
        % STEM_TREMOLOS:
          %! baca.IndicatorCommand._call()
          %! baca.stem_tremolo()
        :32
        % MARKUP:
          %! DURATION_MULTIPLIER
          %! baca._label_duration_multipliers()
        %@% ^ \baca-duration-multiplier-markup #"1" #"2"
        % SPANNER_STARTS:
          %! AUTODETECT
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \tweak bound-details.right.padding 2.75
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \tweak staff-padding 11.5
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \abjad-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        \bacaStartTextSpanMetricModulation
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin()
        \<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPENING:
        % COMMANDS:
          %! INVISIBLE_MUSIC_COMMAND
          %! harmony.make_sixteenths()
        %@% \abjad-invisible-music
          %! INVISIBLE_MUSIC_COLORING
          %! harmony.make_sixteenths()
        \abjad-invisible-music-coloring
          %! harmony.make_sixteenths()
        bf'''!4 * 1/2
        % AFTER:
        % STEM_TREMOLOS:
          %! baca.IndicatorCommand._call()
          %! baca.stem_tremolo()
        :32
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin()
        \f
        % MARKUP:
          %! DURATION_MULTIPLIER
          %! baca._label_duration_multipliers()
        %@% ^ \baca-duration-multiplier-markup #"1" #"2"
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin()
        \>
        % COMMANDS:
          %! baca.OverrideCommand._call(2)
          %! baca.tuplet_bracket_up()
        \revert TupletBracket.direction
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Bass_Flute.Music measure 8]
      %! harmony.make_sixteenths()
    bf'''!8 * 1/2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dynamic_text_x_offset()
    \once \override DynamicText.X-offset = -0.75
    % OPENING:
    % COMMANDS:
      %! INVISIBLE_MUSIC_COMMAND
      %! harmony.make_sixteenths()
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
      %! harmony.make_sixteenths()
    \abjad-invisible-music-coloring
      %! harmony.make_sixteenths()
    bf'''!8 * 1/2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \f
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \!
    % SPANNER_STOPS:
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner()
    \bacaStopTextSpanMetricModulation
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % AFTER:
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
      %! baca.OverrideCommand._call(2)
      %! baca.tuplet_bracket_staff_padding()
    \revert TupletBracket.staff-padding
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Bass_Flute.Music_Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! baca.make_global_context()
    \context GlobalRests = "Rests"
      %! baca.make_global_context()
      %! baca.path.extern()
    { \number.7.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Bass_Flute.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.7.Bass_Flute.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.7.Percussion.1.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 5
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
      %! baca._clone_section_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-perc-i-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \stopStaff
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \once \override Staff.StaffSymbol.line-count = 3
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \clef "percussion"
      %! REAPPLIED_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! EXPLICIT_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    r2.
    % AFTER:
    % ARTICULATIONS:
      %! REAPPLIED_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! REAPPLIED_DYNAMIC
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \ff
    % MARKUP:
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Perc. I”]"
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! REAPPLIED_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    e'16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \mp
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak self-alignment-X 0.75
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak staff-padding 5
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-purpleheart-markup
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 2]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.stem_up()
    \once \override Stem.direction = #up
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 6
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \stopStaff
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
      %! harmony.make_sixteenths()
    c'16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \f
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak staff-padding 6
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-brake-drum-markup
    % COMMANDS:
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2
    % AFTER:
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 3]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca._make_mmrests_flat()
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % COMMANDS:
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
      %! baca._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 5
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \stopStaff
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \once \override Staff.StaffSymbol.line-count = 3
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
      %! harmony.make_sixteenths()
    e'16
    % AFTER:
    % ARTICULATIONS:
      %! REDUNDANT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! REDUNDANT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \f
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak self-alignment-X -0.75
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak staff-padding 5
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-purpleheart-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 5]
      %! harmony.make_sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    e'16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \mp
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % AFTER:
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 6]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 6
      %! baca.OverrideCommand._call(1)
      %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \stopStaff
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
      %! harmony.make_sixteenths()
    r1
    % AFTER:
    % COMMANDS:
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.stem_down()
    \once \override Stem.direction = #down
      %! harmony.make_sixteenths()
    b16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \mf
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak self-alignment-X 1
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak staff-padding 6
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-bd-superball-markup
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 7]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.stem_down()
    \override Stem.direction = #down
      %! baca.OverrideCommand._call(1)
      %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
      %! harmony.make_sixteenths()
    d'8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.accent()
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak self-alignment-X -0.75
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \baca-effort-f
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak staff-padding 6
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-slate-brush-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    d'8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.accent()
    - \accent
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    d'8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.accent()
    - \accent
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    d'8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.accent()
    - \accent
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    d'8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.accent()
    - \accent
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.stem_down()
    \revert Stem.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % AFTER:
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
      %! baca.OverrideCommand._call(2)
      %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 8]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 5
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \stopStaff
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \once \override Staff.StaffSymbol.line-count = 3
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
      %! harmony.make_sixteenths()
    e'16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \f
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak self-alignment-X -0.75
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak staff-padding 5
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-purpleheart-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % AFTER:
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Percussion.1.Music_Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! NOT_TOPMOST
      %! baca.make_global_context()
%%% \context GlobalRests = "Rests"
      %! NOT_TOPMOST
      %! baca.make_global_context()
      %! baca.path.extern()
%%% { \number.7.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Percussion.1.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.7.Percussion.1.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.7.Percussion.2.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 6
      %! baca.OverrideCommand._call(1)
      %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
      %! baca._clone_section_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-perc-ii-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \stopStaff
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \once \override Staff.StaffSymbol.line-count = 1
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \clef "percussion"
      %! REAPPLIED_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    r4
    % AFTER:
    % ARTICULATIONS:
      %! REAPPLIED_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! REAPPLIED_DYNAMIC
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \baca-f-sempre
    % MARKUP:
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Perc. II”]"
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! REAPPLIED_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.stem_down()
    \override Stem.direction = #down
      %! harmony.make_sixteenths()
    c'2.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \p
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak staff-padding 6
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-tam-tam-markup
    % SPANNER_STARTS:
      %! abjad.glissando(7)
      %! baca.glissando()
    \glissando
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 2]
    % OPENING:
    % COMMANDS:
      %! abjad.glissando(1)
      %! baca.glissando()
    \hide NoteHead
      %! abjad.glissando(1)
      %! baca.glissando()
    \override Accidental.stencil = ##f
      %! abjad.glissando(1)
      %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t
      %! abjad.glissando(1)
      %! baca.glissando()
    \override NoteHead.no-ledgers = ##t
      %! abjad.glissando(1)
      %! baca.glissando()
    \override Dots.transparent = ##t
      %! abjad.glissando(1)
      %! baca.glissando()
    \override Stem.transparent = ##t
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert Accidental.stencil
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert NoteColumn.glissando-skip
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert NoteHead.no-ledgers
      %! abjad.glissando(6)
      %! baca.glissando()
    \undo \hide NoteHead
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert Dots.transparent
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert Stem.transparent
      %! harmony.make_sixteenths()
    c'2.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.stem_down()
    \revert Stem.direction
      %! baca.OverrideCommand._call(2)
      %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 3]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca._make_mmrests_flat()
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.stem_down()
    \override Stem.direction = #down
      %! baca.OverrideCommand._call(1)
      %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
      %! baca._style_fermata_measures(3)
    \stopStaff
      %! baca._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 1
      %! baca._style_fermata_measures(3)
    \startStaff
      %! baca.make_notes()
    c'1
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak self-alignment-X -0.75
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \baca-p-ancora
    % SPANNER_STARTS:
      %! abjad.glissando(7)
      %! baca.glissando()
    \glissando
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 5]
    % OPENING:
    % COMMANDS:
      %! abjad.glissando(1)
      %! baca.glissando()
    \hide NoteHead
      %! abjad.glissando(1)
      %! baca.glissando()
    \override Accidental.stencil = ##f
      %! abjad.glissando(1)
      %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t
      %! abjad.glissando(1)
      %! baca.glissando()
    \override NoteHead.no-ledgers = ##t
      %! abjad.glissando(1)
      %! baca.glissando()
    \override Dots.transparent = ##t
      %! abjad.glissando(1)
      %! baca.glissando()
    \override Stem.transparent = ##t
      %! baca.make_notes()
    c'1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 6]
    % OPENING:
    % COMMANDS:
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert Accidental.stencil
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert NoteColumn.glissando-skip
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert NoteHead.no-ledgers
      %! abjad.glissando(6)
      %! baca.glissando()
    \undo \hide NoteHead
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert Dots.transparent
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert Stem.transparent
      %! harmony.make_sixteenths()
    c'1
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.stem_down()
    \revert Stem.direction
      %! baca.OverrideCommand._call(2)
      %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.stem_up()
    \once \override Stem.direction = #up
      %! harmony.make_sixteenths()
    c'16
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.damp()
    - \baca-damp
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \mf
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak self-alignment-X 1
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak staff-padding 6
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-brake-drum-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 7]
      %! baca._make_mmrests_flat()
    R1 * 6/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"6" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 8]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.stem_down()
    \once \override Stem.direction = #down
      %! baca.OverrideCommand._call(1)
      %! baca.tuplet_bracket_up()
    \once \override TupletBracket.direction = #up
      %! harmony.make_sixteenths()
    c'1
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \p
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak staff-padding 6
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-tam-tam-markup
    % SPANNER_STARTS:
      %! abjad.glissando(7)
      %! baca.glissando()
    \glissando
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! ANCHOR_NOTE
      %! baca._comment_measure_numbers()
      %! baca._style_anchor_notes()
    % [Percussion.2.Music anchor note]
    % BEFORE:
    % COMMANDS:
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COMMAND
      %! NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(3)
    %@% \abjad-invisible-music
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COLORING
      %! NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(2)
    \abjad-invisible-music-coloring
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! NOT_YET_PITCHED_COLORING
      %! baca._color_not_yet_pitched()
      %! baca._style_anchor_notes()
    \baca-not-yet-pitched-coloring
    % OPENING:
    % COMMANDS:
      %! ANCHOR_NOTE
      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
      %! abjad.glissando(0)
      %! baca._style_anchor_notes()
      %! baca.glissando()
    \hide NoteHead
      %! ANCHOR_NOTE
      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
      %! abjad.glissando(0)
      %! baca._style_anchor_notes()
      %! baca.glissando()
    \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
      %! abjad.glissando(0)
      %! baca._style_anchor_notes()
      %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t
      %! ANCHOR_NOTE
      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
      %! abjad.glissando(0)
      %! baca._style_anchor_notes()
      %! baca.glissando()
    \override NoteHead.no-ledgers = ##t
      %! ANCHOR_NOTE
      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
      %! abjad.glissando(0)
      %! baca._style_anchor_notes()
      %! baca.glissando()
    \override Dots.transparent = ##t
      %! ANCHOR_NOTE
      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
      %! abjad.glissando(0)
      %! baca._style_anchor_notes()
      %! baca.glissando()
    \override Stem.transparent = ##t
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(5)
    \once \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
      %! abjad.glissando(4)
      %! baca._style_anchor_notes()
      %! baca.glissando()
    \revert Accidental.stencil
      %! ANCHOR_NOTE
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
      %! abjad.glissando(4)
      %! baca._style_anchor_notes()
      %! baca.glissando()
    \revert NoteColumn.glissando-skip
      %! ANCHOR_NOTE
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
      %! abjad.glissando(4)
      %! baca._style_anchor_notes()
      %! baca.glissando()
    \revert NoteHead.no-ledgers
      %! ANCHOR_NOTE
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
      %! abjad.glissando(4)
      %! baca._style_anchor_notes()
      %! baca.glissando()
    \undo \hide NoteHead
      %! ANCHOR_NOTE
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
      %! abjad.glissando(4)
      %! baca._style_anchor_notes()
      %! baca.glissando()
    \revert Dots.transparent
      %! ANCHOR_NOTE
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
      %! abjad.glissando(4)
      %! baca._style_anchor_notes()
      %! baca.glissando()
    \revert Stem.transparent
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \stopStaff
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \once \override Staff.StaffSymbol.transparent = ##t
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \startStaff
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! baca.append_anchor_note(1)
    c'1 * 1/4
    % AFTER:
    % MARKUP:
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
      %! baca._label_duration_multipliers()
      %! baca._style_anchor_notes()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Percussion.2.Music_Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! NOT_TOPMOST
      %! baca.make_global_context()
%%% \context GlobalRests = "Rests"
      %! NOT_TOPMOST
      %! baca.make_global_context()
      %! baca.path.extern()
%%% { \number.7.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Percussion.2.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.7.Percussion.2.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.7.Harp.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 6
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(0 . 2)
      %! baca.OverrideCommand._call(1)
      %! baca.stem_down()
    \override Stem.direction = #down
      %! baca.OverrideCommand._call(1)
      %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
      %! baca._clone_section_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-hp-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \set Staff.shortInstrumentName = \harmony-hp-markup
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \stopStaff
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \once \override Staff.StaffSymbol.line-count = 1
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \clef "percussion"
      %! REAPPLIED_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    c'4 * 1/2
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \baca-effort-f
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Harp”)"
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Hp.”]"
    % SPANNER_STARTS:
      %! AUTODETECT
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.metric_modulation_spanner()
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.metric_modulation_spanner()
    - \tweak bound-details.right.padding 2.75
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.metric_modulation_spanner()
    - \tweak staff-padding 5.5
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.metric_modulation_spanner()
    - \abjad-dashed-line-with-hook
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.metric_modulation_spanner()
    - \baca-text-spanner-left-text "MM"
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.metric_modulation_spanner()
    \bacaStartTextSpanMetricModulation
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! REAPPLIED_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-hp-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! INVISIBLE_MUSIC_COMMAND
      %! harmony.make_sixteenths()
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
      %! harmony.make_sixteenths()
    \abjad-invisible-music-coloring
      %! harmony.make_sixteenths()
    c'4 * 1/2
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.stem_down()
    \revert Stem.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % AFTER:
    % SPANNER_STOPS:
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner()
    \bacaStopTextSpanMetricModulation
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
      %! baca.OverrideCommand._call(2)
      %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 2]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_56
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_shift()
      %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_56
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_extra_offset()
      %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \stopStaff
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \once \override Staff.StaffSymbol.line-count = 5
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
    \clef "treble"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
    <b'' c''' d'''>2. * 1/2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak padding 2.5
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-bisb-markup
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! INVISIBLE_MUSIC_COMMAND
      %! harmony.make_sixteenths()
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
      %! harmony.make_sixteenths()
    \abjad-invisible-music-coloring
    <b'' c''' d'''>4.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \mf
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
          %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Harp.Music"
          %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

              %! baca._comment_measure_numbers()
            % [Harp.Music measure 3]
            % BEFORE:
            % COMMANDS:
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
              %! baca._make_multimeasure_rest_container(3)
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
              %! baca._make_multimeasure_rest_container(2)
            \abjad-invisible-music-coloring
              %! baca._style_fermata_measures(1)
            \stopStaff
              %! baca._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
              %! baca._style_fermata_measures(1)
            \startStaff
            % GROB_OVERRIDES:
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
              %! baca._make_multimeasure_rest_container(1)
            b'1 * 1/4
            % AFTER:
            % ARTICULATIONS:
              %! EXPLICIT_DYNAMIC_COLOR
              %! baca.treat_persistent_wrapper()
              %! EXPLICIT_DYNAMIC
              %! SPANNER_STOP
              %! baca.PiecewiseCommand._call(3)
              %! baca._set_status_tag()
              %! baca.hairpin()
            - \tweak color #(x11-color 'blue)
              %! EXPLICIT_DYNAMIC
              %! SPANNER_STOP
              %! baca.PiecewiseCommand._call(3)
              %! baca._set_status_tag()
              %! baca.hairpin()
            \!
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % COMMANDS:
              %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
              %! baca._style_fermata_measures(2)
            \override Staff.BarLine.bar-extent = #'(0 . 2)
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
          %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
          %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Harp.Rests"
          %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

              %! baca._comment_measure_numbers()
            % [Harp.Rests measure 3]
              %! MULTIMEASURE_REST
              %! REST_VOICE
              %! baca._make_multimeasure_rest_container(5)
            R1 * 1/4
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
          %! baca._make_multimeasure_rest_container(6)
        }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! baca._make_multimeasure_rest_container(7)
    >>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_58
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_shift()
      %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_58
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_extra_offset()
      %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 6
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(0 . 2)
      %! baca.OverrideCommand._call(1)
      %! baca.stem_down()
    \override Stem.direction = #down
      %! baca.OverrideCommand._call(1)
      %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \stopStaff
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.staff_lines()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
    \clef "percussion"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    c'8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \baca-effort-f
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak staff-padding 6
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-whisk-markup
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 5]
      %! harmony.make_sixteenths()
    r2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    c'8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \mf
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
      %! baca.OverrideCommand._call(2)
      %! baca.stem_down()
    \revert Stem.direction
      %! baca.OverrideCommand._call(2)
      %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_sixteenths()
    \times 2/3
      %! harmony.make_sixteenths()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! baca._comment_measure_numbers()
        % [Harp.Music measure 6]
        % BEFORE:
        % COMMANDS:
          %! MEASURE_60
          %! SHIFTED_CLEF
          %! baca.OverrideCommand._call(1)
          %! baca.clef_shift()
          %! baca.clef_x_extent_false()
    %%% \once \override Staff.Clef.X-extent = ##f
          %! MEASURE_60
          %! SHIFTED_CLEF
          %! baca.OverrideCommand._call(1)
          %! baca.clef_extra_offset()
          %! baca.clef_shift()
    %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
          %! baca.OverrideCommand._call(1)
          %! baca.dls_staff_padding()
        \override DynamicLineSpanner.staff-padding = 4
          %! -PARTS
          %! EXPLICIT_BAR_EXTENT
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
        \override Staff.BarLine.bar-extent = #'(-2 . 2)
          %! EXPLICIT_STAFF_LINES
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.staff_lines()
        \stopStaff
          %! EXPLICIT_STAFF_LINES
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.staff_lines()
        \once \override Staff.StaffSymbol.line-count = 5
          %! EXPLICIT_STAFF_LINES
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.staff_lines()
        \startStaff
        % OPENING:
        % COMMANDS:
          %! EXPLICIT_CLEF
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.clef()
        \clef "treble"
          %! EXPLICIT_CLEF_COLOR
          %! baca._attach_color_literal(2)
        \once \override Staff.Clef.color = #(x11-color 'blue)
          %! EXPLICIT_STAFF_LINES_COLOR
          %! baca._attach_color_literal(2)
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
          %! EXPLICIT_CLEF_COLOR_CANCELLATION
          %! baca._attach_color_literal(1)
        %@% \override Staff.Clef.color = ##f
          %! EXPLICIT_CLEF
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.clef()
          %! baca.treat_persistent_wrapper(2)
        \set Staff.forceClef = ##t
          %! harmony.make_sixteenths()
        r8
        % AFTER:
        % SPANNER_STARTS:
          %! AUTODETECT
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.text_spanner()
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.text_spanner()
        - \tweak bound-details.right.padding 2.75
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.text_spanner()
        - \tweak staff-padding 5.5
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.text_spanner()
        - \abjad-dashed-line-with-hook
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.text_spanner()
        - \baca-text-spanner-left-markup \baca-fingernail-markup
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.text_spanner()
        \startTextSpan
        % ABSOLUTE_AFTER:
        % COMMANDS:
          %! EXPLICIT_CLEF_REDRAW_COLOR
          %! baca._attach_color_literal(2)
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        fs'!4
        % AFTER:
        % ARTICULATIONS:
          %! REDUNDANT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! REDUNDANT_DYNAMIC
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.dynamic()
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.dynamic()
        \mf
          %! baca.IndicatorCommand._call()
          %! baca.laissez_vibrer()
        \laissezVibrer
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_sixteenths()
    \times 2/3
      %! harmony.make_sixteenths()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r8
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        gs'!4
        % AFTER:
        % ARTICULATIONS:
          %! baca.IndicatorCommand._call()
          %! baca.laissez_vibrer()
        \laissezVibrer
        % COMMANDS:
          %! baca.OverrideCommand._call(2)
          %! baca.dls_staff_padding()
        \revert DynamicLineSpanner.staff-padding
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 7]
      %! harmony.make_sixteenths()
    r4
    % AFTER:
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.text_spanner()
    \stopTextSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_sixteenths()
    \times 2/3
      %! harmony.make_sixteenths()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r4
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % BEFORE:
        % COMMANDS:
          %! baca.OverrideCommand._call(1)
          %! baca.dls_staff_padding()
        \once \override DynamicLineSpanner.staff-padding = 6
        <b'' cs'''!>2
        % AFTER:
        % ARTICULATIONS:
          %! baca.IndicatorCommand._call()
          %! baca.double_flageolet()
        - \baca-double-flageolet
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.dynamic()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.dynamic()
        \f
        % MARKUP:
          %! baca.IndicatorCommand._call()
          %! baca.markup()
        - \tweak padding 1.5
          %! baca.IndicatorCommand._call()
          %! baca.markup()
        ^ \baca-lv-markup
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_sixteenths()
    \times 5/4
      %! harmony.make_sixteenths()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r4
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % BEFORE:
        % COMMANDS:
          %! baca.OverrideCommand._call(1)
          %! baca.dls_staff_padding()
        \once \override DynamicLineSpanner.staff-padding = 8
          %! baca.OverrideCommand._call(1)
          %! baca.stem_down()
        \once \override Stem.direction = #down
          %! baca.OverrideCommand._call(1)
          %! baca.tuplet_bracket_up()
        \once \override TupletBracket.direction = #up
          %! EXPLICIT_STAFF_LINES
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.staff_lines()
        \stopStaff
          %! EXPLICIT_STAFF_LINES
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.staff_lines()
        \once \override Staff.StaffSymbol.line-count = 1
          %! EXPLICIT_STAFF_LINES
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.staff_lines()
        \startStaff
        % OPENING:
        % COMMANDS:
          %! EXPLICIT_CLEF
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.clef()
        \clef "percussion"
          %! EXPLICIT_CLEF_COLOR
          %! baca._attach_color_literal(2)
        \once \override Staff.Clef.color = #(x11-color 'blue)
          %! EXPLICIT_STAFF_LINES_COLOR
          %! baca._attach_color_literal(2)
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
          %! EXPLICIT_CLEF_COLOR_CANCELLATION
          %! baca._attach_color_literal(1)
        %@% \override Staff.Clef.color = ##f
          %! EXPLICIT_CLEF
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.clef()
          %! baca.treat_persistent_wrapper(2)
        \set Staff.forceClef = ##t
          %! harmony.make_sixteenths()
        c'4 * 1/2
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.dynamic()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
          %! baca.dynamic()
        \baca-effort-f
        % MARKUP:
          %! DURATION_MULTIPLIER
          %! baca._label_duration_multipliers()
        %@% ^ \baca-duration-multiplier-markup #"1" #"2"
          %! baca.IndicatorCommand._call()
          %! baca.markup()
        ^ \baca-whisk-markup
        % SPANNER_STARTS:
          %! AUTODETECT
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \tweak bound-details.right.padding 2.75
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \tweak staff-padding 8
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \abjad-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        \bacaStartTextSpanMetricModulation
        % COMMANDS:
          %! -PARTS
          %! EXPLICIT_BAR_EXTENT
          %! baca.IndicatorCommand._call()
          %! baca._set_status_tag()
        \override Staff.BarLine.bar-extent = #'(0 . 2)
        % ABSOLUTE_AFTER:
        % COMMANDS:
          %! EXPLICIT_CLEF_REDRAW_COLOR
          %! baca._attach_color_literal(2)
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % BEFORE:
        % COMMANDS:
          %! NOT_YET_PITCHED_COLORING
          %! baca._color_not_yet_pitched()
        \baca-not-yet-pitched-coloring
        % OPENING:
        % COMMANDS:
          %! INVISIBLE_MUSIC_COMMAND
          %! harmony.make_sixteenths()
        %@% \abjad-invisible-music
          %! INVISIBLE_MUSIC_COLORING
          %! harmony.make_sixteenths()
        \abjad-invisible-music-coloring
          %! harmony.make_sixteenths()
        c'4 * 1/2
        % AFTER:
        % MARKUP:
          %! DURATION_MULTIPLIER
          %! baca._label_duration_multipliers()
        %@% ^ \baca-duration-multiplier-markup #"1" #"2"
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 8]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 8
      %! baca.OverrideCommand._call(1)
      %! baca.stem_down()
    \override Stem.direction = #down
      %! baca.OverrideCommand._call(1)
      %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
      %! harmony.make_sixteenths()
    c'8 * 1/2
    % AFTER:
    % ARTICULATIONS:
      %! REDUNDANT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! REDUNDANT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \baca-effort-f
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! INVISIBLE_MUSIC_COMMAND
      %! harmony.make_sixteenths()
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
      %! harmony.make_sixteenths()
    \abjad-invisible-music-coloring
      %! harmony.make_sixteenths()
    c'8 * 1/2
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.stem_down()
    \revert Stem.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % AFTER:
    % SPANNER_STOPS:
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner()
    \bacaStopTextSpanMetricModulation
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % AFTER:
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
      %! baca.OverrideCommand._call(2)
      %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Harp.Music_Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! NOT_TOPMOST
      %! baca.make_global_context()
%%% \context GlobalRests = "Rests"
      %! NOT_TOPMOST
      %! baca.make_global_context()
      %! baca.path.extern()
%%% { \number.7.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Harp.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.7.Harp.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.7.Viola.Music.count.1 = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    % OPENING:
    % COMMANDS:
      %! abjad.on_beat_grace_container(4)
    \voiceTwo
      %! harmony.make_appoggiato_rhythm()
    bf!4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \baca-mp-pp
    % SPANNER_STARTS:
      %! AUTODETECT
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak bound-details.right.padding 3.25
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak direction #down
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 8
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-up-hook
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-markup \harmony-b-flat-sounds-ottava-higher-markup
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Viola.Music.count.2 = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.on_beat_grace_container(4)
    \voiceTwo
      %! harmony.make_appoggiato_rhythm()
    bf!1
    % AFTER:
    % ARTICULATIONS:
      %! REDUNDANT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! REDUNDANT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak self-alignment-X -0.9
      %! REDUNDANT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \baca-mp-pp
    % SPANNER_STARTS:
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak direction #down
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 8
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-up-hook
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-markup \harmony-b-flat-sounds-ottava-higher-markup
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Viola.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        \context Voice = "On_Beat_Grace_Container"
        {
        % OPENING:
            % COMMANDS:
              %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3
            % ABSOLUTE_BEFORE:
            % COMMANDS:

              %! baca._comment_measure_numbers()
            % [Viola.Music measure 1]
            % BEFORE:
            % COMMANDS:
              %! baca.OverrideCommand._call(1)
              %! baca.note_head_style_harmonic()
            \override NoteHead.style = #'harmonic
              %! -PARTS
              %! EXPLICIT_BAR_EXTENT
              %! REAPPLIED_BAR_EXTENT
              %! baca._reapply_persistent_indicators(3)
              %! baca._set_status_tag()
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
              %! baca._clone_section_initial_short_instrument_name()
            \set Staff.instrumentName = \harmony-va-markup
              %! -PARTS
              %! REAPPLIED_SHORT_INSTRUMENT_NAME
              %! baca._reapply_persistent_indicators(3)
              %! baca._set_status_tag()
            \set Staff.shortInstrumentName = \harmony-va-markup
              %! REAPPLIED_STAFF_LINES
              %! baca._reapply_persistent_indicators(3)
              %! baca._set_status_tag()
            \stopStaff
              %! REAPPLIED_STAFF_LINES
              %! baca._reapply_persistent_indicators(3)
              %! baca._set_status_tag()
            \once \override Staff.StaffSymbol.line-count = 5
              %! REAPPLIED_STAFF_LINES
              %! baca._reapply_persistent_indicators(3)
              %! baca._set_status_tag()
            \startStaff
            % OPENING:
            % COMMANDS:
              %! REAPPLIED_CLEF
              %! baca._reapply_persistent_indicators(3)
              %! baca._set_status_tag()
            \clef "alto"
              %! REAPPLIED_CLEF_COLOR
              %! baca._attach_color_literal(2)
            \once \override Staff.Clef.color = #(x11-color 'green4)
              %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
              %! baca._attach_color_literal(2)
            %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
              %! REAPPLIED_STAFF_LINES_COLOR
              %! baca._attach_color_literal(2)
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
              %! REAPPLIED_CLEF_COLOR_CANCELLATION
              %! baca._attach_color_literal(1)
            %@% \override Staff.Clef.color = ##f
              %! REAPPLIED_CLEF
              %! baca._reapply_persistent_indicators(3)
              %! baca._set_status_tag()
              %! baca.treat_persistent_wrapper(2)
            \set Staff.forceClef = ##t
              %! abjad.on_beat_grace_container(2)
            \slash
              %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                bf
                d''
            >8 * 2/5
            % AFTER:
            % ARTICULATIONS:
              %! REAPPLIED_DYNAMIC_COLOR
              %! baca.treat_persistent_wrapper()
              %! REAPPLIED_DYNAMIC
              %! baca._reapply_persistent_indicators(3)
              %! baca._set_status_tag()
            - \tweak color #(x11-color 'green4)
              %! REAPPLIED_DYNAMIC
              %! baca._reapply_persistent_indicators(3)
              %! baca._set_status_tag()
            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
              %! REAPPLIED_INSTRUMENT_ALERT
              %! baca._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "(“Viola”)"
              %! REAPPLIED_SHORT_INSTRUMENT_NAME_ALERT
              %! baca._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "[“Va.”]"
            % START_BEAM:
            [
            % SPANNER_STARTS:
            (
            % ABSOLUTE_AFTER:
            % COMMANDS:
              %! REAPPLIED_CLEF_REDRAW_COLOR
              %! baca._attach_color_literal(2)
            \override Staff.Clef.color = #(x11-color 'OliveDrab)
              %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
              %! baca._attach_color_literal(2)
            %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
              %! -PARTS
              %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
              %! baca._reapply_persistent_indicators(3)
              %! baca._set_status_tag()
              %! baca.treat_persistent_wrapper(3)
            \set Staff.shortInstrumentName = \harmony-va-markup
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            ds''!8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            b'8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            c''8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            cqs''!8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % SPANNER_STOPS:
            )
            % STOP_BEAM:
            ]
            % COMMANDS:
              %! baca.OverrideCommand._call(2)
              %! baca.note_head_style_harmonic()
            \revert NoteHead.style
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        \context Voice = "Viola.Music"
          %! baca.path.extern()
        { \number.7.Viola.Music.count.1 }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    >>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_appoggiato_rhythm()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_appoggiato_rhythm()
    \times 3/5
      %! harmony.make_appoggiato_rhythm()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! abjad.on_beat_grace_container(5)
        \oneVoice
          %! harmony.make_appoggiato_rhythm()
        bf2
        % AFTER:
        % SPANNER_STARTS:
          %! harmony.make_appoggiato_rhythm()
        \repeatTie
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_appoggiato_rhythm()
        bf!4
        % AFTER:
        % ARTICULATIONS:
          %! baca.IndicatorCommand._call()
          %! baca.espressivo()
        - \espressivo
        % SPANNER_STARTS:
          %! AUTODETECT
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \tweak bound-details.right.padding 2.75
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \tweak staff-padding 5.5
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \abjad-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        \bacaStartTextSpanMetricModulation
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_appoggiato_rhythm()
        bf!4
        % AFTER:
        % ARTICULATIONS:
          %! baca.IndicatorCommand._call()
          %! baca.espressivo()
        - \espressivo
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_appoggiato_rhythm()
        bf!4
        % AFTER:
        % ARTICULATIONS:
          %! baca.IndicatorCommand._call()
          %! baca.espressivo()
        - \espressivo
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_appoggiato_rhythm()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 2]
      %! harmony.make_sixteenths()
    bf!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    bf!2
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % SPANNER_STOPS:
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner()
    \bacaStopTextSpanMetricModulation
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
          %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Viola.Music"
          %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

              %! baca._comment_measure_numbers()
            % [Viola.Music measure 3]
            % BEFORE:
            % COMMANDS:
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
              %! baca._make_multimeasure_rest_container(3)
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
              %! baca._make_multimeasure_rest_container(2)
            \abjad-invisible-music-coloring
              %! baca._style_fermata_measures(1)
            \stopStaff
              %! baca._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
              %! baca._style_fermata_measures(1)
            \startStaff
            % GROB_OVERRIDES:
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
              %! baca._make_multimeasure_rest_container(1)
            c'1 * 1/4
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % SPANNER_STOPS:
              %! SPANNER_STOP
              %! baca.PiecewiseCommand._call(4)
              %! baca.text_spanner()
            \stopTextSpan
            % COMMANDS:
              %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
              %! baca._style_fermata_measures(2)
            \override Staff.BarLine.bar-extent = #'(-2 . 0)
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
          %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
          %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Viola.Rests"
          %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

              %! baca._comment_measure_numbers()
            % [Viola.Rests measure 3]
              %! MULTIMEASURE_REST
              %! REST_VOICE
              %! baca._make_multimeasure_rest_container(5)
            R1 * 1/4
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
          %! baca._make_multimeasure_rest_container(6)
        }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! baca._make_multimeasure_rest_container(7)
    >>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        \context Voice = "On_Beat_Grace_Container"
        {
        % OPENING:
            % COMMANDS:
              %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3
            % ABSOLUTE_BEFORE:
            % COMMANDS:

              %! baca._comment_measure_numbers()
            % [Viola.Music measure 4]
            % BEFORE:
            % COMMANDS:
              %! baca.OverrideCommand._call(1)
              %! baca.note_head_style_harmonic()
            \override NoteHead.style = #'harmonic
              %! FERMATA_MEASURE_NEXT_BAR_EXTENT
              %! baca._style_fermata_measures(4)
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
              %! baca._style_fermata_measures(3)
            \stopStaff
              %! baca._style_fermata_measures(3)
            \once \override Staff.StaffSymbol.line-count = 5
              %! baca._style_fermata_measures(3)
            \startStaff
            % OPENING:
            % COMMANDS:
              %! abjad.on_beat_grace_container(2)
            \slash
              %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                bf
                cs''!
            >8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % START_BEAM:
            [
            % SPANNER_STARTS:
            (
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            ctqs''!8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            d''8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            c''8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % SPANNER_STOPS:
            )
            % STOP_BEAM:
            ]
            % COMMANDS:
              %! baca.OverrideCommand._call(2)
              %! baca.note_head_style_harmonic()
            \revert NoteHead.style
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        \context Voice = "Viola.Music"
          %! baca.path.extern()
        { \number.7.Viola.Music.count.2 }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    >>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 5]
      %! ONE_VOICE_COMMAND
      %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
    \oneVoice
      %! harmony.make_sixteenths()
    bf4
    % AFTER:
    % SPANNER_STARTS:
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
      %! harmony.make_sixteenths()
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_sixteenths()
    \times 6/5
      %! harmony.make_sixteenths()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        bf8
        % AFTER:
        % SPANNER_STARTS:
        \repeatTie
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        bf!4
        % AFTER:
        % ARTICULATIONS:
          %! baca.IndicatorCommand._call()
          %! baca.espressivo()
        - \espressivo
        % SPANNER_STARTS:
          %! AUTODETECT
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \tweak bound-details.right.padding 2.75
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \tweak staff-padding 5.5
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \abjad-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        \bacaStartTextSpanMetricModulation
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        bf!4
        % AFTER:
        % ARTICULATIONS:
          %! baca.IndicatorCommand._call()
          %! baca.espressivo()
        - \espressivo
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 6]
      %! harmony.make_sixteenths()
    bf!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    bf!2.
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \pp
    % SPANNER_STOPS:
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner()
    \bacaStopTextSpanMetricModulation
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \!
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.text_spanner()
    \stopTextSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 7]
      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    cs'!1
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \mf
    % SPANNER_STARTS:
      %! AUTODETECT
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \tweak bound-details.right.padding 3.25
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \tweak staff-padding 3
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \abjad-dashed-line-with-hook
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \baca-text-spanner-left-text "XFB"
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    \bacaStartTextSpanBowSpeed
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
      %! abjad.glissando(7)
      %! baca.glissando()
    \glissando
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.glissando(1)
      %! baca.glissando()
    \hide NoteHead
      %! abjad.glissando(1)
      %! baca.glissando()
    \override Accidental.stencil = ##f
      %! abjad.glissando(1)
      %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t
      %! abjad.glissando(1)
      %! baca.glissando()
    \override NoteHead.no-ledgers = ##t
      %! harmony.make_sixteenths()
    cs'!4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 8]
    % OPENING:
    % COMMANDS:
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert Accidental.stencil
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert NoteColumn.glissando-skip
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert NoteHead.no-ledgers
      %! abjad.glissando(6)
      %! baca.glissando()
    \undo \hide NoteHead
      %! harmony.make_sixteenths()
    cs'!1
    % AFTER:
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! ANCHOR_NOTE
      %! baca._comment_measure_numbers()
      %! baca._style_anchor_notes()
    % [Viola.Music anchor note]
    % BEFORE:
    % COMMANDS:
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COMMAND
      %! NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(3)
    %@% \abjad-invisible-music
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COLORING
      %! NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(2)
    \abjad-invisible-music-coloring
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! NOT_YET_PITCHED_COLORING
      %! baca._color_not_yet_pitched()
      %! baca._style_anchor_notes()
    \baca-not-yet-pitched-coloring
    % OPENING:
    % COMMANDS:
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(5)
    \once \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \stopStaff
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \once \override Staff.StaffSymbol.transparent = ##t
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \startStaff
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! baca.append_anchor_note(1)
    c'1 * 1/4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! ANCHOR_NOTE
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca._style_anchor_notes()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! ANCHOR_NOTE
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca._style_anchor_notes()
      %! baca.hairpin()
    \!
    % MARKUP:
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
      %! baca._label_duration_multipliers()
      %! baca._style_anchor_notes()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % SPANNER_STOPS:
      %! ANCHOR_NOTE
      %! BOW_SPEED_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca._style_anchor_notes()
      %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Viola.Music_Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! NOT_TOPMOST
      %! baca.make_global_context()
%%% \context GlobalRests = "Rests"
      %! NOT_TOPMOST
      %! baca.make_global_context()
      %! baca.path.extern()
%%% { \number.7.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Viola.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.7.Viola.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.7.Cello.1.Music.count.1 = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.on_beat_grace_container(4)
    \voiceTwo
      %! harmony.make_appoggiato_rhythm()
    bf!4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \baca-mp-pp
    % SPANNER_STARTS:
      %! AUTODETECT
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak bound-details.right.padding 2.75
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak direction #down
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 9
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-up-hook
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-markup \harmony-b-flat-sounds-ottava-higher-markup
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Cello.1.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
      %! baca._clone_section_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-vc-i-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \stopStaff
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \clef "treble"
      %! REAPPLIED_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    e'1 * 15/16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \f
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"15" #"16"
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Cello”)"
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Vc. I”]"
    % SPANNER_STARTS:
      %! BOW_SPEED_SPANNER
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \tweak bound-details.right.padding -1.5
      %! BOW_SPEED_SPANNER
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \tweak staff-padding 3.5
      %! BOW_SPEED_SPANNER
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \abjad-dashed-line-with-hook
      %! BOW_SPEED_SPANNER
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \baca-text-spanner-left-text "scr."
      %! BOW_SPEED_SPANNER
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    \bacaStartTextSpanBowSpeed
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
      %! harmony.make_sixteenths()
    \repeatTie
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! REAPPLIED_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! INVISIBLE_MUSIC_COMMAND
      %! harmony.make_sixteenths()
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
      %! harmony.make_sixteenths()
    \abjad-invisible-music-coloring
      %! harmony.make_sixteenths()
    e'16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \!
    % SPANNER_STOPS:
      %! BOW_SPEED_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 2]
    <c'' df''! ef''!>2.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \p
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak padding 1.5
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-quasi-bisb-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 3]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca._make_mmrests_flat()
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        \context Voice = "On_Beat_Grace_Container"
        {
        % OPENING:
            % COMMANDS:
              %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3
            % ABSOLUTE_BEFORE:
            % COMMANDS:

              %! baca._comment_measure_numbers()
            % [Cello.1.Music measure 4]
            % BEFORE:
            % COMMANDS:
              %! baca.OverrideCommand._call(1)
              %! baca.note_head_style_harmonic()
            \override NoteHead.style = #'harmonic
              %! baca._style_fermata_measures(3)
            \stopStaff
              %! baca._style_fermata_measures(3)
            \once \override Staff.StaffSymbol.line-count = 5
              %! baca._style_fermata_measures(3)
            \startStaff
            % OPENING:
            % COMMANDS:
              %! abjad.on_beat_grace_container(2)
            \slash
              %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                bf
                ctqs''!
            >8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % START_BEAM:
            [
            % SPANNER_STARTS:
            (
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            d''8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            c''8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            d''8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % SPANNER_STOPS:
            )
            % STOP_BEAM:
            ]
            % COMMANDS:
              %! baca.OverrideCommand._call(2)
              %! baca.note_head_style_harmonic()
            \revert NoteHead.style
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        \context Voice = "Cello.1.Music"
          %! baca.path.extern()
        { \number.7.Cello.1.Music.count.1 }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    >>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! abjad.on_beat_grace_container(5)
    \oneVoice
      %! harmony.make_appoggiato_rhythm()
    bf!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_appoggiato_rhythm()
    bf!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_appoggiato_rhythm()
    bf!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 5]
      %! harmony.make_appoggiato_rhythm()
    bf!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_appoggiato_rhythm()
    bf!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_appoggiato_rhythm()
    bf!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_appoggiato_rhythm()
    bf!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 6]
      %! harmony.make_sixteenths()
    r16
    % AFTER:
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.text_spanner()
    \stopTextSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    e'16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \f
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % SPANNER_STARTS:
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \tweak staff-padding 3
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \abjad-dashed-line-with-hook
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \baca-text-spanner-left-text "scr."
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    \bacaStartTextSpanBowSpeed
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    e'16
    % AFTER:
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r16
    % AFTER:
    % SPANNER_STOPS:
      %! BOW_SPEED_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 7]
      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    b'2
    % AFTER:
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.stop_on_string()
    - \baca-stop-on-string
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \ff
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 8]
      %! harmony.make_sixteenths()
    bf'!4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \pp
    % SPANNER_STARTS:
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_sixteenths()
    \times 3/5
      %! harmony.make_sixteenths()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        bf'4
        % AFTER:
        % SPANNER_STARTS:
        \repeatTie
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        bf'!4
        % AFTER:
        % ARTICULATIONS:
          %! baca.IndicatorCommand._call()
          %! baca.espressivo()
        - \espressivo
        % SPANNER_STARTS:
          %! AUTODETECT
          %! METRIC_MODULATION_SPANNER
          %! RIGHT_BROKEN
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
          %! METRIC_MODULATION_SPANNER
          %! RIGHT_BROKEN
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \tweak bound-details.right.padding 3.25
          %! METRIC_MODULATION_SPANNER
          %! RIGHT_BROKEN
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \tweak staff-padding 5.5
          %! METRIC_MODULATION_SPANNER
          %! RIGHT_BROKEN
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \abjad-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! RIGHT_BROKEN
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! RIGHT_BROKEN
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner()
        \bacaStartTextSpanMetricModulation
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        bf'!4
        % AFTER:
        % ARTICULATIONS:
          %! baca.IndicatorCommand._call()
          %! baca.espressivo()
        - \espressivo
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        bf'!4
        % AFTER:
        % ARTICULATIONS:
          %! baca.IndicatorCommand._call()
          %! baca.espressivo()
        - \espressivo
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        bf'!4
        % AFTER:
        % ARTICULATIONS:
          %! baca.IndicatorCommand._call()
          %! baca.espressivo()
        - \espressivo
        % COMMANDS:
          %! baca.OverrideCommand._call(2)
          %! baca.dls_staff_padding()
        \revert DynamicLineSpanner.staff-padding
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! ANCHOR_NOTE
      %! baca._comment_measure_numbers()
      %! baca._style_anchor_notes()
    % [Cello.1.Music anchor note]
    % BEFORE:
    % COMMANDS:
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COMMAND
      %! NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(3)
    %@% \abjad-invisible-music
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COLORING
      %! NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(2)
    \abjad-invisible-music-coloring
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! NOT_YET_PITCHED_COLORING
      %! baca._color_not_yet_pitched()
      %! baca._style_anchor_notes()
    \baca-not-yet-pitched-coloring
    % OPENING:
    % COMMANDS:
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(5)
    \once \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \stopStaff
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \once \override Staff.StaffSymbol.transparent = ##t
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \startStaff
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! baca.append_anchor_note(1)
    b'1 * 1/4
    % AFTER:
    % MARKUP:
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
      %! baca._label_duration_multipliers()
      %! baca._style_anchor_notes()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % SPANNER_STOPS:
      %! ANCHOR_NOTE
      %! METRIC_MODULATION_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca._style_anchor_notes()
      %! baca.metric_modulation_spanner()
    \bacaStopTextSpanMetricModulation
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Cello.1.Music_Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! NOT_TOPMOST
      %! baca.make_global_context()
%%% \context GlobalRests = "Rests"
      %! NOT_TOPMOST
      %! baca.make_global_context()
      %! baca.path.extern()
%%% { \number.7.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Cello.1.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.7.Cello.1.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.7.Cello.2.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_55
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_shift()
      %! baca.clef_x_extent_false()
%%% \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_55
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_extra_offset()
      %! baca.clef_shift()
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
      %! baca._clone_section_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-vc-ii-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \stopStaff
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
    \clef "bass"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    r4
    % AFTER:
    % ARTICULATIONS:
      %! REAPPLIED_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! REAPPLIED_DYNAMIC
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
    % MARKUP:
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Cello”)"
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Vc. II”]"
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    b,2.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \p
    % SPANNER_STARTS:
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak bound-details.right.padding 4
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak staff-padding 3
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \abjad-dashed-line-with-hook
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    \bacaStartTextSpanDamp
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 2]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_56
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_shift()
      %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_56
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_extra_offset()
      %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
    \clef "treble"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
    <b' c'' d''>2.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \baca-p-ancora
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak padding 1.5
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-quasi-bisb-markup
    % SPANNER_STOPS:
      %! DAMP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.damp_spanner()
    \bacaStopTextSpanDamp
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 3]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca._make_mmrests_flat()
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_58
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_shift()
      %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_58
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_extra_offset()
      %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! baca._style_fermata_measures(3)
    \stopStaff
      %! baca._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
      %! baca._style_fermata_measures(3)
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
    \clef "bass"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    b,1
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \p
    % SPANNER_STARTS:
      %! AUTODETECT
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak bound-details.right.padding 2.75
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak staff-padding 3
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \abjad-dashed-line-with-hook
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    \bacaStartTextSpanDamp
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 5]
      %! harmony.make_sixteenths()
    b,1
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 6]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_60
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_shift()
      %! baca.clef_x_extent_false()
%%% \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_60
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_extra_offset()
      %! baca.clef_shift()
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
    \clef "treble"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    r16
    % AFTER:
    % SPANNER_STOPS:
      %! DAMP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.damp_spanner()
    \bacaStopTextSpanDamp
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    eqf'!16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \f
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % SPANNER_STARTS:
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \tweak staff-padding 3
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \abjad-dashed-line-with-hook
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    - \baca-text-spanner-left-text "scr."
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner()
    \bacaStartTextSpanBowSpeed
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    eqf'16
    % AFTER:
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r16
    % AFTER:
    % SPANNER_STOPS:
      %! BOW_SPEED_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 7]
      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    dqs'!2
    % AFTER:
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak padding 1
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-eleven-a
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.stop_on_string()
    - \baca-stop-on-string
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \ff
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 8]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_62
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_shift()
      %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_62
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_extra_offset()
      %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
    \clef "bass"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! baca.make_repeat_tied_notes()
    b,1
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \p
    % SPANNER_STARTS:
      %! AUTODETECT
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak bound-details.right.padding 3.25
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak staff-padding 3
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \abjad-dashed-line-with-hook
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    \bacaStartTextSpanDamp
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! ANCHOR_NOTE
      %! baca._comment_measure_numbers()
      %! baca._style_anchor_notes()
    % [Cello.2.Music anchor note]
    % BEFORE:
    % COMMANDS:
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COMMAND
      %! NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(3)
    %@% \abjad-invisible-music
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COLORING
      %! NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(2)
    \abjad-invisible-music-coloring
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! NOT_YET_PITCHED_COLORING
      %! baca._color_not_yet_pitched()
      %! baca._style_anchor_notes()
    \baca-not-yet-pitched-coloring
    % OPENING:
    % COMMANDS:
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(5)
    \once \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \stopStaff
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \once \override Staff.StaffSymbol.transparent = ##t
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \startStaff
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! baca.append_anchor_note(1)
    d1 * 1/4
    % AFTER:
    % MARKUP:
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
      %! baca._label_duration_multipliers()
      %! baca._style_anchor_notes()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % SPANNER_STOPS:
      %! ANCHOR_NOTE
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca._style_anchor_notes()
      %! baca.damp_spanner()
    \bacaStopTextSpanDamp
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Cello.2.Music_Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! NOT_TOPMOST
      %! baca.make_global_context()
%%% \context GlobalRests = "Rests"
      %! NOT_TOPMOST
      %! baca.make_global_context()
      %! baca.path.extern()
%%% { \number.7.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Cello.2.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.7.Cello.2.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.7.Contrabass.1.Music.count.1 = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.on_beat_grace_container(4)
    \voiceTwo
    bf!1
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \baca-mp-pp
    % SPANNER_STARTS:
      %! AUTODETECT
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak bound-details.right.padding 2.75
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak direction #down
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 8
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-up-hook
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-markup \harmony-b-flat-sounds-ottava-higher-markup
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 5]
    bf1
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Contrabass.1.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
      %! baca._clone_section_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-cb-i-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \stopStaff
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \clef "bass"
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
      %! abjad.glissando(2)
      %! baca.glissando()
    \hide NoteHead
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
      %! abjad.glissando(2)
      %! baca.glissando()
    \override Accidental.stencil = ##f
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
      %! abjad.glissando(2)
      %! baca.glissando()
    \override NoteHead.no-ledgers = ##t
      %! REAPPLIED_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    e,4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \ff
    % MARKUP:
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Cb. I”]"
    % SPANNER_STARTS:
      %! LEFT_BROKEN
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \tweak bound-details.right.padding 0.5
      %! LEFT_BROKEN
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! LEFT_BROKEN
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \tweak staff-padding 3
      %! LEFT_BROKEN
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \abjad-solid-line-with-arrow
      %! LEFT_BROKEN
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \baca-text-spanner-left-text "P1"
      %! LEFT_BROKEN
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \baca-text-spanner-right-text "T1"
      %! LEFT_BROKEN
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    \bacaStartTextSpanSCP
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
      %! abjad.glissando(7)
      %! baca.glissando()
    \glissando
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! REAPPLIED_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
      %! abjad.glissando(3)
      %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t
      %! harmony.make_sixteenths()
    e,4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    e,4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert Accidental.stencil
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert NoteColumn.glissando-skip
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert NoteHead.no-ledgers
      %! abjad.glissando(6)
      %! baca.glissando()
    \undo \hide NoteHead
      %! harmony.make_sixteenths()
    e,4
    % AFTER:
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca.scp_spanner()
    \bacaStopTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 2]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_56
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_shift()
      %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_56
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_extra_offset()
      %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
    \clef "treble"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
    <c'' df''! ef''!>2.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \p
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak padding 1.5
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    ^ \baca-quasi-bisb-markup
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 3]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca._make_mmrests_flat()
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        \context Voice = "On_Beat_Grace_Container"
        {
        % OPENING:
            % COMMANDS:
              %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3
            % ABSOLUTE_BEFORE:
            % COMMANDS:

              %! baca._comment_measure_numbers()
            % [Contrabass.1.Music measure 4]
            % BEFORE:
            % COMMANDS:
              %! baca.OverrideCommand._call(1)
              %! baca.note_head_style_harmonic()
            \override NoteHead.style = #'harmonic
              %! baca._style_fermata_measures(3)
            \stopStaff
              %! baca._style_fermata_measures(3)
            \once \override Staff.StaffSymbol.line-count = 5
              %! baca._style_fermata_measures(3)
            \startStaff
            % OPENING:
            % COMMANDS:
              %! abjad.on_beat_grace_container(2)
            \slash
              %! abjad.on_beat_grace_container(3)
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                bf
                d''
            >8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % START_BEAM:
            [
            % SPANNER_STARTS:
            (
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            c''8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            d''8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            dqs''!8 * 2/5
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            % SPANNER_STOPS:
            )
            % STOP_BEAM:
            ]
            % COMMANDS:
              %! baca.OverrideCommand._call(2)
              %! baca.note_head_style_harmonic()
            \revert NoteHead.style
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        \context Voice = "Contrabass.1.Music"
          %! baca.path.extern()
        { \number.7.Contrabass.1.Music.count.1 }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    >>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 6]
      %! ONE_VOICE_COMMAND
      %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
    \oneVoice
    % BEFORE:
    % COMMANDS:
      %! MEASURE_60
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_shift()
      %! baca.clef_x_extent_false()
%%% \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_60
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_extra_offset()
      %! baca.clef_shift()
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
    \clef "bass"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! baca.make_repeated_duration_notes()
    e,4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \mf
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.text_spanner()
    \stopTextSpan
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \tweak staff-padding 3
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \baca-text-spanner-left-text "P1"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \baca-text-spanner-right-text "T1"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    \bacaStartTextSpanSCP
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
      %! abjad.glissando(7)
      %! baca.glissando()
    \glissando
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.glissando(1)
      %! baca.glissando()
    \hide NoteHead
      %! abjad.glissando(1)
      %! baca.glissando()
    \override Accidental.stencil = ##f
      %! abjad.glissando(1)
      %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t
      %! abjad.glissando(1)
      %! baca.glissando()
    \override NoteHead.no-ledgers = ##t
      %! baca.make_repeated_duration_notes()
    e,4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca.make_repeated_duration_notes()
    e,4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca.make_repeated_duration_notes()
    e,4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert Accidental.stencil
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert NoteColumn.glissando-skip
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert NoteHead.no-ledgers
      %! abjad.glissando(6)
      %! baca.glissando()
    \undo \hide NoteHead
      %! baca.make_repeated_duration_notes()
    e,4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \p
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca.scp_spanner()
    \bacaStopTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 7]
      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.note_head_style_harmonic()
    \once \override NoteHead.style = #'harmonic
      %! harmony.make_sixteenths()
    e'2
    % AFTER:
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak padding 1
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    _ \baca-string-iii-markup
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.stop_on_string()
    - \baca-stop-on-string
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \ff
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 8]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_62
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_shift()
      %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_62
      %! SHIFTED_CLEF
      %! baca.OverrideCommand._call(1)
      %! baca.clef_extra_offset()
      %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
    \clef "treble"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.clef()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    bf'!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \pp
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    bf'!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    bf'!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    bf'!4
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.espressivo()
    - \espressivo
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Contrabass.1.Music_Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! NOT_TOPMOST
      %! baca.make_global_context()
%%% \context GlobalRests = "Rests"
      %! NOT_TOPMOST
      %! baca.make_global_context()
      %! baca.path.extern()
%%% { \number.7.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Contrabass.1.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.7.Contrabass.1.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.7.Contrabass.2.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! baca._clone_section_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-cb-ii-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \stopStaff
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \clef "bass"
      %! REAPPLIED_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    r4
    % AFTER:
    % ARTICULATIONS:
      %! REAPPLIED_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! REAPPLIED_DYNAMIC
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
    % MARKUP:
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Cb. II”]"
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! REAPPLIED_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    bf!2.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \p
    % SPANNER_STARTS:
      %! AUTODETECT
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak bound-details.right.padding 3.25
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak staff-padding 3
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \abjad-dashed-line-with-hook
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    \bacaStartTextSpanDamp
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 2]
      %! harmony.make_sixteenths()
    bf2.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
          %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Contrabass.2.Music"
          %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

              %! baca._comment_measure_numbers()
            % [Contrabass.2.Music measure 3]
            % BEFORE:
            % COMMANDS:
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
              %! baca._make_multimeasure_rest_container(3)
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
              %! baca._make_multimeasure_rest_container(2)
            \abjad-invisible-music-coloring
              %! baca._style_fermata_measures(1)
            \stopStaff
              %! baca._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0
              %! baca._style_fermata_measures(1)
            \startStaff
            % GROB_OVERRIDES:
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
              %! baca._make_multimeasure_rest_container(1)
            d1 * 1/4
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % SPANNER_STOPS:
              %! DAMP_SPANNER
              %! SPANNER_STOP
              %! baca.PiecewiseCommand._call(4)
              %! baca.damp_spanner()
            \bacaStopTextSpanDamp
            % COMMANDS:
              %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
              %! baca._style_fermata_measures(2)
            \override Staff.BarLine.bar-extent = #'(0 . 2)
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
          %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
          %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Contrabass.2.Rests"
          %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

              %! baca._comment_measure_numbers()
            % [Contrabass.2.Rests measure 3]
              %! MULTIMEASURE_REST
              %! REST_VOICE
              %! baca._make_multimeasure_rest_container(5)
            R1 * 1/4
            % AFTER:
            % MARKUP:
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
              %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
          %! baca._make_multimeasure_rest_container(6)
        }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! baca._make_multimeasure_rest_container(7)
    >>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
      %! baca._style_fermata_measures(4)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! baca._style_fermata_measures(3)
    \stopStaff
      %! baca._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
      %! baca._style_fermata_measures(3)
    \startStaff
      %! harmony.make_sixteenths()
    bf!1
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \baca-p-ancora
    % SPANNER_STARTS:
      %! AUTODETECT
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak bound-details.right.padding 2.75
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak staff-padding 3
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \abjad-dashed-line-with-hook
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! DAMP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    \bacaStartTextSpanDamp
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 5]
      %! harmony.make_sixteenths()
    bf1
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 6]
      %! baca.make_repeated_duration_notes()
    e,4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \p
    % SPANNER_STOPS:
      %! DAMP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.damp_spanner()
    \bacaStopTextSpanDamp
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \tweak staff-padding 3
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \baca-text-spanner-left-text "T1"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    \bacaStartTextSpanSCP
      %! abjad.glissando(7)
      %! baca.glissando()
    \glissando
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.glissando(1)
      %! baca.glissando()
    \hide NoteHead
      %! abjad.glissando(1)
      %! baca.glissando()
    \override Accidental.stencil = ##f
      %! abjad.glissando(1)
      %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t
      %! abjad.glissando(1)
      %! baca.glissando()
    \override NoteHead.no-ledgers = ##t
      %! baca.make_repeated_duration_notes()
    e,4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca.make_repeated_duration_notes()
    e,4
    % AFTER:
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    \bacaStopTextSpanSCP
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \tweak staff-padding 3
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \baca-text-spanner-left-text "P2"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    - \baca-text-spanner-right-text "O"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca.make_repeated_duration_notes()
    e,4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert Accidental.stencil
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert NoteColumn.glissando-skip
      %! abjad.glissando(6)
      %! baca.glissando()
    \revert NoteHead.no-ledgers
      %! abjad.glissando(6)
      %! baca.glissando()
    \undo \hide NoteHead
      %! baca.make_repeated_duration_notes()
    e,4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \f
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca.scp_spanner()
    \bacaStopTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 7]
      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    a,2
    % AFTER:
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    - \tweak padding 1
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    _ \baca-string-iii-markup
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2.
    % AFTER:
    % ARTICULATIONS:
      %! baca.IndicatorCommand._call()
      %! baca.stop_on_string()
    - \baca-stop-on-string
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \ff
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 8]
      %! baca.make_repeat_tied_notes()
    bf!1
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca.IndicatorCommand._call()
      %! baca._set_status_tag()
      %! baca.dynamic()
    \p
    % SPANNER_STARTS:
      %! AUTODETECT
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak bound-details.right.padding 3.25
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak staff-padding 3
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \abjad-dashed-line-with-hook
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.damp_spanner()
    \bacaStartTextSpanDamp
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! ANCHOR_NOTE
      %! baca._comment_measure_numbers()
      %! baca._style_anchor_notes()
    % [Contrabass.2.Music anchor note]
    % BEFORE:
    % COMMANDS:
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COMMAND
      %! NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(3)
    %@% \abjad-invisible-music
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COLORING
      %! NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(2)
    \abjad-invisible-music-coloring
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! NOT_YET_PITCHED_COLORING
      %! baca._color_not_yet_pitched()
      %! baca._style_anchor_notes()
    \baca-not-yet-pitched-coloring
    % OPENING:
    % COMMANDS:
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(5)
    \once \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \stopStaff
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \once \override Staff.StaffSymbol.transparent = ##t
      %! ANCHOR_NOTE
      %! baca._style_anchor_notes()
      %! baca.append_anchor_note(4)
    \startStaff
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! baca.append_anchor_note(1)
    d1 * 1/4
    % AFTER:
    % MARKUP:
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
      %! baca._label_duration_multipliers()
      %! baca._style_anchor_notes()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % SPANNER_STOPS:
      %! ANCHOR_NOTE
      %! DAMP_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca._style_anchor_notes()
      %! baca.damp_spanner()
    \bacaStopTextSpanDamp
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.7.Contrabass.2.Music_Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! NOT_TOPMOST
      %! baca.make_global_context()
%%% \context GlobalRests = "Rests"
      %! NOT_TOPMOST
      %! baca.make_global_context()
      %! baca.path.extern()
%%% { \number.7.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Contrabass.2.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.7.Contrabass.2.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>
