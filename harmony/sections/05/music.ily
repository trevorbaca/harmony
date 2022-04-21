%! baca.path.extern()
segment.05.Global.Skips = {

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 1]
    %! EXPLICIT_TIME_SIGNATURE
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    \time 5/4
    %! +SEGMENT
    %! EMPTY_START_BAR
    %! baca._attach_nonfirst_empty_start_bar()
    \bar ""
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    %! baca._attach_color_literal(2)
    \baca-time-signature-color #'blue
    %! baca._make_global_skips(1)
    s1 * 5/4
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "1"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "35"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    - \baca-start-snm-colored-left-only "[▶F.3]" #darkgreen
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_NOT_SCALED
    %! baca._attach_metronome_marks(2.1)
    %! baca._set_status_tag()
    %@% - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_NOT_SCALED
    %! baca._attach_metronome_marks(2.1)
    %! baca._set_status_tag()
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #2 #1 #2 #0 #'(1 . 1)
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_NOT_SCALED
    %! baca._attach_metronome_marks(2.1)
    %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_SCALED
    %! baca._attach_metronome_marks(2.2)
    %! baca._set_status_tag()
    %@% - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_SCALED
    %! baca._attach_metronome_marks(2.2)
    %! baca._set_status_tag()
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #2 #1 #2 #0 #'(0.525 . 0.525)
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_SCALED
    %! baca._attach_metronome_marks(2.2)
    %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
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
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #2 #1 #2 #0 #'(1 . 1) #'blue
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[1'31'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 2]
    %! EXPLICIT_TIME_SIGNATURE
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    \time 3/4
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    %! baca._attach_color_literal(2)
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
    - \baca-start-lmn-left-only "2"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "36"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    - \baca-start-snm-colored-left-only "[◀C.4]" #darkgreen
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
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
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[1'37'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 3]
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
    - \baca-start-lmn-left-only "3"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "37"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    - \baca-start-snm-colored-left-only "[◀D.1]" #darkgreen
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_NOT_SCALED
    %! baca._attach_metronome_marks(2.1)
    %! baca._set_status_tag()
    %@% - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_NOT_SCALED
    %! baca._attach_metronome_marks(2.1)
    %! baca._set_status_tag()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #5 #2 #0 #'(1 . 1)
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_NOT_SCALED
    %! baca._attach_metronome_marks(2.1)
    %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_SCALED
    %! baca._attach_metronome_marks(2.2)
    %! baca._set_status_tag()
    %@% - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_SCALED
    %! baca._attach_metronome_marks(2.2)
    %! baca._set_status_tag()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #5 #2 #0 #'(0.525 . 0.525)
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_SCALED
    %! baca._attach_metronome_marks(2.2)
    %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_STRIPPED
    %! baca._attach_metronome_marks(2.2)
    %! baca._set_status_tag()
    %@% - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_STRIPPED
    %! baca._attach_metronome_marks(2.2)
    %! baca._set_status_tag()
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "72"
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_STRIPPED
    %! baca._attach_metronome_marks(2.2)
    %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #5 #2 #0 #'(1 . 1) #'blue
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[1'40'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 4]
    %! EXPLICIT_TIME_SIGNATURE
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    \time 6/4
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    %! baca._attach_color_literal(2)
    \baca-time-signature-color #'blue
    %! baca._make_global_skips(1)
    s1 * 3/2
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.rehearsal_mark()
    - \tweak extra-offset #'(0 . 18)
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.rehearsal_mark()
    - \baca-rehearsal-mark-markup "E" #10
    %! +PARTS
    %! baca.IndicatorCommand._call()
    %! baca.rehearsal_mark()
%%% - \tweak extra-offset #'(0 . 10)
    %! +PARTS
    %! baca.IndicatorCommand._call()
    %! baca.rehearsal_mark()
%%% - \baca-rehearsal-mark-markup "E" #4
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
    - \baca-start-lmn-left-only "4"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "38"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    - \baca-start-snm-left-only "[E.1-2]"
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_NOT_SCALED
    %! baca._attach_metronome_marks(2.1)
    %! baca._set_status_tag()
    %@% - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_NOT_SCALED
    %! baca._attach_metronome_marks(2.1)
    %! baca._set_status_tag()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(1 . 1)
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_NOT_SCALED
    %! baca._attach_metronome_marks(2.1)
    %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_SCALED
    %! baca._attach_metronome_marks(2.2)
    %! baca._set_status_tag()
    %@% - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_SCALED
    %! baca._attach_metronome_marks(2.2)
    %! baca._set_status_tag()
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(0.525 . 0.525)
    %! EXPLICIT_METRONOME_MARK
    %! METRIC_MODULATION_IS_SCALED
    %! baca._attach_metronome_marks(2.2)
    %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
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
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(1 . 1) #'blue
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[1'42'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 5]
    %! baca._make_global_skips(1)
    s1 * 3/2
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
    %@% - \baca-start-mn-left-only "39"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-both "[1'46'']" "[1'50'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT

    %! PHANTOM
    %! baca._comment_measure_numbers()
    %! baca._style_phantom_measures(1)
    % [Global_Skips measure 6]
    %! EXPLICIT_TIME_SIGNATURE
    %! PHANTOM
    %! baca._make_global_skips(3)
    %! baca._set_status_tag()
    %! baca._style_phantom_measures(1)
    \time 1/4
    %! PHANTOM
    %! baca._style_phantom_measures(2)
    \baca-time-signature-transparent
    %! PHANTOM
    %! baca._make_global_skips(3)
    s1 * 1/4
    %! LOCAL_MEASURE_NUMBER
    %! PHANTOM
    %! baca._label_measure_numbers()
    %! baca._style_phantom_measures(1)
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! PHANTOM
    %! baca._label_measure_numbers()
    %! baca._style_phantom_measures(1)
    %@% \bacaStopTextSpanMN
    %! PHANTOM
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    %! baca._style_phantom_measures(1)
    \bacaStopTextSpanSNM
    %! EOS_STOP_MM_SPANNER
    %! PHANTOM
    %! baca._attach_metronome_marks(4)
    %! baca._style_phantom_measures(1)
    \bacaStopTextSpanMM
    %! CLOCK_TIME
    %! PHANTOM
    %! baca._label_clock_time()
    %! baca._style_phantom_measures(1)
    %@% \bacaStopTextSpanCT
    %! PHANTOM
    %! baca._style_phantom_measures(3)
    \once \override Score.BarLine.transparent = ##t
    %! PHANTOM
    %! baca._style_phantom_measures(3)
    \once \override Score.SpanBar.transparent = ##t

%! baca.make_global_context()
%! baca.path.extern()
}


%! baca.path.extern()
segment.05.Global.Rests = {

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 1]
    %! baca._make_global_rests(1)
    R1 * 5/4

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 2]
    %! baca._make_global_rests(1)
    R1 * 3/4

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 3]
    %! baca._make_global_rests(1)
    R1 * 3/4

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 4]
    %! baca._make_global_rests(1)
    R1 * 3/2

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 5]
    %! baca._make_global_rests(1)
    R1 * 3/2

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 6]
    %! PHANTOM
    %! baca._make_global_rests(2)
    R1 * 1/4

%! baca.make_global_context()
%! baca.path.extern()
}


%! baca.path.extern()
segment.05.Bass.Flute.Music.Voice = {

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Bass_Flute_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Bass_Flute_Music_Voice measure 1]
            %! EXPLICIT_BAR_EXTENT
            %! REAPPLIED_BAR_EXTENT
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            %! -PARTS
            %! REAPPLIED_MARGIN_MARKUP
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
            %! baca._clone_segment_initial_short_instrument_name()
            \set Staff.instrumentName = \harmony-bfl-markup
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! baca._make_multimeasure_rest_container(2)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! baca._make_multimeasure_rest_container(3)
            %@% \abjad-invisible-music
            %! baca.OverrideCommand._call(1)
            %! baca.dls_staff_padding()
            \override DynamicLineSpanner.staff-padding = 4
            %! REAPPLIED_CLEF
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            \clef "treble"
            %! REAPPLIED_CLEF_COLOR
            %! baca._attach_color_literal(2)
            \once \override Staff.Clef.color = #(x11-color 'green4)
            %! REAPPLIED_CLEF_COLOR_CANCELLATION
            %! baca._attach_color_literal(1)
            %@% \override Staff.Clef.color = ##f
            %! REAPPLIED_CLEF
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! baca.treat_persistent_wrapper(2)
            \set Staff.forceClef = ##t
            %! REAPPLIED_STAFF_LINES_COLOR
            %! baca._attach_color_literal(2)
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
            %! REAPPLIED_MARGIN_MARKUP_COLOR
            %! baca._attach_color_literal(2)
            %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            b'1 * 5/4
            %! REAPPLIED_DYNAMIC_COLOR
            %! baca.treat_persistent_wrapper()
            %! REAPPLIED_DYNAMIC
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            - \tweak color #(x11-color 'green4)
            %! REAPPLIED_DYNAMIC
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            \pp
            %! REAPPLIED_INSTRUMENT_ALERT
            %! baca._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "(“BassFlute”)"
            %! REAPPLIED_MARGIN_MARKUP_ALERT
            %! baca._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "[“Bfl.”]"
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"5" #"4"
            %! REAPPLIED_CLEF_REDRAW_COLOR
            %! baca._attach_color_literal(2)
            \override Staff.Clef.color = #(x11-color 'OliveDrab)
            %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
            %! baca._attach_color_literal(2)
            %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
            %! -PARTS
            %! REDRAWN_REAPPLIED_MARGIN_MARKUP
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            %! baca.treat_persistent_wrapper(3)
            \set Staff.shortInstrumentName = \harmony-bfl-markup

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Bass_Flute_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Bass_Flute_Rest_Voice measure 1]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 5/4
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"5" #"4"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 2]
    %! harmony.sixteenths()
    r4

    %! harmony.sixteenths()
    f'16
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
    - \tweak staff-padding 3
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

    %! harmony.sixteenths()
    r8.

    %! harmony.sixteenths()
    r16

    %! harmony.sixteenths()
    f'16

    %! harmony.sixteenths()
    r8

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 3]
    fs'!16
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
    %! COVERED_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.covered_spanner()
    \bacaStopTextSpanCovered

    r16

    fs'!8
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    fs'2
    \repeatTie

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 4]
    %! baca.OverrideCommand._call(1)
    %! baca.note_head_style_harmonic()
    \override NoteHead.style = #'harmonic
    %! harmony.sixteenths()
    f'16
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
    \ff
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-jet-whistle-markup
    %! rmakers.RewriteMeterCommand.__call__
    [

    %! harmony.sixteenths()
    f'16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca.OverrideCommand._call(2)
    %! baca.note_head_style_harmonic()
    \revert NoteHead.style

    %! harmony.sixteenths()
    r8

    %! harmony.sixteenths()
    r1

    %! harmony.sixteenths()
    r4

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 5]
    %! harmony.sixteenths()
    r8.

    %! baca.OverrideCommand._call(1)
    %! baca.note_head_style_harmonic()
    \override NoteHead.style = #'harmonic
    %! harmony.sixteenths()
    e'16
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
    \baca-ff-ancora
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-jet-whistle-markup

    %! harmony.sixteenths()
    e'16
    %! baca.OverrideCommand._call(2)
    %! baca.note_head_style_harmonic()
    \revert NoteHead.style

    %! harmony.sixteenths()
    r8.

    %! harmony.sixteenths()
    r1
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Bass_Flute_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Bass_Flute_Music_Voice measure 6]
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            b'1 * 1/4
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Bass_Flute_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Bass_Flute_Rest_Voice measure 6]
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \stopStaff
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \startStaff
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/4
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.05.Bass.Flute.Music.Staff = <<

    %! baca.make_global_context()
    \context GlobalRests = "Global_Rests"
    %! baca.make_global_context()
    %! baca.path.extern()
    { \segment.05.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Bass_Flute_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.05.Bass.Flute.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.05.Percussion.I.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Percussion_I_Music_Voice measure 1]
    %! -PARTS
    %! EXPLICIT_BAR_EXTENT
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    %! -PARTS
    %! REAPPLIED_MARGIN_MARKUP
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
    \once \override Staff.StaffSymbol.line-count = 1
    %! EXPLICIT_STAFF_LINES
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! baca.staff_lines()
    \startStaff
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-perc-i-markup
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 7
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \clef "percussion"
    %! REAPPLIED_CLEF_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! EXPLICIT_STAFF_LINES_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.sixteenths()
    r1
    %! REAPPLIED_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! REAPPLIED_DYNAMIC
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    - \tweak color #(x11-color 'green4)
    %! REAPPLIED_DYNAMIC
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \baca-f-ancora
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Perc. I”]"
    %! REAPPLIED_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-perc-i-markup

    %! harmony.sixteenths()
    r8.

    %! baca.OverrideCommand._call(1)
    %! baca.stem_down()
    \once \override Stem.direction = #down
    %! harmony.sixteenths()
    b16
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
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak self-alignment-X 1
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 7
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-bd-superball-markup
    %! baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.phjc()
    \times 4/5
    %! harmony.phjc()
    {

        %! baca._comment_measure_numbers()
        % [Percussion_I_Music_Voice measure 2]
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
        %! baca.OverrideCommand._call(1)
        %! baca.tuplet_bracket_up()
        \override TupletBracket.direction = #up
        %! baca.OverrideCommand._call(1)
        %! baca.tuplet_bracket_staff_padding()
        \override TupletBracket.staff-padding = 0.5
        %! baca.OverrideCommand._call(1)
        %! baca.dls_staff_padding()
        \override DynamicLineSpanner.staff-padding = 5.5
        %! EXPLICIT_STAFF_LINES_COLOR
        %! baca._attach_color_literal(2)
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        %! harmony.phjc()
        r16

        %! baca.OverrideCommand._call(1)
        %! baca.stem_down()
        \override Stem.direction = #down
        %! harmony.phjc()
        a8
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
        %! baca.IndicatorCommand._call()
        %! baca.markup()
        - \tweak staff-padding 6
        %! baca.IndicatorCommand._call()
        %! baca.markup()
        ^ \baca-purpleheart-markup
        %! harmony.phjc()
        [
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

        %! harmony.phjc()
        c'8

        %! harmony.phjc()
        a8

        %! harmony.phjc()
        c'8

        %! harmony.phjc()
        c'16
        %! harmony.phjc()
        ]

    %! harmony.phjc()
    }

    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.phjc()
    \times 2/3
    %! harmony.phjc()
    {

        %! harmony.phjc()
        r8

        %! harmony.phjc()
        a8
        %! harmony.phjc()
        [

        %! harmony.phjc()
        c'8
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
        %! harmony.phjc()
        ]
        %! baca.OverrideCommand._call(2)
        %! baca.stem_down()
        \revert Stem.direction
        %! baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_up()
        \revert TupletBracket.direction
        %! baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_staff_padding()
        \revert TupletBracket.staff-padding

    %! harmony.phjc()
    }

    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.phjc()
    \times 2/3
    %! harmony.phjc()
    {

        %! baca._comment_measure_numbers()
        % [Percussion_I_Music_Voice measure 3]
        %! baca.OverrideCommand._call(1)
        %! baca.tuplet_bracket_up()
        \override TupletBracket.direction = #up
        %! baca.OverrideCommand._call(1)
        %! baca.tuplet_bracket_staff_padding()
        \override TupletBracket.staff-padding = 0.5
        %! harmony.phjc()
        r8

        %! baca.OverrideCommand._call(1)
        %! baca.stem_down()
        \override Stem.direction = #down
        %! harmony.phjc()
        c'8
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
        %! harmony.phjc()
        [
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

        %! harmony.phjc()
        a8
        %! harmony.phjc()
        ]

    %! harmony.phjc()
    }

    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.phjc()
    \times 4/5
    %! harmony.phjc()
    {

        %! harmony.phjc()
        r8

        %! harmony.phjc()
        c'8
        %! harmony.phjc()
        [

        %! harmony.phjc()
        a8

        %! harmony.phjc()
        c'8

        %! harmony.phjc()
        c'16

        %! harmony.phjc()
        a16
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
        %! harmony.phjc()
        ]
        %! baca.OverrideCommand._call(2)
        %! baca.stem_down()
        \revert Stem.direction
        %! baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_up()
        \revert TupletBracket.direction
        %! baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_staff_padding()
        \revert TupletBracket.staff-padding
        %! baca.OverrideCommand._call(2)
        %! baca.dls_staff_padding()
        \revert DynamicLineSpanner.staff-padding

    %! harmony.phjc()
    }

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_I_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Percussion_I_Music_Voice measure 4]
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
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! baca._make_multimeasure_rest_container(2)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! baca._make_multimeasure_rest_container(3)
            %@% \abjad-invisible-music
            %! EXPLICIT_STAFF_LINES_COLOR
            %! baca._attach_color_literal(2)
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            c'1 * 3/2
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"3" #"2"
            %! -PARTS
            %! EXPLICIT_BAR_EXTENT
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_I_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Percussion_I_Rest_Voice measure 4]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 3/2
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"3" #"2"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! baca._comment_measure_numbers()
    % [Percussion_I_Music_Voice measure 5]
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    %! harmony.sixteenths()
    r8.

    %! baca.OverrideCommand._call(1)
    %! baca.stem_up()
    \override Stem.direction = #up
    %! harmony.sixteenths()
    d'16
    %! baca.IndicatorCommand._call()
    %! baca.stem_tremolo()
    :32
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
    \p
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 8
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-triangle-small-beater-markup
    ~

    %! harmony.sixteenths()
    d'1
    %! baca.IndicatorCommand._call()
    %! baca.stem_tremolo()
    :32
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! RIGHT_BROKEN
    %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %! abjad.glissando(0)
    %! baca.glissando()
    \hide NoteHead
    %! RIGHT_BROKEN
    %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %! abjad.glissando(0)
    %! baca.glissando()
    \override Accidental.stencil = ##f
    %! RIGHT_BROKEN
    %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %! abjad.glissando(0)
    %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t
    %! RIGHT_BROKEN
    %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %! abjad.glissando(0)
    %! baca.glissando()
    \override NoteHead.no-ledgers = ##t
    %! harmony.sixteenths()
    d'4
    %! baca.IndicatorCommand._call()
    %! baca.stem_tremolo()
    :32
    %! baca.OverrideCommand._call(2)
    %! baca.stem_up()
    \revert Stem.direction
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_I_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Percussion_I_Music_Voice measure 6]
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! HIDE_TO_JOIN_BROKEN_SPANNERS
            %! PHANTOM
            %! RIGHT_BROKEN
            %! abjad.glissando(4)
            %! baca._style_phantom_measures(5)
            %! baca.glissando()
            \revert Accidental.stencil
            %! HIDE_TO_JOIN_BROKEN_SPANNERS
            %! PHANTOM
            %! RIGHT_BROKEN
            %! abjad.glissando(4)
            %! baca._style_phantom_measures(5)
            %! baca.glissando()
            \revert NoteColumn.glissando-skip
            %! HIDE_TO_JOIN_BROKEN_SPANNERS
            %! PHANTOM
            %! RIGHT_BROKEN
            %! abjad.glissando(4)
            %! baca._style_phantom_measures(5)
            %! baca.glissando()
            \revert NoteHead.no-ledgers
            %! HIDE_TO_JOIN_BROKEN_SPANNERS
            %! PHANTOM
            %! RIGHT_BROKEN
            %! abjad.glissando(4)
            %! baca._style_phantom_measures(5)
            %! baca.glissando()
            \undo \hide NoteHead
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            c'1 * 1/4
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_I_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Percussion_I_Rest_Voice measure 6]
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \stopStaff
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \startStaff
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/4
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.05.Percussion.I.Music.Staff = <<

    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.05.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Percussion_I_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.05.Percussion.I.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.05.Percussion.II.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 1]
    %! -PARTS
    %! REAPPLIED_MARGIN_MARKUP
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
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-perc-ii-markup
    %! baca.OverrideCommand._call(1)
    %! baca.stem_down()
    \override Stem.direction = #down
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_staff_padding()
    \override TupletBracket.staff-padding = 0.5
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \clef "percussion"
    %! REAPPLIED_CLEF_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
    %! REAPPLIED_STAFF_LINES_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! harmony.sixteenths()
    c'4
    %! REAPPLIED_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! REAPPLIED_DYNAMIC
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    - \tweak color #(x11-color 'green4)
    %! REAPPLIED_DYNAMIC
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \baca-f-sub
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Perc. II”]"
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
    %! REAPPLIED_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup

    %! harmony.sixteenths()
    c'4
    %! baca.OverrideCommand._call(2)
    %! baca.stem_down()
    \revert Stem.direction
    %! baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    %! baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_staff_padding()
    \revert TupletBracket.staff-padding

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
    %! EXPLICIT_STAFF_LINES_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.sixteenths()
    r2
    %! METRIC_MODULATION_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.metric_modulation_spanner()
    \bacaStopTextSpanMetricModulation

    %! harmony.sixteenths()
    r8.

    %! baca.OverrideCommand._call(1)
    %! baca.stem_up()
    \once \override Stem.direction = #up
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \once \override DynamicLineSpanner.staff-padding = 7
    %! harmony.sixteenths()
    c'16
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    %! baca.IndicatorCommand._call()
    %! baca.damp()
    - \baca-damp
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak self-alignment-X 1
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 7
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-brake-drum-markup

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 2]
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
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_staff_padding()
    \override TupletBracket.staff-padding = 0.5
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 5.5
    %! EXPLICIT_STAFF_LINES_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.phjc()
    r16

    %! baca.OverrideCommand._call(1)
    %! baca.stem_down()
    \override Stem.direction = #down
    %! harmony.phjc()
    a8
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
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 6
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-purpleheart-markup
    %! harmony.phjc()
    [
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

    %! harmony.phjc()
    c'16
    %! harmony.phjc()
    ]

    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.phjc()
    \times 4/7
    %! harmony.phjc()
    {

        %! harmony.phjc()
        r16

        %! harmony.phjc()
        c'16
        %! harmony.phjc()
        [

        %! harmony.phjc()
        a8

        %! harmony.phjc()
        c'8

        %! harmony.phjc()
        a8

        %! harmony.phjc()
        c'8

        %! harmony.phjc()
        c'8

        %! harmony.phjc()
        a8
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
        %! harmony.phjc()
        ]
        %! baca.OverrideCommand._call(2)
        %! baca.stem_down()
        \revert Stem.direction
        %! baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_up()
        \revert TupletBracket.direction
        %! baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_staff_padding()
        \revert TupletBracket.staff-padding

    %! harmony.phjc()
    }

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 3]
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_staff_padding()
    \override TupletBracket.staff-padding = 0.5
    %! harmony.phjc()
    r8

    %! baca.OverrideCommand._call(1)
    %! baca.stem_down()
    \override Stem.direction = #down
    %! harmony.phjc()
    c'8
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

    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.phjc()
    \times 4/7
    %! harmony.phjc()
    {

        %! harmony.phjc()
        r8

        %! harmony.phjc()
        a8
        %! harmony.phjc()
        [

        %! harmony.phjc()
        c'8

        %! harmony.phjc()
        a8

        %! harmony.phjc()
        c'8

        %! harmony.phjc()
        c'16

        %! harmony.phjc()
        a8

        %! harmony.phjc()
        c'16
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
        %! harmony.phjc()
        ]
        %! baca.OverrideCommand._call(2)
        %! baca.stem_down()
        \revert Stem.direction
        %! baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_up()
        \revert TupletBracket.direction
        %! baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_staff_padding()
        \revert TupletBracket.staff-padding
        %! baca.OverrideCommand._call(2)
        %! baca.dls_staff_padding()
        \revert DynamicLineSpanner.staff-padding

    %! harmony.phjc()
    }

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_II_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Percussion_II_Music_Voice measure 4]
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
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! baca._make_multimeasure_rest_container(2)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! baca._make_multimeasure_rest_container(3)
            %@% \abjad-invisible-music
            %! EXPLICIT_STAFF_LINES_COLOR
            %! baca._attach_color_literal(2)
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            c'1 * 3/2
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"3" #"2"

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_II_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Percussion_II_Rest_Voice measure 4]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 3/2
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"3" #"2"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 5]
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 6
    %! harmony.sixteenths()
    r8.

    %! baca.OverrideCommand._call(1)
    %! baca.stem_down()
    \override Stem.direction = #down
    %! harmony.sixteenths()
    c'16
    %! baca.IndicatorCommand._call()
    %! baca.stem_tremolo()
    :32
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
    \p
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 6
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-tam-tam-markup
    ~

    %! harmony.sixteenths()
    c'1
    %! baca.IndicatorCommand._call()
    %! baca.stem_tremolo()
    :32
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! RIGHT_BROKEN
    %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %! abjad.glissando(0)
    %! baca.glissando()
    \hide NoteHead
    %! RIGHT_BROKEN
    %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %! abjad.glissando(0)
    %! baca.glissando()
    \override Accidental.stencil = ##f
    %! RIGHT_BROKEN
    %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %! abjad.glissando(0)
    %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t
    %! RIGHT_BROKEN
    %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %! abjad.glissando(0)
    %! baca.glissando()
    \override NoteHead.no-ledgers = ##t
    %! harmony.sixteenths()
    c'4
    %! baca.IndicatorCommand._call()
    %! baca.stem_tremolo()
    :32
    %! baca.OverrideCommand._call(2)
    %! baca.stem_down()
    \revert Stem.direction
    %! baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_II_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Percussion_II_Music_Voice measure 6]
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! HIDE_TO_JOIN_BROKEN_SPANNERS
            %! PHANTOM
            %! RIGHT_BROKEN
            %! abjad.glissando(4)
            %! baca._style_phantom_measures(5)
            %! baca.glissando()
            \revert Accidental.stencil
            %! HIDE_TO_JOIN_BROKEN_SPANNERS
            %! PHANTOM
            %! RIGHT_BROKEN
            %! abjad.glissando(4)
            %! baca._style_phantom_measures(5)
            %! baca.glissando()
            \revert NoteColumn.glissando-skip
            %! HIDE_TO_JOIN_BROKEN_SPANNERS
            %! PHANTOM
            %! RIGHT_BROKEN
            %! abjad.glissando(4)
            %! baca._style_phantom_measures(5)
            %! baca.glissando()
            \revert NoteHead.no-ledgers
            %! HIDE_TO_JOIN_BROKEN_SPANNERS
            %! PHANTOM
            %! RIGHT_BROKEN
            %! abjad.glissando(4)
            %! baca._style_phantom_measures(5)
            %! baca.glissando()
            \undo \hide NoteHead
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            c'1 * 1/4
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_II_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Percussion_II_Rest_Voice measure 6]
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \stopStaff
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \startStaff
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/4
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.05.Percussion.II.Music.Staff = <<

    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.05.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Percussion_II_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.05.Percussion.II.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.05.Harp.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 1]
    %! EXPLICIT_BAR_EXTENT
    %! REAPPLIED_BAR_EXTENT
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! -PARTS
    %! REAPPLIED_MARGIN_MARKUP
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
    \once \override Staff.StaffSymbol.line-count = 5
    %! REAPPLIED_STAFF_LINES
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \startStaff
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-hp-markup
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \clef "treble"
    %! REAPPLIED_CLEF_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
    %! REAPPLIED_STAFF_LINES_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
    %! harmony.sixteenths()
    r8
    %! REAPPLIED_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! REAPPLIED_DYNAMIC
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    - \tweak color #(x11-color 'green4)
    %! REAPPLIED_DYNAMIC
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \pp
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Harp”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Hp.”]"
    %! REAPPLIED_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-hp-markup

    %! harmony.sixteenths()
    fs'!8
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
    %! baca.IndicatorCommand._call()
    %! baca.laissez_vibrer()
    \laissezVibrer
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-pdlt-markup

    %! harmony.sixteenths()
    r2.

    %! harmony.sixteenths()
    r8

    %! harmony.sixteenths()
    gs'!8
    %! baca.IndicatorCommand._call()
    %! baca.laissez_vibrer()
    \laissezVibrer
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 2]
    %! baca.OverrideCommand._call(1)
    %! baca.clef_whiteout()
    \once \override Staff.Clef.whiteout = 2
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 6
    %! MEASURE_36
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_36
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
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
    %! harmony.sixteenths()
    g,,2
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    g,,8
    \repeatTie

    %! harmony.sixteenths()
    r8
    %! baca.IndicatorCommand._call()
    %! baca.damp()
    - \baca-damp
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 3]
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    %! MEASURE_37
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_37
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
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
    cs'!4
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    cs'8
    %! rmakers.RewriteMeterCommand.__call__
    [
    \repeatTie

    cs'!8
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    cs'4
    \repeatTie
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 4]
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 6.5
    %! harmony.sixteenths()
    f'4
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
    \baca-effort-f
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-tuning-key-glissando-markup
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
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

    %! harmony.sixteenths()
    d'4
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    a'2
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    g4
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    \afterGrace
    %! harmony.sixteenths()
    b4
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
    {

        e8
        %! baca.OverrideCommand._call(2)
        %! baca.dls_staff_padding()
        \revert DynamicLineSpanner.staff-padding

    }


    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 5]
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    %! harmony.sixteenths()
    r4
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

    %! harmony.sixteenths()
    ef'!2.
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

    %! harmony.sixteenths()
    r2
    %! baca.IndicatorCommand._call()
    %! baca.damp()
    - \baca-damp
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Harp_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Harp_Music_Voice measure 6]
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            b'1 * 1/4
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Harp_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Harp_Rest_Voice measure 6]
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \stopStaff
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \startStaff
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/4
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.05.Harp.Music.Staff = <<

    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.05.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Harp_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.05.Harp.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.05.Viola.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 1]
    %! -PARTS
    %! EXPLICIT_BAR_EXTENT
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! -PARTS
    %! REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \set Staff.shortInstrumentName = \harmony-va-markup
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
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-va-markup
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    %! MEASURE_35
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
%%% \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_35
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    %! EXPLICIT_CLEF
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! baca.clef()
    \clef "alto"
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
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
    %! EXPLICIT_STAFF_LINES_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.sixteenths()
    r16
    %! REAPPLIED_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! REAPPLIED_DYNAMIC
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    - \tweak color #(x11-color 'green4)
    %! REAPPLIED_DYNAMIC
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \pp
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Viola”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Va.”]"
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-va-markup
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    ef!16
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
    %! rmakers.RewriteMeterCommand.__call__
    [
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

    ef16
    %! rmakers.RewriteMeterCommand.__call__
    ]

    %! harmony.sixteenths()
    r16
    %! BOW_SPEED_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed

    %! harmony.sixteenths()
    r1

    %! baca._make_multimeasure_rest_container(7)
    <<

        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Viola_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {

            %! baca._comment_measure_numbers()
            % [Viola_Music_Voice measure 2]
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
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! baca._make_multimeasure_rest_container(2)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! baca._make_multimeasure_rest_container(3)
            %@% \abjad-invisible-music
            %! MEASURE_36
            %! SHIFTED_CLEF
            %! baca.OverrideCommand._call(1)
            %! baca.clef_shift()
            %! baca.clef_x_extent_false()
            \once \override Staff.Clef.X-extent = ##f
            %! MEASURE_36
            %! SHIFTED_CLEF
            %! baca.OverrideCommand._call(1)
            %! baca.clef_extra_offset()
            %! baca.clef_shift()
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
            %! EXPLICIT_CLEF
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            %! baca.clef()
            \clef "percussion"
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
            %! EXPLICIT_STAFF_LINES_COLOR
            %! baca._attach_color_literal(2)
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            c'1 * 3/4
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"3" #"4"
            %! -PARTS
            %! EXPLICIT_BAR_EXTENT
            %! baca.IndicatorCommand._call()
            %! baca._set_status_tag()
            \override Staff.BarLine.bar-extent = #'(-2 . 0)
            %! EXPLICIT_CLEF_REDRAW_COLOR
            %! baca._attach_color_literal(2)
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        %! baca._make_multimeasure_rest_container(4)
        }

        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Viola_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {

            %! baca._comment_measure_numbers()
            % [Viola_Rest_Voice measure 2]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 3/4
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"3" #"4"

        %! baca._make_multimeasure_rest_container(6)
        }

    %! baca._make_multimeasure_rest_container(7)
    >>

    %! harmony.sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.sixteenths()
    \times 3/4
    %! harmony.sixteenths()
    {

        %! baca._comment_measure_numbers()
        % [Viola_Music_Voice measure 3]
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
        %! MEASURE_37
        %! SHIFTED_CLEF
        %! baca.OverrideCommand._call(1)
        %! baca.clef_shift()
        %! baca.clef_x_extent_false()
        \once \override Staff.Clef.X-extent = ##f
        %! MEASURE_37
        %! SHIFTED_CLEF
        %! baca.OverrideCommand._call(1)
        %! baca.clef_extra_offset()
        %! baca.clef_shift()
        \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
        %! EXPLICIT_CLEF
        %! baca.IndicatorCommand._call()
        %! baca._set_status_tag()
        %! baca.clef()
        \clef "alto"
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
        %! EXPLICIT_STAFF_LINES_COLOR
        %! baca._attach_color_literal(2)
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        %! harmony.sixteenths()
        r4
        %! EXPLICIT_CLEF_REDRAW_COLOR
        %! baca._attach_color_literal(2)
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        %! harmony.sixteenths()
        f8.
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
        %! AUTODETECT
        %! BOW_SPEED_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.bow_speed_spanner()
        %! BOW_SPEED_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.bow_speed_spanner()
        - \tweak bound-details.right.padding 2.75
        %! BOW_SPEED_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.bow_speed_spanner()
        - \tweak staff-padding 5.5
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

        %! harmony.sixteenths()
        r16

        %! harmony.sixteenths()
        f8.

        %! harmony.sixteenths()
        r16

        %! harmony.sixteenths()
        f8.

        %! harmony.sixteenths()
        r16

    %! harmony.sixteenths()
    }

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 4]
    %! harmony.sixteenths()
    f8.

    %! harmony.sixteenths()
    r16

    %! harmony.sixteenths()
    f8.

    %! harmony.sixteenths()
    r16

    %! harmony.sixteenths()
    r1
    %! METRIC_MODULATION_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.metric_modulation_spanner()
    \bacaStopTextSpanMetricModulation
    %! BOW_SPEED_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 5]
    %! harmony.sixteenths()
    ef!4
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    ef8
    \repeatTie

    %! harmony.sixteenths()
    r8
    %! BOW_SPEED_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed

    %! harmony.sixteenths()
    r2

    %! harmony.sixteenths()
    ef!4
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    %! harmony.sixteenths()
    ef8
    \repeatTie

    %! harmony.sixteenths()
    r8
    %! BOW_SPEED_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Viola_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Viola_Music_Voice measure 6]
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            c'1 * 1/4
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! METRIC_MODULATION_SPANNER
            %! PHANTOM
            %! RIGHT_BROKEN
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(4)
            %! baca._style_phantom_measures(5)
            %! baca.metric_modulation_spanner()
            \bacaStopTextSpanMetricModulation

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Viola_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Viola_Rest_Voice measure 6]
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \stopStaff
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \startStaff
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/4
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.05.Viola.Music.Staff = <<

    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.05.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Viola_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.05.Viola.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.05.Cello.I.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 1]
    %! -PARTS
    %! REAPPLIED_MARGIN_MARKUP
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
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-vc-i-markup
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    %! MEASURE_35
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
%%% \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_35
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! EXPLICIT_CLEF
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! baca.clef()
    \clef "treble"
    %! REAPPLIED_STAFF_LINES_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
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
    %! harmony.sixteenths()
    r16
    %! REAPPLIED_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! REAPPLIED_DYNAMIC
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    - \tweak color #(x11-color 'green4)
    %! REAPPLIED_DYNAMIC
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \pp
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Cello”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Vc. I”]"
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    e'16
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
    %! rmakers.RewriteMeterCommand.__call__
    [
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

    e'16
    %! rmakers.RewriteMeterCommand.__call__
    ]

    %! harmony.sixteenths()
    r16
    %! BOW_SPEED_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed

    %! harmony.sixteenths()
    r1
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! harmony.sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.sixteenths()
    \times 4/5
    %! harmony.sixteenths()
    {

        %! baca._comment_measure_numbers()
        % [Cello_I_Music_Voice measure 2]
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
        %! baca.OverrideCommand._call(1)
        %! baca.stem_down()
        \override Stem.direction = #down
        %! baca.OverrideCommand._call(1)
        %! baca.tuplet_bracket_up()
        \override TupletBracket.direction = #up
        %! baca.OverrideCommand._call(1)
        %! baca.dls_staff_padding()
        \override DynamicLineSpanner.staff-padding = 6
        %! MEASURE_36
        %! SHIFTED_CLEF
        %! baca.OverrideCommand._call(1)
        %! baca.clef_shift()
        %! baca.clef_x_extent_false()
        \once \override Staff.Clef.X-extent = ##f
        %! MEASURE_36
        %! SHIFTED_CLEF
        %! baca.OverrideCommand._call(1)
        %! baca.clef_extra_offset()
        %! baca.clef_shift()
        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
        %! EXPLICIT_CLEF
        %! baca.IndicatorCommand._call()
        %! baca._set_status_tag()
        %! baca.clef()
        \clef "percussion"
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
        %! EXPLICIT_STAFF_LINES_COLOR
        %! baca._attach_color_literal(2)
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        %! harmony.sixteenths()
        c'16
        %! baca.IndicatorCommand._call()
        %! baca.stem_tremolo()
        :32
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
        \ppp
        %! baca.IndicatorCommand._call()
        %! baca.accent()
        - \accent
        %! EXPLICIT_CLEF_REDRAW_COLOR
        %! baca._attach_color_literal(2)
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        %! harmony.sixteenths()
        r8.

        %! baca.OverrideCommand._call(1)
        %! baca.flag_extra_offset()
        \once \override Flag.extra-offset = #'(-2 . 0)
        %! baca.OverrideCommand._call(1)
        %! baca.note_head_extra_offset()
        \once \override NoteHead.extra-offset = #'(-2 . 0)
        %! baca.OverrideCommand._call(1)
        %! baca.script_extra_offset()
        \once \override Script.extra-offset = #'(-2 . 0)
        %! baca.OverrideCommand._call(1)
        %! baca.stem_extra_offset()
        \once \override Stem.extra-offset = #'(-2 . 0)
        %! baca.OverrideCommand._call(1)
        %! baca.stem_tremolo_extra_offset()
        \once \override StemTremolo.extra-offset = #'(-2 . 0)
        %! harmony.sixteenths()
        c'16
        %! baca.IndicatorCommand._call()
        %! baca.stem_tremolo()
        :32
        %! baca.IndicatorCommand._call()
        %! baca.accent()
        - \accent
        %! baca.OverrideCommand._call(2)
        %! baca.stem_down()
        \revert Stem.direction
        %! baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_up()
        \revert TupletBracket.direction
        %! baca.OverrideCommand._call(2)
        %! baca.dls_staff_padding()
        \revert DynamicLineSpanner.staff-padding

    %! harmony.sixteenths()
    }

    %! harmony.sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.sixteenths()
    \times 4/5
    %! harmony.sixteenths()
    {

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
        %! baca.OverrideCommand._call(1)
        %! baca.clef_extra_offset()
        \once \override Staff.Clef.extra-offset = #'(-2 . 0)
        %! baca.OverrideCommand._call(1)
        %! baca.clef_x_extent_false()
        \once \override Staff.Clef.X-extent = ##f
        %! baca.OverrideCommand._call(1)
        %! baca.tuplet_bracket_up()
        \override TupletBracket.direction = #up
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
        %! EXPLICIT_STAFF_LINES_COLOR
        %! baca._attach_color_literal(2)
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        %! harmony.sixteenths()
        r8
        %! EXPLICIT_CLEF_REDRAW_COLOR
        %! baca._attach_color_literal(2)
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        %! baca.OverrideCommand._call(1)
        %! baca.dls_staff_padding()
        \override DynamicLineSpanner.staff-padding = 4
        %! harmony.sixteenths()
        fs!8.
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
        %! baca.IndicatorCommand._call()
        %! baca.accent()
        - \accent
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
        - \tweak staff-padding 8
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

        %! harmony.sixteenths()
        r16

        %! harmony.sixteenths()
        fs!8.
        %! baca.IndicatorCommand._call()
        %! baca.accent()
        - \accent

        %! harmony.sixteenths()
        r16

    %! harmony.sixteenths()
    }

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 3]
    fs!8.
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent

    r16

    fs!4
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    %! METRIC_MODULATION_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.metric_modulation_spanner()
    \bacaStopTextSpanMetricModulation
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    fs8
    \repeatTie

    r16
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 5.5
    fs!16
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
    \mp
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    %! baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 4]
    %! harmony.sixteenths()
    f2.
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(2)
    %! baca.hairpin()
    \!
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! DAMP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.damp_spanner()
    \bacaStopTextSpanDamp
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
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
    %! AUTODETECT
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \tweak bound-details.right.padding 3.25
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \tweak staff-padding 8
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \abjad-dashed-line-with-hook
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \baca-text-spanner-left-text "½ clt"
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    \bacaStartTextSpanHalfCLT

    %! harmony.sixteenths()
    g8
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    a,16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    d16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    b,16
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    a8.
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    b,4
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
    \baca-effort-f
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 5]
    %! harmony.sixteenths()
    e8
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
    \baca-effort-f
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
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

    %! harmony.sixteenths()
    c16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    b16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    c16
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    f8.
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    d8
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    c'16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    d16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    a16
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    f8.
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    e'2
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Cello_I_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Cello_I_Music_Voice measure 6]
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            d1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! baca.treat_persistent_wrapper()
            %! EXPLICIT_DYNAMIC
            %! PHANTOM
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(3)
            %! baca._set_status_tag()
            %! baca._style_phantom_measures(5)
            %! baca.hairpin()
            - \tweak color #(x11-color 'blue)
            %! EXPLICIT_DYNAMIC
            %! PHANTOM
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(3)
            %! baca._set_status_tag()
            %! baca._style_phantom_measures(5)
            %! baca.hairpin()
            \!
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! HALF_CLT_SPANNER
            %! PHANTOM
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(4)
            %! baca._style_phantom_measures(5)
            %! baca.half_clt_spanner()
            \bacaStopTextSpanHalfCLT

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Cello_I_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Cello_I_Rest_Voice measure 6]
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \stopStaff
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \startStaff
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/4
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.05.Cello.I.Music.Staff = <<

    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.05.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Cello_I_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.05.Cello.I.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.05.Cello.II.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 1]
    %! -PARTS
    %! REAPPLIED_MARGIN_MARKUP
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
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-vc-ii-markup
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    %! MEASURE_35
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
%%% \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_35
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! EXPLICIT_CLEF
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! baca.clef()
    \clef "treble"
    %! REAPPLIED_STAFF_LINES_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
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
    %! harmony.sixteenths()
    r16
    %! REAPPLIED_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! REAPPLIED_DYNAMIC
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    - \tweak color #(x11-color 'green4)
    %! REAPPLIED_DYNAMIC
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \pp
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Cello”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Vc. II”]"
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    eqf'!16
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
    %! rmakers.RewriteMeterCommand.__call__
    [
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

    eqf'16
    %! rmakers.RewriteMeterCommand.__call__
    ]

    %! harmony.sixteenths()
    r16
    %! BOW_SPEED_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed

    %! harmony.sixteenths()
    r1

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 2]
    %! MEASURE_36
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_36
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
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
    %! harmony.sixteenths()
    g,2
    %! baca.IndicatorCommand._call()
    %! baca.stem_tremolo()
    :32
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
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
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
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \tweak staff-padding 3
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \abjad-dashed-line-with-hook
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \baca-text-spanner-left-text "P1"
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    \bacaStartTextSpanSCP
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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
    \afterGrace
    %! harmony.sixteenths()
    g,8
    %! baca.IndicatorCommand._call()
    %! baca.stem_tremolo()
    :32
    {

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
        f,8

    }


    %! harmony.sixteenths()
    r8
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
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 3]
    %! REPEAT_PITCH_CLASS_COLORING
    %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    f2.
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
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
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 4]
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 5.5
    %! REPEAT_PITCH_CLASS_COLORING
    %! baca.color_repeat_pitch_classes()
    \baca-repeat-pitch-class-coloring
    %! harmony.sixteenths()
    f2.
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(2)
    %! baca.hairpin()
    \!
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! DAMP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.damp_spanner()
    \bacaStopTextSpanDamp
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
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
    %! AUTODETECT
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \tweak bound-details.right.padding 3.25
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \tweak staff-padding 8
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \abjad-dashed-line-with-hook
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \baca-text-spanner-left-text "½ clt"
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    \bacaStartTextSpanHalfCLT

    %! harmony.sixteenths()
    a,8
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    d16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    b,16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    a16
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    b,8.
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    e4
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
    \baca-effort-f
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 5]
    %! harmony.sixteenths()
    c8
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
    \baca-effort-f
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
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

    %! harmony.sixteenths()
    b16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    c16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    f16
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    d8.
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    c'8
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    d16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    a16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    f16
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    g8.
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    e'2
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Cello_II_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Cello_II_Music_Voice measure 6]
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            d1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! baca.treat_persistent_wrapper()
            %! EXPLICIT_DYNAMIC
            %! PHANTOM
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(3)
            %! baca._set_status_tag()
            %! baca._style_phantom_measures(5)
            %! baca.hairpin()
            - \tweak color #(x11-color 'blue)
            %! EXPLICIT_DYNAMIC
            %! PHANTOM
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(3)
            %! baca._set_status_tag()
            %! baca._style_phantom_measures(5)
            %! baca.hairpin()
            \!
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! HALF_CLT_SPANNER
            %! PHANTOM
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(4)
            %! baca._style_phantom_measures(5)
            %! baca.half_clt_spanner()
            \bacaStopTextSpanHalfCLT

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Cello_II_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Cello_II_Rest_Voice measure 6]
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \stopStaff
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \startStaff
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/4
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.05.Cello.II.Music.Staff = <<

    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.05.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Cello_II_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.05.Cello.II.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.05.Contrabass.I.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 1]
    %! -PARTS
    %! REAPPLIED_MARGIN_MARKUP
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
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-cb-i-markup
    %! MEASURE_35
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
%%% \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_35
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    %! EXPLICIT_CLEF
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! baca.clef()
    \clef "bass"
    %! REAPPLIED_STAFF_LINES_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
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
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Cb. I”]"
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
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
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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

    %! baca.make_repeated_duration_notes()
    e,4

    %! baca.make_repeated_duration_notes()
    e,4

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
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(3)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 2]
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
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 6
    %! MEASURE_36
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_36
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! EXPLICIT_CLEF
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! baca.clef()
    \clef "percussion"
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
    %! EXPLICIT_STAFF_LINES_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    %! harmony.sixteenths()
    r4
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! baca.OverrideCommand._call(1)
    %! baca.stem_down()
    \override Stem.direction = #down
    %! harmony.sixteenths()
    c'16
    %! baca.IndicatorCommand._call()
    %! baca.stem_tremolo()
    :32
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent

    %! harmony.sixteenths()
    r8.

    %! harmony.sixteenths()
    r16

    %! harmony.sixteenths()
    c'16
    %! baca.IndicatorCommand._call()
    %! baca.stem_tremolo()
    :32
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
    \ppp
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    %! baca.OverrideCommand._call(2)
    %! baca.stem_down()
    \revert Stem.direction

    %! harmony.sixteenths()
    r8
    %! baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 3]
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
    %! baca.OverrideCommand._call(1)
    %! baca.note_head_style_harmonic()
    \override NoteHead.style = #'harmonic
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    %! MEASURE_37
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_37
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
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
    %! EXPLICIT_STAFF_LINES_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    aqs'!8.
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-eleven-e
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak X-offset 2.5
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak padding 1
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    _ \baca-string-iv-markup
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! AUTODETECT
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    - \tweak bound-details.right.padding 2.75
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    - \tweak staff-padding 5.5
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    - \abjad-dashed-line-with-hook
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    - \baca-text-spanner-left-markup \baca-pizz-markup
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    - \tweak bound-details.left-broken.text \baca-pizz-markup
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    \bacaStartTextSpanPizzicato
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    aqs'!16
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    %! rmakers.RewriteMeterCommand.__call__
    ]
    ~

    aqs'4
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~

    aqs'8
    %! rmakers.RewriteMeterCommand.__call__
    [
    \repeatTie
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 5.5
    aqs'!8
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
    \mp
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca.OverrideCommand._call(2)
    %! baca.note_head_style_harmonic()
    \revert NoteHead.style

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 4]
    %! MEASURE_38
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_38
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
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
    %! harmony.sixteenths()
    f'2.
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(2)
    %! baca.hairpin()
    \!
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! PIZZICATO_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.pizzicato_spanner()
    \bacaStopTextSpanPizzicato
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
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
    %! AUTODETECT
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \tweak bound-details.right.padding 3.25
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \tweak staff-padding 8
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \abjad-dashed-line-with-hook
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \baca-text-spanner-left-text "½ clt"
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    \bacaStartTextSpanHalfCLT
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    g8.
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    c'16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    d16
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    f16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    e8
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    a4
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
    \baca-effort-f
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 5]
    %! harmony.sixteenths()
    b,16
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
    \baca-effort-f
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
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

    %! harmony.sixteenths()
    d16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    c16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    f16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    g,2
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    b,8.
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    a,16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    d16
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    f,16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    g,8
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    e,4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Contrabass_I_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Contrabass_I_Music_Voice measure 6]
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            d1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! baca.treat_persistent_wrapper()
            %! EXPLICIT_DYNAMIC
            %! PHANTOM
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(3)
            %! baca._set_status_tag()
            %! baca._style_phantom_measures(5)
            %! baca.hairpin()
            - \tweak color #(x11-color 'blue)
            %! EXPLICIT_DYNAMIC
            %! PHANTOM
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(3)
            %! baca._set_status_tag()
            %! baca._style_phantom_measures(5)
            %! baca.hairpin()
            \!
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! HALF_CLT_SPANNER
            %! PHANTOM
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(4)
            %! baca._style_phantom_measures(5)
            %! baca.half_clt_spanner()
            \bacaStopTextSpanHalfCLT

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Contrabass_I_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Contrabass_I_Rest_Voice measure 6]
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \stopStaff
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \startStaff
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/4
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.05.Contrabass.I.Music.Staff = <<

    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.05.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Contrabass_I_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.05.Contrabass.I.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.05.Contrabass.II.Music.Voice = {

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 1]
    %! EXPLICIT_BAR_EXTENT
    %! REAPPLIED_BAR_EXTENT
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! -PARTS
    %! REAPPLIED_MARGIN_MARKUP
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
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-cb-ii-markup
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \clef "bass"
    %! REAPPLIED_CLEF_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
    %! REAPPLIED_STAFF_LINES_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
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
    %! baca.make_repeated_duration_notes()
    e,4
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Cb. II”]"
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
    %! REDUNDANT_DYNAMIC_COLOR
    %! baca.treat_persistent_wrapper()
    %! LEFT_BROKEN
    %! REDUNDANT_DYNAMIC
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca._set_status_tag()
    %! baca.hairpin()
    - \tweak color #(x11-color 'DeepPink1)
    %! LEFT_BROKEN
    %! REDUNDANT_DYNAMIC
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca._set_status_tag()
    %! baca.hairpin()
    - \tweak circled-tip ##t
    %! LEFT_BROKEN
    %! REDUNDANT_DYNAMIC
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca._set_status_tag()
    %! baca.hairpin()
    \<
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \tweak staff-padding 5.5
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \abjad-solid-line-with-arrow
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \baca-text-spanner-left-text "(T1)"
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    \bacaStartTextSpanSCP
    %! REAPPLIED_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup

    %! HIDE_TO_JOIN_BROKEN_SPANNERS
    %! LEFT_BROKEN
    %! abjad.glissando(3)
    %! baca.glissando()
    \override NoteColumn.glissando-skip = ##t
    %! baca.make_repeated_duration_notes()
    e,4

    %! baca.make_repeated_duration_notes()
    e,4
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP
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
    - \tweak staff-padding 5.5
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

    %! baca.make_repeated_duration_notes()
    e,4

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
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(3)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 2]
    %! harmony.sixteenths()
    g2
    %! baca.IndicatorCommand._call()
    %! baca.stem_tremolo()
    :32
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
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
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
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \tweak staff-padding 5.5
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \abjad-dashed-line-with-hook
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \baca-text-spanner-left-text "P1"
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    \bacaStartTextSpanSCP

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
    \afterGrace
    %! harmony.sixteenths()
    g8
    %! baca.IndicatorCommand._call()
    %! baca.stem_tremolo()
    :32
    {

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
        fs!8

    }


    %! harmony.sixteenths()
    r8
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
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 3]
    %! baca.OverrideCommand._call(1)
    %! baca.note_head_style_harmonic()
    \override NoteHead.style = #'harmonic
    %! MEASURE_37
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_37
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
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
    fs'!2
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak padding 1
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-string-iv-markup
    %! AUTODETECT
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    - \tweak bound-details.right.padding 2.75
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    - \tweak staff-padding 5.5
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    - \abjad-dashed-line-with-hook
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    - \baca-text-spanner-left-markup \baca-pizz-markup
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    - \tweak bound-details.left-broken.text \baca-pizz-markup
    %! PIZZICATO_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.pizzicato_spanner()
    \bacaStartTextSpanPizzicato
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    fs'16
    %! rmakers.RewriteMeterCommand.__call__
    [
    \repeatTie

    fs'!8.
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! baca.OverrideCommand._call(2)
    %! baca.note_head_style_harmonic()
    \revert NoteHead.style

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 4]
    %! MEASURE_38
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_38
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
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
    %! harmony.sixteenths()
    f'2
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(2)
    %! baca.hairpin()
    \!
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! PIZZICATO_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.pizzicato_spanner()
    \bacaStopTextSpanPizzicato
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
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
    %! AUTODETECT
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \tweak bound-details.right.padding 3.25
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \tweak staff-padding 8
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \abjad-dashed-line-with-hook
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \baca-text-spanner-left-text "½ clt"
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    %! HALF_CLT_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.half_clt_spanner()
    \bacaStartTextSpanHalfCLT
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    %! harmony.sixteenths()
    g8.
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    c'16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    d16
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    f16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    e8
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    a2
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
    \baca-effort-f
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 5]
    %! harmony.sixteenths()
    b,16
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
    \baca-effort-f
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando
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

    %! harmony.sixteenths()
    d16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    c16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    f16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    g,4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    b,8.
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    a,16
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    d16
    %! rmakers.RewriteMeterCommand.__call__
    [
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    f,16
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    g,8
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-downbow
    %! rmakers.RewriteMeterCommand.__call__
    ]
    %! abjad.glissando(7)
    %! baca.glissando()
    \glissando

    %! harmony.sixteenths()
    e,2
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.alternate_bow_strokes()
    - \baca-full-upbow
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Contrabass_II_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Contrabass_II_Music_Voice measure 6]
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            d1 * 1/4
            %! EXPLICIT_DYNAMIC_COLOR
            %! baca.treat_persistent_wrapper()
            %! EXPLICIT_DYNAMIC
            %! PHANTOM
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(3)
            %! baca._set_status_tag()
            %! baca._style_phantom_measures(5)
            %! baca.hairpin()
            - \tweak color #(x11-color 'blue)
            %! EXPLICIT_DYNAMIC
            %! PHANTOM
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(3)
            %! baca._set_status_tag()
            %! baca._style_phantom_measures(5)
            %! baca.hairpin()
            \!
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            %! HALF_CLT_SPANNER
            %! PHANTOM
            %! SPANNER_STOP
            %! baca.PiecewiseCommand._call(4)
            %! baca._style_phantom_measures(5)
            %! baca.half_clt_spanner()
            \bacaStopTextSpanHalfCLT

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Contrabass_II_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Contrabass_II_Rest_Voice measure 6]
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \stopStaff
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(8)
            \startStaff
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/4
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }

    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>

%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.05.Contrabass.II.Music.Staff = <<

    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.05.Global.Rests }

    %! harmony.make_empty_score()
    \context Voice = "Contrabass_II_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.05.Contrabass.II.Music.Voice }

%! harmony.make_empty_score()
%! baca.path.extern()
>>
