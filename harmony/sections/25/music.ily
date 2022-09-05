  %! baca.path.extern()
number.25.Skips = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 1]
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_TIME_SIGNATURE_COLOR
      %! baca._attach_color_literal(2)
    \baca-time-signature-color #'blue
      %! +SECTION
      %! EMPTY_START_BAR
      %! baca._attach_nonfirst_empty_start_bar()
    \bar ""
      %! EXPLICIT_TIME_SIGNATURE
      %! baca._make_global_skips(2)
      %! baca._set_status_tag()
    \time 7/4
      %! baca._make_global_skips(1)
    s1 * 7/4
    % AFTER:
    % SPANNER_STARTS:
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #2 #3 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #2 #3 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
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
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "144"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[11'54'']"
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
    %@% - \baca-start-mn-left-only "226"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
      %! baca.label_stage_numbers()
    - \baca-start-snm-colored-left-only "[>AA.1]" #darkgreen
      %! STAGE_NUMBER
      %! baca.label_stage_numbers()
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
      %! baca.label_stage_numbers()
    \bacaStopTextSpanSNM
    % SPANNER_STARTS:
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
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
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \baca-metronome-mark-spanner-left-text-mixed-number 2 0 1 "57" "3" "5"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[11'56'']"
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
    %@% - \baca-start-mn-left-only "227"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
      %! baca.label_stage_numbers()
    - \baca-start-snm-left-only "[Y.1]"
      %! STAGE_NUMBER
      %! baca.label_stage_numbers()
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
      %! baca.label_stage_numbers()
    \bacaStopTextSpanSNM
    % SPANNER_STARTS:
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
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
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "48"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[12'03'']"
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
    %@% - \baca-start-mn-left-only "228"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
      %! baca.label_stage_numbers()
    - \baca-start-snm-colored-left-only "[<X.8]" #darkgreen
      %! STAGE_NUMBER
      %! baca.label_stage_numbers()
    \bacaStartTextSpanSNM
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
    \time 1/4
      %! baca._make_global_skips(1)
    s1 * 1/4
    % AFTER:
    % MARKUP:
      %! -PARTS
      %! baca.markup_function()
    - \tweak extra-offset #'(4 . -30)
      %! -PARTS
      %! baca.markup_function()
    ^ \harmony-text-twenty-two
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
    - \baca-start-lmn-left-only "4"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "229"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 5]
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
      %! baca.label_stage_numbers()
    \bacaStopTextSpanSNM
    % SPANNER_STARTS:
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
      %! baca._attach_metronome_marks(2.1)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
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
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% - \baca-metronome-mark-spanner-left-text-mixed-number 2 0 1 "57" "3" "5"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
      %! baca._attach_metronome_marks(2.2)
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.metronome_mark_function()
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[12'11'']"
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
    %@% - \baca-start-mn-left-only "230"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
      %! baca.label_stage_numbers()
    - \baca-start-snm-left-only "[Y.2]"
      %! STAGE_NUMBER
      %! baca.label_stage_numbers()
    \bacaStartTextSpanSNM
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 6]
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
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[12'17'']"
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
    %@% - \baca-start-mn-left-only "231"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 7]
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
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[12'23'']"
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
    %@% - \baca-start-mn-left-only "232"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 8]
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
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[12'30'']"
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
    %@% - \baca-start-mn-left-only "233"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 9]
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
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[12'36'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "9"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "234"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 10]
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
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[12'42'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "10"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "235"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Skips measure 11]
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
      %! baca.markup_function()
    - \tweak extra-offset #'(4 . -30)
      %! -PARTS
      %! baca.markup_function()
    ^ \harmony-text-twenty-three
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
    %@% - \baca-start-ct-both-left-fermata "2''" "[12'50'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "11"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "236"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! ANCHOR_SKIP
      %! baca._comment_measure_numbers()
      %! baca._style_anchor_skip(1)
    % [anchor skip]
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
      %! baca._style_anchor_skip(1)
      %! baca.label_stage_numbers()
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
number.25.Rests = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 1]
      %! baca._make_global_rests(1)
    R1 * 7/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 2]
      %! baca._make_global_rests(1)
    R1 * 6/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 3]
      %! baca._make_global_rests(1)
    R1 * 5/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 4]
    % BEFORE:
    % GROB_OVERRIDES:
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    % OPENING:
    % COMMANDS:
      %! baca.global_fermata_function(2)
    \baca-fermata-measure
      %! baca._make_global_rests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! baca.global_fermata_function(1)
    ^ \baca-fermata-markup
    % COMMANDS:
      %! FERMATA_MEASURE
      %! MEASURE_229
      %! baca._style_fermata_measures(7)
%%% \once \override Score.BarLine.transparent = ##t
      %! FERMATA_MEASURE
      %! MEASURE_229
      %! baca._style_fermata_measures(7)
%%% \once \override Score.SpanBar.transparent = ##t
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 5]
      %! baca._make_global_rests(1)
    R1 * 6/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 6]
      %! baca._make_global_rests(1)
    R1 * 6/4
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
    R1 * 6/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 9]
      %! baca._make_global_rests(1)
    R1 * 6/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 10]
      %! baca._make_global_rests(1)
    R1 * 6/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Rests measure 11]
    % BEFORE:
    % GROB_OVERRIDES:
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    % OPENING:
    % COMMANDS:
      %! baca.global_fermata_function(2)
    \baca-fermata-measure
      %! baca._make_global_rests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! baca.global_fermata_function(1)
    ^ \baca-fermata-markup
    % COMMANDS:
      %! FERMATA_MEASURE
      %! MEASURE_236
      %! baca._style_fermata_measures(7)
    \once \override Score.BarLine.transparent = ##t
      %! FERMATA_MEASURE
      %! MEASURE_236
      %! baca._style_fermata_measures(7)
    \once \override Score.SpanBar.transparent = ##t
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! baca.make_global_context()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.25.BassFlute.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [BassFlute.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! baca.dls_staff_padding_function(1)
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
      %! baca.make_mmrests(1)
    R1 * 7/4
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
    %@% ^ \baca-duration-multiplier-markup #"7" #"4"
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-instrument-markup "(“BassFlute”)"
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
    \set Staff.shortInstrumentName = \harmony-bfl-markup %@%
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [BassFlute.Music measure 2]
      %! harmony.make_warble_rhythm()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_warble_rhythm()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_warble_rhythm()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_warble_rhythm()
    \times 8/9
      %! harmony.make_warble_rhythm()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        r32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % BEFORE:
        % COMMANDS:
          %! baca.accidental_x_offset_function(1)
        \override Accidental.X-offset = 0
          %! baca.accidental_y_offset_function(1)
        \override Accidental.Y-offset = -2
          %! baca.accidental_font_size_function(1)
        \override Accidental.font-size = -3
          %! baca.note_head_font_size_function(1)
        \override NoteHead.font-size = -3
          %! harmony.make_warble_rhythm()
        c''32
        % AFTER:
        % START_BEAM:
          %! harmony.make_warble_rhythm()
        [
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \<
        % TRILL_SPANNER_STARTS:
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        \startTrillSpan
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \mp
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \>
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \!
        % STOP_BEAM:
          %! harmony.make_warble_rhythm()
        ]
        % COMMANDS:
          %! baca.accidental_x_offset_function(2)
        \revert Accidental.X-offset
          %! baca.accidental_y_offset_function(2)
        \revert Accidental.Y-offset
          %! baca.accidental_font_size_function(2)
        \revert Accidental.font-size
          %! baca.note_head_font_size_function(2)
        \revert NoteHead.font-size
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_warble_rhythm()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [BassFlute.Music measure 3]
      %! harmony.make_sixteenths()
    r8
    % AFTER:
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca._do_spanner_indicator_command(2)
      %! baca.trill_spanner_function()
    \stopTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs'''!8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \!
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \tweak staff-padding 10
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    \startTextSpan
    % TRILL_SPANNER_STARTS:
      %! SPANNER_START
      %! baca._do_spanner_indicator_command(1)
      %! baca.trill_spanner_function()
    - \tweak staff-padding 3
      %! SPANNER_START
      %! baca._do_spanner_indicator_command(1)
      %! baca.trill_spanner_function()
    \startTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs'''!8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \p
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    \stopTextSpan
    % SPANNER_STARTS:
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \tweak staff-padding 10
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    \startTextSpan
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
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
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \!
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca.text_spanner_function()
    \stopTextSpan
      %! SPANNER_STOP
      %! baca._do_spanner_indicator_command(2)
      %! baca.trill_spanner_function()
    \stopTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs'''!8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \!
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \tweak staff-padding 10
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    \startTextSpan
    % TRILL_SPANNER_STARTS:
      %! SPANNER_START
      %! baca._do_spanner_indicator_command(1)
      %! baca.trill_spanner_function()
    - \tweak staff-padding 3
      %! SPANNER_START
      %! baca._do_spanner_indicator_command(1)
      %! baca.trill_spanner_function()
    \startTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs'''!8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \p
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    \stopTextSpan
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \tweak staff-padding 10
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    \startTextSpan
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
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
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \!
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca.text_spanner_function()
    \stopTextSpan
      %! SPANNER_STOP
      %! baca._do_spanner_indicator_command(2)
      %! baca.trill_spanner_function()
    \stopTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs'''!8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \!
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \tweak staff-padding 10
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    \startTextSpan
    % TRILL_SPANNER_STARTS:
      %! SPANNER_START
      %! baca._do_spanner_indicator_command(1)
      %! baca.trill_spanner_function()
    - \tweak staff-padding 3
      %! SPANNER_START
      %! baca._do_spanner_indicator_command(1)
      %! baca.trill_spanner_function()
    \startTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs'''!8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \p
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    \stopTextSpan
    % SPANNER_STARTS:
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \tweak staff-padding 10
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
    \startTextSpan
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
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
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \!
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca.text_spanner_function()
    \stopTextSpan
      %! SPANNER_STOP
      %! baca._do_spanner_indicator_command(2)
      %! baca.trill_spanner_function()
    \stopTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [BassFlute.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % COMMANDS:
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
      %! baca._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(0 . 0)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_warble_rhythm()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_warble_rhythm()
    \times 12/14
      %! harmony.make_warble_rhythm()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! baca._comment_measure_numbers()
        % [BassFlute.Music measure 5]
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
          %! harmony.make_warble_rhythm()
        r32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % BEFORE:
        % COMMANDS:
          %! baca.accidental_x_offset_function(1)
        \override Accidental.X-offset = 0
          %! baca.accidental_y_offset_function(1)
        \override Accidental.Y-offset = -2
          %! baca.accidental_font_size_function(1)
        \override Accidental.font-size = -3
          %! baca.note_head_font_size_function(1)
        \override NoteHead.font-size = -3
          %! harmony.make_warble_rhythm()
        b'32
        % AFTER:
        % START_BEAM:
          %! harmony.make_warble_rhythm()
        [
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \<
        % TRILL_SPANNER_STARTS:
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        \startTrillSpan
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \mp
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \>
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \!
        % STOP_BEAM:
          %! harmony.make_warble_rhythm()
        ]
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_warble_rhythm()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_warble_rhythm()
    r2.
    % AFTER:
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca._do_spanner_indicator_command(2)
      %! baca.trill_spanner_function()
    \stopTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [BassFlute.Music measure 6]
      %! harmony.make_warble_rhythm()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_warble_rhythm()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_warble_rhythm()
    \times 11/12
      %! harmony.make_warble_rhythm()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        r32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % AFTER:
        % START_BEAM:
          %! harmony.make_warble_rhythm()
        [
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \<
        % TRILL_SPANNER_STARTS:
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        \startTrillSpan
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \mp
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \>
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \!
        % STOP_BEAM:
          %! harmony.make_warble_rhythm()
        ]
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_warble_rhythm()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_warble_rhythm()
    r2.
    % AFTER:
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca._do_spanner_indicator_command(2)
      %! baca.trill_spanner_function()
    \stopTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_warble_rhythm()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_warble_rhythm()
    \times 12/14
      %! harmony.make_warble_rhythm()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! baca._comment_measure_numbers()
        % [BassFlute.Music measure 7]
          %! harmony.make_warble_rhythm()
        r32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % AFTER:
        % START_BEAM:
          %! harmony.make_warble_rhythm()
        [
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \<
        % TRILL_SPANNER_STARTS:
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        \startTrillSpan
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \mp
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \>
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \!
        % STOP_BEAM:
          %! harmony.make_warble_rhythm()
        ]
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_warble_rhythm()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_warble_rhythm()
    r2.
    % AFTER:
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca._do_spanner_indicator_command(2)
      %! baca.trill_spanner_function()
    \stopTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [BassFlute.Music measure 8]
      %! harmony.make_warble_rhythm()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_warble_rhythm()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_warble_rhythm()
    \times 11/12
      %! harmony.make_warble_rhythm()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        r32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % AFTER:
        % START_BEAM:
          %! harmony.make_warble_rhythm()
        [
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \<
        % TRILL_SPANNER_STARTS:
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        \startTrillSpan
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \mp
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \>
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \!
        % STOP_BEAM:
          %! harmony.make_warble_rhythm()
        ]
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_warble_rhythm()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_warble_rhythm()
    r2.
    % AFTER:
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca._do_spanner_indicator_command(2)
      %! baca.trill_spanner_function()
    \stopTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_warble_rhythm()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_warble_rhythm()
    \times 12/14
      %! harmony.make_warble_rhythm()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! baca._comment_measure_numbers()
        % [BassFlute.Music measure 9]
          %! harmony.make_warble_rhythm()
        r32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % AFTER:
        % START_BEAM:
          %! harmony.make_warble_rhythm()
        [
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \<
        % TRILL_SPANNER_STARTS:
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        \startTrillSpan
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \mp
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \>
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \!
        % STOP_BEAM:
          %! harmony.make_warble_rhythm()
        ]
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_warble_rhythm()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_warble_rhythm()
    r2.
    % AFTER:
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca._do_spanner_indicator_command(2)
      %! baca.trill_spanner_function()
    \stopTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [BassFlute.Music measure 10]
      %! harmony.make_warble_rhythm()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_warble_rhythm()
    \tweak text #tuplet-number::calc-fraction-text
      %! harmony.make_warble_rhythm()
    \times 11/12
      %! harmony.make_warble_rhythm()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        r32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % AFTER:
        % START_BEAM:
          %! harmony.make_warble_rhythm()
        [
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \<
        % TRILL_SPANNER_STARTS:
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
          %! SPANNER_START
          %! baca._do_spanner_indicator_command(1)
          %! baca.trill_spanner_function()
        \startTrillSpan
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \mp
        % SPANNER_STARTS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \>
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        as'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        cs''!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        c''32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        b'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        bf'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        a'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        af'!32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        g'32
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_warble_rhythm()
        gs'!32
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
          %! baca.PiecewiseCommand._call(3)
          %! baca._set_status_tag()
          %! baca.hairpin_function()
        \!
        % STOP_BEAM:
          %! harmony.make_warble_rhythm()
        ]
        % COMMANDS:
          %! baca.accidental_x_offset_function(2)
        \revert Accidental.X-offset
          %! baca.accidental_y_offset_function(2)
        \revert Accidental.Y-offset
          %! baca.accidental_font_size_function(2)
        \revert Accidental.font-size
          %! baca.note_head_font_size_function(2)
        \revert NoteHead.font-size
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_warble_rhythm()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_warble_rhythm()
    r2.
    % AFTER:
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca._do_spanner_indicator_command(2)
      %! baca.trill_spanner_function()
    \stopTrillSpan
    % COMMANDS:
      %! baca.dls_staff_padding_function(2)
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [BassFlute.Music measure 11]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % COMMANDS:
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
      %! baca._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(0 . 0)
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.25.BassFlute.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! baca.make_global_context()
    \context GlobalRests = "Rests"
      %! baca.make_global_context()
      %! baca.path.extern()
    { \number.25.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "BassFlute.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.25.BassFlute.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.25.Percussion.1.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! baca.dls_staff_padding_function(1)
    \override DynamicLineSpanner.staff-padding = 6
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
      %! baca._clone_section_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-perc-i-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
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
      %! baca.make_mmrests(1)
    R1 * 7/4
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
    \baca-p-sempre
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"7" #"4"
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-instrument-markup "(“Percussion”)"
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
    \set Staff.shortInstrumentName = \harmony-perc-i-markup %@%
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

          %! baca._comment_measure_numbers()
        % [Percussion.1.Music measure 2]
        % BEFORE:
        % COMMANDS:
          %! baca.tuplet_bracket_up_function(1)
        \override TupletBracket.direction = #up
          %! harmony.make_sixteenths()
        r2
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r8
        % AFTER:
        % SPANNER_STARTS:
          %! AUTODETECT
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.text_spanner_function()
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \tweak bound-details.right.padding 2.75
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \tweak staff-padding 10.5
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \abjad-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        \bacaStartTextSpanMetricModulation
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % BEFORE:
        % COMMANDS:
          %! baca.stem_down_function(1)
        \override Stem.direction = #down
          %! harmony.make_sixteenths()
        d'8.
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        - \tweak self-alignment-X -0.9
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        \baca-p-ancora
        % MARKUP:
          %! baca.markup_function()
        - \tweak staff-padding 6
          %! baca.markup_function()
        ^ \baca-slate-scrape-markup
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r8.
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        d'8.
        % AFTER:
        % COMMANDS:
          %! baca.stem_down_function(2)
        \revert Stem.direction
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r16
        % AFTER:
        % COMMANDS:
          %! baca.tuplet_bracket_up_function(2)
        \revert TupletBracket.direction
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 3]
    % BEFORE:
    % COMMANDS:
      %! baca.tuplet_bracket_up_function(1)
    \override TupletBracket.direction = #up
      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.stem_down_function(1)
    \override Stem.direction = #down
      %! harmony.make_sixteenths()
    d'8
    % AFTER:
    % SPANNER_STOPS:
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanMetricModulation
    % SPANNER_STARTS:
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    d'16
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    d'8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    d'8
    % AFTER:
    % SPANNER_STARTS:
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    d'16
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % COMMANDS:
      %! baca.stem_down_function(2)
    \revert Stem.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % AFTER:
    % COMMANDS:
      %! baca.tuplet_bracket_up_function(2)
    \revert TupletBracket.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
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
    % [Percussion.1.Music measure 5]
    % BEFORE:
    % COMMANDS:
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
      %! baca._style_fermata_measures(4)
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
      %! baca.stem_up_function(1)
    \override Stem.direction = #up
      %! baca._style_fermata_measures(3)
    \stopStaff
      %! baca._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 1
      %! baca._style_fermata_measures(3)
    \startStaff
      %! harmony.make_sixteenths()
    c'16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    \baca-f-sempre
    % MARKUP:
      %! baca.markup_function()
    - \tweak staff-padding 6
      %! baca.markup_function()
    ^ \baca-brake-drum-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 6]
      %! harmony.make_sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    c'16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 7]
      %! harmony.make_sixteenths()
    c'16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 8]
      %! harmony.make_sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    c'16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 9]
      %! harmony.make_sixteenths()
    c'16
    % AFTER:
    % COMMANDS:
      %! baca.stem_up_function(2)
    \revert Stem.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 10]
      %! harmony.make_sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.stem_up_function(1)
    \override Stem.direction = #up
      %! harmony.make_sixteenths()
    c'16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2
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
        r2.
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        c'4
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        c'4
        % AFTER:
        % COMMANDS:
          %! baca.dls_staff_padding_function(2)
        \revert DynamicLineSpanner.staff-padding
          %! baca.stem_up_function(2)
        \revert Stem.direction
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.1.Music measure 11]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
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
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.25.Percussion.1.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Percussion.1.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.25.Percussion.1.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.25.Percussion.2.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 1]
    % BEFORE:
    % COMMANDS:
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
    \once \override Staff.StaffSymbol.line-count = 3
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
    e'4
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
    %@% ^ \baca-reapplied-instrument-markup "(“Percussion”)"
    % SPANNER_STARTS:
      %! AUTODETECT
      %! LEFT_BROKEN
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.metric_modulation_spanner_function()
      %! baca.text_spanner_function()
    - \tweak bound-details.right.padding 2.75
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.metric_modulation_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 8
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.metric_modulation_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-dashed-line-with-hook
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.metric_modulation_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "MM"
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.metric_modulation_spanner_function()
      %! baca.text_spanner_function()
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
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup %@%
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2
    % AFTER:
    % SPANNER_STOPS:
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanMetricModulation
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    e'4
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

          %! baca._comment_measure_numbers()
        % [Percussion.2.Music measure 2]
        % BEFORE:
        % COMMANDS:
          %! baca.dls_staff_padding_function(1)
        \override DynamicLineSpanner.staff-padding = 6
          %! baca.tuplet_bracket_up_function(1)
        \override TupletBracket.direction = #up
          %! EXPLICIT_STAFF_LINES
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.staff_lines_function(2)
        \stopStaff
          %! EXPLICIT_STAFF_LINES
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.staff_lines_function(2)
        \once \override Staff.StaffSymbol.line-count = 1
          %! EXPLICIT_STAFF_LINES
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.staff_lines_function(2)
        \startStaff
        % OPENING:
        % COMMANDS:
          %! EXPLICIT_STAFF_LINES_COLOR
          %! baca._attach_color_literal(2)
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
          %! harmony.make_sixteenths()
        r2
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r8
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % BEFORE:
        % COMMANDS:
          %! baca.stem_down_function(1)
        \override Stem.direction = #down
          %! harmony.make_sixteenths()
        c'2
        % AFTER:
        % STEM_TREMOLOS:
          %! baca.stem_tremolo_function()
        :32
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        \p
        % MARKUP:
          %! baca.markup_function()
        - \tweak staff-padding 6
          %! baca.markup_function()
        ^ \baca-tam-tam-markup
        % SPANNER_STARTS:
          %! abjad.glissando(7)
          %! baca.glissando_function()
        \glissando
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPENING:
        % COMMANDS:
          %! abjad.glissando(1)
          %! baca.glissando_function()
        \hide NoteHead
          %! abjad.glissando(1)
          %! baca.glissando_function()
        \override Accidental.stencil = ##f
          %! abjad.glissando(1)
          %! baca.glissando_function()
        \override NoteColumn.glissando-skip = ##t
          %! abjad.glissando(1)
          %! baca.glissando_function()
        \override NoteHead.no-ledgers = ##t
          %! harmony.make_sixteenths()
        c'8
        % AFTER:
        % STEM_TREMOLOS:
          %! baca.stem_tremolo_function()
        :32
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! baca._comment_measure_numbers()
        % [Percussion.2.Music measure 3]
        % OPENING:
        % COMMANDS:
          %! abjad.glissando(6)
          %! baca.glissando_function()
        \revert Accidental.stencil
          %! abjad.glissando(6)
          %! baca.glissando_function()
        \revert NoteColumn.glissando-skip
          %! abjad.glissando(6)
          %! baca.glissando_function()
        \revert NoteHead.no-ledgers
          %! abjad.glissando(6)
          %! baca.glissando_function()
        \undo \hide NoteHead
        c'1
        % AFTER:
        % STEM_TREMOLOS:
          %! baca.stem_tremolo_function()
        :32
        % COMMANDS:
          %! baca.stem_down_function(2)
        \revert Stem.direction
          %! baca.tuplet_bracket_up_function(2)
        \revert TupletBracket.direction
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 5]
    % BEFORE:
    % COMMANDS:
      %! baca.stem_down_function(1)
    \override Stem.direction = #down
      %! baca.tuplet_bracket_up_function(1)
    \override TupletBracket.direction = #up
      %! baca._style_fermata_measures(3)
    \stopStaff
      %! baca._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 1
      %! baca._style_fermata_measures(3)
    \startStaff
      %! harmony.make_sixteenths()
    d'8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \f
    % MARKUP:
      %! baca.markup_function()
    - \tweak staff-padding 6
      %! baca.markup_function()
    ^ \baca-slate-brush-markup
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
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
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \!
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 6]
      %! harmony.make_sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    d'16
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \f
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    d'16
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \!
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 7]
      %! harmony.make_sixteenths()
    d'8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \f
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
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
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \!
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 8]
      %! harmony.make_sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    d'16
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \f
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    d'16
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \!
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 9]
      %! harmony.make_sixteenths()
    d'8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \f
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % COMMANDS:
      %! baca.stem_down_function(2)
    \revert Stem.direction
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
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \!
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % AFTER:
    % COMMANDS:
      %! baca.tuplet_bracket_up_function(2)
    \revert TupletBracket.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 10]
    % BEFORE:
    % COMMANDS:
      %! baca.tuplet_bracket_up_function(1)
    \override TupletBracket.direction = #up
      %! harmony.make_sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.stem_down_function(1)
    \override Stem.direction = #down
      %! harmony.make_sixteenths()
    d'16
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \f
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    d'16
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \!
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2
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
        r2.
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        d'4
        % AFTER:
        % MARKUP:
          %! baca.markup_function()
        - \tweak self-alignment-X 0
          %! baca.markup_function()
        - \tweak staff-padding 6
          %! baca.markup_function()
        ^ \baca-slate-scrape-markup
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        d'4
        % AFTER:
        % COMMANDS:
          %! baca.dls_staff_padding_function(2)
        \revert DynamicLineSpanner.staff-padding
          %! baca.stem_down_function(2)
        \revert Stem.direction
          %! baca.tuplet_bracket_up_function(2)
        \revert TupletBracket.direction
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Percussion.2.Music measure 11]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.25.Percussion.2.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Percussion.2.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.25.Percussion.2.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.25.Harp.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_226
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
%%% \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_226
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! baca.dls_staff_padding_function(1)
    \override DynamicLineSpanner.staff-padding = 4
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.staff_lines_function(1)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! baca._clone_section_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-hp-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \set Staff.shortInstrumentName = \harmony-hp-markup
      %! EXPLICIT_STAFF_LINES
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.staff_lines_function(2)
    \stopStaff
      %! EXPLICIT_STAFF_LINES
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.staff_lines_function(2)
    \once \override Staff.StaffSymbol.line-count = 5
      %! EXPLICIT_STAFF_LINES
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.staff_lines_function(2)
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "treble"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
      %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! EXPLICIT_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
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
    \baca-p-sempre
    % MARKUP:
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-instrument-markup "(“Harp”)"
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
    \set Staff.shortInstrumentName = \harmony-hp-markup %@%
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    af'!4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    \mp
      %! baca.laissez_vibrer_function()
    \laissezVibrer
    % MARKUP:
      %! baca.markup_function()
    - \tweak staff-padding 6
      %! baca.markup_function()
    ^ \baca-pince-markup
    % COMMANDS:
      %! baca.dls_staff_padding_function(2)
    \revert DynamicLineSpanner.staff-padding
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

          %! baca._comment_measure_numbers()
        % [Harp.Music measure 2]
        % BEFORE:
        % COMMANDS:
          %! baca.tuplet_bracket_up_function(1)
        \override TupletBracket.direction = #up
          %! harmony.make_sixteenths()
        r2
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r8
        % AFTER:
        % SPANNER_STARTS:
          %! AUTODETECT
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.text_spanner_function()
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \tweak bound-details.right.padding 2.75
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \tweak staff-padding 10.5
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \abjad-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        \bacaStartTextSpanMetricModulation
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % BEFORE:
        % COMMANDS:
          %! baca.dls_staff_padding_function(1)
        \once \override DynamicLineSpanner.staff-padding = 6
          %! baca.stem_down_function(1)
        \override Stem.direction = #down
          %! EXPLICIT_STAFF_LINES
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.staff_lines_function(2)
        \stopStaff
          %! EXPLICIT_STAFF_LINES
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.staff_lines_function(2)
        \once \override Staff.StaffSymbol.line-count = 1
          %! EXPLICIT_STAFF_LINES
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.staff_lines_function(2)
        \startStaff
        % OPENING:
        % COMMANDS:
          %! EXPLICIT_CLEF
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.clef_function()
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
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.clef_function()
          %! baca.treat_persistent_wrapper(2)
        \set Staff.forceClef = ##t
          %! harmony.make_sixteenths()
        c'8.
        % AFTER:
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        \p
        % MARKUP:
          %! baca.markup_function()
        - \tweak staff-padding 8
          %! baca.markup_function()
        ^ \baca-whisk-markup
        % COMMANDS:
          %! -PARTS
          %! EXPLICIT_BAR_EXTENT
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.staff_lines_function(1)
        \override Staff.BarLine.bar-extent = #'(0 . 2)
        % ABSOLUTE_AFTER:
        % COMMANDS:
          %! EXPLICIT_CLEF_REDRAW_COLOR
          %! baca._attach_color_literal(2)
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r8.
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        c'8.
        % ABSOLUTE_BEFORE:
        % COMMANDS:

          %! harmony.make_sixteenths()
        r16
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! harmony.make_sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 3]
      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    c'8
    % AFTER:
    % SPANNER_STOPS:
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanMetricModulation
    % SPANNER_STARTS:
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    c'16
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    c'8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    c'8
    % AFTER:
    % SPANNER_STARTS:
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    c'16
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % COMMANDS:
      %! baca.stem_down_function(2)
    \revert Stem.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r8.
    % AFTER:
    % COMMANDS:
      %! baca.tuplet_bracket_up_function(2)
    \revert TupletBracket.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % COMMANDS:
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
      %! baca._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 5]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_230
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_230
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! baca.dls_staff_padding_function(1)
    \override DynamicLineSpanner.staff-padding = 7
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.staff_lines_function(1)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! EXPLICIT_STAFF_LINES
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.staff_lines_function(2)
    \stopStaff
      %! EXPLICIT_STAFF_LINES
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.staff_lines_function(2)
    \once \override Staff.StaffSymbol.line-count = 5
      %! EXPLICIT_STAFF_LINES
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.staff_lines_function(2)
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "bass"
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
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    r1.
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 6]
      %! harmony.make_sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    g,,8.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    \baca-f-sempre
      %! baca.laissez_vibrer_function()
    \laissezVibrer
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 7]
      %! harmony.make_sixteenths()
    r1.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 8]
      %! harmony.make_sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    g,,8.
    % AFTER:
    % ARTICULATIONS:
      %! baca.laissez_vibrer_function()
    \laissezVibrer
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 9]
      %! harmony.make_sixteenths()
    r1.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 10]
      %! harmony.make_sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    g,,8.
    % AFTER:
    % ARTICULATIONS:
      %! baca.laissez_vibrer_function()
    \laissezVibrer
    % MARKUP:
      %! baca.markup_function()
    ^ \baca-lv-into-fermata-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    r4
    % AFTER:
    % COMMANDS:
      %! baca.dls_staff_padding_function(2)
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Harp.Music measure 11]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % COMMANDS:
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
      %! baca._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.25.Harp.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Harp.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.25.Harp.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.25.Viola.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! baca.dls_staff_padding_function(1)
    \override DynamicLineSpanner.staff-padding = 4
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
      %! baca.make_notes()
    af'!1..
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    \mp
    % MARKUP:
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-instrument-markup "(“Viola”)"
    % SPANNER_STARTS:
      %! AUTODETECT
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner_function()
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner_function()
      %! baca.text_spanner_function()
    - \tweak bound-details.right.padding 2.75
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 3
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-dashed-line-with-hook
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "XFB"
      %! BOW_SPEED_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.bow_speed_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanBowSpeed
      %! abjad.glissando(7)
      %! baca.glissando_function()
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
    \set Staff.shortInstrumentName = \harmony-va-markup %@%
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 2]
    % OPENING:
    % COMMANDS:
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \hide NoteHead
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override Accidental.stencil = ##f
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override NoteColumn.glissando-skip = ##t
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override NoteHead.no-ledgers = ##t
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert Accidental.stencil
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert NoteColumn.glissando-skip
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert NoteHead.no-ledgers
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \undo \hide NoteHead
      %! baca.make_notes()
    af'!1.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 3]
      %! harmony.make_sixteenths()
    fs!4
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    \f
    % SPANNER_STOPS:
      %! BOW_SPEED_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.bow_speed_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanBowSpeed
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "P2"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
      %! abjad.glissando(7)
      %! baca.glissando_function()
    \glissando
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \hide NoteHead
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override Accidental.stencil = ##f
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override NoteColumn.glissando-skip = ##t
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override NoteHead.no-ledgers = ##t
      %! harmony.make_sixteenths()
    fs!8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs!8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "P1"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs!16
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs!8.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "P3"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-right-text "P2"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert Accidental.stencil
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert NoteColumn.glissando-skip
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert NoteHead.no-ledgers
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \undo \hide NoteHead
      %! harmony.make_sixteenths()
    fs!2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
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
    % [Viola.Music measure 5]
    % BEFORE:
    % COMMANDS:
      %! baca.note_head_style_harmonic_black_function(1)
    \override NoteHead.style = #'harmonic-black
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
      %! baca._style_fermata_measures(4)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! baca._style_fermata_measures(3)
    \stopStaff
      %! baca._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
      %! baca._style_fermata_measures(3)
    \startStaff
    <g' af'! bf'!>1.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \pp
    % MARKUP:
      %! baca.markup_function()
    ^ \baca-quasi-bisb-markup
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 6]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
      %! baca.note_head_transparent_function(1)
    \override NoteHead.transparent = ##t
    c'8.
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mp
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8.
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \p
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mf
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 7]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 8]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mp
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \baca-f-scratch
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 9]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mf
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 10]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \baca-ff-scratch
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % COMMANDS:
      %! baca.note_head_transparent_function(2)
    \revert NoteHead.transparent
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    <g' af'! bf'!>2.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % COMMANDS:
      %! baca.dls_staff_padding_function(2)
    \revert DynamicLineSpanner.staff-padding
      %! baca.note_head_style_harmonic_black_function(2)
    \revert NoteHead.style
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Viola.Music measure 11]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
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
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.25.Viola.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Viola.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.25.Viola.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.25.Cello.1.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_226
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
%%% \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_226
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! baca.dls_staff_padding_function(1)
    \override DynamicLineSpanner.staff-padding = 4
      %! baca.tuplet_bracket_up_function(1)
    \override TupletBracket.direction = #up
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
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "treble"
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
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! baca.make_skeleton()
    r1
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
    \f
    % MARKUP:
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-instrument-markup "(“Cello”)"
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
    \set Staff.shortInstrumentName = \harmony-vc-i-markup %@%
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca.make_skeleton()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! baca.make_skeleton()
    \tweak text #tuplet-number::calc-fraction-text
      %! baca.make_skeleton()
    \times 5/4
      %! baca.make_skeleton()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        <a' b' c''>2
        % AFTER:
        % STEM_TREMOLOS:
          %! baca.stem_tremolo_function()
        :32
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        \pp
        % MARKUP:
          %! baca.markup_function()
        ^ \baca-quasi-bisb-markup
        % SPANNER_STARTS:
          %! AUTODETECT
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.text_spanner_function()
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \tweak bound-details.right.padding 2.75
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \tweak staff-padding 8
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \abjad-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        \bacaStartTextSpanMetricModulation
        % COMMANDS:
          %! baca.tuplet_bracket_up_function(2)
        \revert TupletBracket.direction
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! baca.make_skeleton()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 2]
    <a' b' c''>1.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 3]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_228
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_228
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "bass"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    fs,!4
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    \f
    % SPANNER_STOPS:
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanMetricModulation
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "P2"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
      %! abjad.glissando(7)
      %! baca.glissando_function()
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
      %! baca.glissando_function()
    \hide NoteHead
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override Accidental.stencil = ##f
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override NoteColumn.glissando-skip = ##t
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override NoteHead.no-ledgers = ##t
      %! harmony.make_sixteenths()
    fs,!8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "O"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs,!8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "P2"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs,!4
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs,!16
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs,!8.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "P1"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-right-text "P3"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert Accidental.stencil
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert NoteColumn.glissando-skip
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert NoteHead.no-ledgers
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \undo \hide NoteHead
      %! harmony.make_sixteenths()
    fs,!4
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 5]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
      %! MEASURE_230
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_230
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! baca.note_head_style_harmonic_black_function(1)
    \override NoteHead.style = #'harmonic-black
      %! baca._style_fermata_measures(3)
    \stopStaff
      %! baca._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
      %! baca._style_fermata_measures(3)
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "treble"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
    <a' b' c''>4
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \pp
    % MARKUP:
      %! baca.markup_function()
    ^ \baca-quasi-bisb-markup
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
      %! baca.note_head_transparent_function(1)
    \override NoteHead.transparent = ##t
    c'8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mp
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 6]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'2.
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8.
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \p
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8.
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mf
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 7]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'4
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'2.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mp
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \baca-f-scratch
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 8]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mf
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 9]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'8.
    % AFTER:
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 10]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c'16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \baca-ff-scratch
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % COMMANDS:
      %! baca.note_head_transparent_function(2)
    \revert NoteHead.transparent
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    <a' b' c''>8.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % COMMANDS:
      %! baca.dls_staff_padding_function(2)
    \revert DynamicLineSpanner.staff-padding
      %! baca.note_head_style_harmonic_black_function(2)
    \revert NoteHead.style
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.1.Music measure 11]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.25.Cello.1.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Cello.1.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.25.Cello.1.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.25.Cello.2.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_226
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
%%% \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_226
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! baca.dls_staff_padding_function(1)
    \override DynamicLineSpanner.staff-padding = 4
      %! baca.tuplet_bracket_up_function(1)
    \override TupletBracket.direction = #up
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
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "treble"
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
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! baca.make_skeleton()
    r1
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
    \f
    % MARKUP:
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-instrument-markup "(“Cello”)"
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
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup %@%
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca.make_skeleton()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! baca.make_skeleton()
    \tweak text #tuplet-number::calc-fraction-text
      %! baca.make_skeleton()
    \times 5/4
      %! baca.make_skeleton()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        <g' af'! bf'!>2
        % AFTER:
        % STEM_TREMOLOS:
          %! baca.stem_tremolo_function()
        :32
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        \pp
        % MARKUP:
          %! baca.markup_function()
        ^ \baca-quasi-bisb-markup
        % SPANNER_STARTS:
          %! AUTODETECT
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.text_spanner_function()
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \tweak bound-details.right.padding 2.75
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \tweak staff-padding 8
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \abjad-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        \bacaStartTextSpanMetricModulation
        % COMMANDS:
          %! baca.tuplet_bracket_up_function(2)
        \revert TupletBracket.direction
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! baca.make_skeleton()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 2]
    <g' af'! bf'!>1.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 3]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_228
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_228
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "bass"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    fs,!2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    \f
    % SPANNER_STOPS:
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanMetricModulation
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "O"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
      %! abjad.glissando(7)
      %! baca.glissando_function()
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
      %! baca.glissando_function()
    \hide NoteHead
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override Accidental.stencil = ##f
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override NoteColumn.glissando-skip = ##t
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override NoteHead.no-ledgers = ##t
      %! harmony.make_sixteenths()
    fs,!16
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs,!8.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "P2"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-right-text "P1"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert Accidental.stencil
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert NoteColumn.glissando-skip
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert NoteHead.no-ledgers
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \undo \hide NoteHead
      %! harmony.make_sixteenths()
    fs,!2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 5]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_230
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_230
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! baca.note_head_style_harmonic_black_function(1)
    \override NoteHead.style = #'harmonic-black
      %! baca._style_fermata_measures(3)
    \stopStaff
      %! baca._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
      %! baca._style_fermata_measures(3)
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "treble"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
    <g' af'! bf'!>8
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \pp
    % MARKUP:
      %! baca.markup_function()
    ^ \baca-quasi-bisb-markup
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.note_head_transparent_function(1)
    \override NoteHead.transparent = ##t
    c''8
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8.
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mp
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 6]
    c''1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \p
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 7]
    c''2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mf
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8.
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 8]
    c''1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mp
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \baca-f-scratch
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 9]
    c''2.
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mf
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 10]
    c''8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8
    % AFTER:
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \baca-ff-scratch
    % COMMANDS:
      %! baca.note_head_transparent_function(2)
    \revert NoteHead.transparent
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    <g' af'! bf'!>1
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % COMMANDS:
      %! baca.dls_staff_padding_function(2)
    \revert DynamicLineSpanner.staff-padding
      %! baca.note_head_style_harmonic_black_function(2)
    \revert NoteHead.style
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.2.Music measure 11]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.25.Cello.2.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Cello.2.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.25.Cello.2.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.25.Contrabass.1.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_226
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
%%% \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_226
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! baca.dls_staff_padding_function(1)
    \override DynamicLineSpanner.staff-padding = 4
      %! baca.tuplet_bracket_up_function(1)
    \override TupletBracket.direction = #up
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
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "treble"
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
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! baca.make_skeleton()
    r1
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
    \f
    % MARKUP:
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-instrument-markup "(“Contrabass”)"
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
    \set Staff.shortInstrumentName = \harmony-cb-i-markup %@%
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca.make_skeleton()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! baca.make_skeleton()
    \tweak text #tuplet-number::calc-fraction-text
      %! baca.make_skeleton()
    \times 5/4
      %! baca.make_skeleton()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        <a' b' c''>2
        % AFTER:
        % STEM_TREMOLOS:
          %! baca.stem_tremolo_function()
        :32
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        \pp
        % MARKUP:
          %! baca.markup_function()
        ^ \baca-quasi-bisb-markup
        % SPANNER_STARTS:
          %! AUTODETECT
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.text_spanner_function()
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \tweak bound-details.right.padding 2.75
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \tweak staff-padding 8
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \abjad-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        \bacaStartTextSpanMetricModulation
        % COMMANDS:
          %! baca.tuplet_bracket_up_function(2)
        \revert TupletBracket.direction
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! baca.make_skeleton()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 2]
    <a' b' c''>1.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 3]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_228
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_228
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "bass"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    fs,!4
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    \f
    % SPANNER_STOPS:
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanMetricModulation
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "P1"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
      %! abjad.glissando(7)
      %! baca.glissando_function()
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
      %! baca.glissando_function()
    \hide NoteHead
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override Accidental.stencil = ##f
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override NoteColumn.glissando-skip = ##t
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override NoteHead.no-ledgers = ##t
      %! harmony.make_sixteenths()
    fs,!2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "P2"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs,!16
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs,!8.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "O"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-right-text "P2"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert Accidental.stencil
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert NoteColumn.glissando-skip
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert NoteHead.no-ledgers
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \undo \hide NoteHead
      %! harmony.make_sixteenths()
    fs,!4
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 5]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
      %! MEASURE_230
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_230
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! baca.note_head_style_harmonic_black_function(1)
    \override NoteHead.style = #'harmonic-black
      %! baca._style_fermata_measures(3)
    \stopStaff
      %! baca._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5
      %! baca._style_fermata_measures(3)
    \startStaff
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "treble"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
    <a' b' c''>4
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \pp
    % MARKUP:
      %! baca.markup_function()
    ^ \baca-quasi-bisb-markup
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
      %! baca.note_head_transparent_function(1)
    \override NoteHead.transparent = ##t
    c''8.
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''16
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''8.
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mp
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 6]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''8.
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''8.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \p
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 7]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''8.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mf
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 8]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''4
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mp
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 9]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \baca-f-scratch
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 10]
    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''8
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''8.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mf
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \baca-ff-scratch
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! REPEAT_PITCH_CLASS_COLORING
      %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    c''16
    % AFTER:
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % COMMANDS:
      %! baca.note_head_transparent_function(2)
    \revert NoteHead.transparent
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    <a' b' c''>4
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % COMMANDS:
      %! baca.dls_staff_padding_function(2)
    \revert DynamicLineSpanner.staff-padding
      %! baca.note_head_style_harmonic_black_function(2)
    \revert NoteHead.style
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.1.Music measure 11]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.25.Contrabass.1.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Contrabass.1.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.25.Contrabass.1.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>


  %! baca.path.extern()
number.25.Contrabass.2.Music = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 1]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_226
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
%%% \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_226
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! baca.dls_staff_padding_function(1)
    \override DynamicLineSpanner.staff-padding = 4
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! baca.tuplet_bracket_up_function(1)
    \override TupletBracket.direction = #up
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
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "treble"
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
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! baca.make_skeleton()
    r1
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
    \f
    % MARKUP:
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-instrument-markup "(“Contrabass”)"
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
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup %@%
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca.make_skeleton()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! baca.make_skeleton()
    \tweak text #tuplet-number::calc-fraction-text
      %! baca.make_skeleton()
    \times 5/4
      %! baca.make_skeleton()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        <g' af'! bf'!>2
        % AFTER:
        % STEM_TREMOLOS:
          %! baca.stem_tremolo_function()
        :32
        % ARTICULATIONS:
          %! EXPLICIT_DYNAMIC_COLOR
          %! baca.treat_persistent_wrapper()
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        - \tweak color #(x11-color 'blue)
          %! EXPLICIT_DYNAMIC
          %! baca._attach_persistent_indicator()
          %! baca._set_status_tag()
          %! baca.dynamic_function()
        \pp
        % MARKUP:
          %! baca.markup_function()
        ^ \baca-quasi-bisb-markup
        % SPANNER_STARTS:
          %! AUTODETECT
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.text_spanner_function()
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \tweak bound-details.right.padding 2.75
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \tweak staff-padding 8
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \abjad-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
          %! baca.PiecewiseCommand._call(2)
          %! baca.metric_modulation_spanner_function()
          %! baca.text_spanner_function()
        \bacaStartTextSpanMetricModulation
        % COMMANDS:
          %! baca.tuplet_bracket_up_function(2)
        \revert TupletBracket.direction
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
      %! baca.make_skeleton()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 2]
    <g' af'! bf'!>1.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 3]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_228
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_228
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "bass"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! harmony.make_sixteenths()
    fs,!2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.dynamic_function()
    \f
    % SPANNER_STOPS:
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(4)
      %! baca.metric_modulation_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanMetricModulation
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "P1"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
      %! abjad.glissando(7)
      %! baca.glissando_function()
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
      %! baca.glissando_function()
    \hide NoteHead
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override Accidental.stencil = ##f
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override NoteColumn.glissando-skip = ##t
      %! abjad.glissando(1)
      %! baca.glissando_function()
    \override NoteHead.no-ledgers = ##t
      %! harmony.make_sixteenths()
    fs,!16
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! harmony.make_sixteenths()
    fs,!8.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! baca.accent_function()
    - \accent
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \abjad-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-left-text "P2"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    - \baca-text-spanner-right-text "O"
      %! SCP_SPANNER
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPENING:
    % COMMANDS:
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert Accidental.stencil
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert NoteColumn.glissando-skip
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \revert NoteHead.no-ledgers
      %! abjad.glissando(6)
      %! baca.glissando_function()
    \undo \hide NoteHead
      %! harmony.make_sixteenths()
    fs,!2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % SPANNER_STOPS:
      %! SCP_SPANNER
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca.scp_spanner_function()
      %! baca.text_spanner_function()
    \bacaStopTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 4]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % COMMANDS:
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
      %! baca._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 5]
    % BEFORE:
    % COMMANDS:
      %! MEASURE_230
      %! SHIFTED_CLEF
      %! baca.clef_x_extent_false_function(1)
    \once \override Staff.Clef.X-extent = ##f
      %! MEASURE_230
      %! SHIFTED_CLEF
      %! baca.clef_extra_offset_function(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! baca.note_head_style_harmonic_black_function(1)
    \override NoteHead.style = #'harmonic-black
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
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
    \clef "treble"
      %! EXPLICIT_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
      %! baca._attach_persistent_indicator()
      %! baca._set_status_tag()
      %! baca.clef_function()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
    <g' af'! bf'!>2.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \pp
    % MARKUP:
      %! baca.markup_function()
    ^ \baca-quasi-bisb-markup
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! EXPLICIT_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
      %! baca.note_head_transparent_function(1)
    \override NoteHead.transparent = ##t
    c''8
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 6]
    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mp
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''4
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''2.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \p
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 7]
    c''1.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mf
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 8]
    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mp
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8.
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''16
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \baca-f-scratch
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8.
    % AFTER:
    % ARTICULATIONS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.hairpin_function()
    \!
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \>
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 9]
    c''2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8.
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \mf
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 10]
    c''2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''16
    % AFTER:
    % START_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''8.
    % AFTER:
    % STOP_BEAM:
      %! rmakers.RewriteMeterCommand.__call__
    ]
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    c''4
    % AFTER:
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(3)
      %! baca._set_status_tag()
      %! baca.hairpin_function()
    \baca-ff-scratch
    % COMMANDS:
      %! baca.note_head_transparent_function(2)
    \revert NoteHead.transparent
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    <g' af'! bf'!>2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.stem_tremolo_function()
    :32
    % COMMANDS:
      %! baca.dls_staff_padding_function(2)
    \revert DynamicLineSpanner.staff-padding
      %! baca.note_head_style_harmonic_black_function(2)
    \revert NoteHead.style
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Contrabass.2.Music measure 11]
    % BEFORE:
    % COMMANDS:
      %! baca._style_fermata_measures(1)
    \stopStaff
      %! baca._style_fermata_measures(1)
    \once \override Staff.StaffSymbol.line-count = 0
      %! baca._style_fermata_measures(1)
    \startStaff
      %! baca.make_mmrests(1)
    R1 * 1/4
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % COMMANDS:
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
      %! baca._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
number.25.Contrabass.2.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! harmony.make_empty_score()
    \context Voice = "Contrabass.2.Music"
      %! harmony.make_empty_score()
      %! baca.path.extern()
    { \number.25.Contrabass.2.Music }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! harmony.make_empty_score()
  %! baca.path.extern()
>>
