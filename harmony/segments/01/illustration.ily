%! ide.Path.extern()
a_Global_Skips = { %! ide.Path.extern()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Global_Skips measure 1] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.SegmentMaker._make_global_skips(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 6/4 %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 3/2 %! baca.SegmentMaker._make_global_skips(1)
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "1" %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "1"     %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN     %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    - \baca-start-snm-left-only "[A.1]" %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2)
%@% - \abjad-invisible-line     %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "96"     %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM     %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    - \abjad-invisible-line %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "96" #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
%@% - \baca-start-ct-left-only "[0'00'']"     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Global_Skips measure 2] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.bar_line()
    %! baca.IndicatorCommand._call()
    \bar ".|:" %! baca.bar_line():baca.IndicatorCommand._call()
    %! baca.bar_line_x_extent()
    %! NOT_MOL
    %! MEASURE_2
    %! baca.OverrideCommand._call(1)
%%% \once \override Score.BarLine.X-extent = #'(0 . 2) %! baca.bar_line_x_extent():NOT_MOL:MEASURE_2:baca.OverrideCommand._call(1)
    %! baca.bar_line_x_extent()
    %! ONLY_MOL
    %! MEASURE_2
    %! baca.OverrideCommand._call(1)
    \once \override Score.BarLine.X-extent = #'(0 . 3) %! baca.bar_line_x_extent():ONLY_MOL:MEASURE_2:baca.OverrideCommand._call(1)
    %! baca.SegmentMaker._make_global_skips(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 5/4 %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 5/4 %! baca.SegmentMaker._make_global_skips(1)
    %! baca.rehearsal_mark()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    - \tweak extra-offset #'(0 . 18) %! baca.rehearsal_mark():-PARTS:baca.IndicatorCommand._call()
    %! baca.rehearsal_mark()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    - \baca-rehearsal-mark-markup "A" #10 %! baca.rehearsal_mark():-PARTS:baca.IndicatorCommand._call()
    %! baca.rehearsal_mark()
    %! +PARTS
    %! baca.IndicatorCommand._call()
%%% - \tweak extra-offset #'(0 . 10) %! baca.rehearsal_mark():+PARTS:baca.IndicatorCommand._call()
    %! baca.rehearsal_mark()
    %! +PARTS
    %! baca.IndicatorCommand._call()
%%% - \baca-rehearsal-mark-markup "A" #4 %! baca.rehearsal_mark():+PARTS:baca.IndicatorCommand._call()
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanLMN %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN     %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanSNM %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
%@% \bacaStopTextSpanCT     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "2" %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "2"     %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN     %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    - \baca-start-snm-left-only "[A.2]" %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
%@% - \baca-start-ct-left-only "[0'03'']"     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Global_Skips measure 3] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.SegmentMaker._make_global_skips(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    \time 3/4 %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #'blue %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    %! baca.SegmentMaker._make_global_skips(1)
    s1 * 3/4 %! baca.SegmentMaker._make_global_skips(1)
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanLMN %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN     %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanSNM %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    %! baca.SegmentMaker._attach_metronome_marks(1)
    \bacaStopTextSpanMM %! baca.SegmentMaker._attach_metronome_marks(1)
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
%@% \bacaStopTextSpanCT     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    - \baca-start-lmn-left-only "3" %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "3"     %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN     %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    - \baca-start-snm-colored-left-only "[▶C.1]" #darkgreen %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
%@% - \abjad-invisible-line     %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.1):METRIC_MODULATION_IS_NOT_SCALED
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
%@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1)     %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.1):METRIC_MODULATION_IS_NOT_SCALED
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.1)
    %! METRIC_MODULATION_IS_NOT_SCALED
%@% \bacaStartTextSpanMM     %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.1):METRIC_MODULATION_IS_NOT_SCALED
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
%@% - \abjad-invisible-line     %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_SCALED
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
%@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(0.525 . 0.525)     %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_SCALED
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_SCALED
%@% \bacaStartTextSpanMM     %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_SCALED
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
%@% - \abjad-invisible-line     %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_STRIPPED
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
%@% - \baca-metronome-mark-spanner-left-text-mixed-number 2 0 1 "57" "3" "5"     %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_STRIPPED
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_METRONOME_MARK
    %! baca.SegmentMaker._attach_metronome_marks(2.2)
    %! METRIC_MODULATION_IS_STRIPPED
%@% \bacaStartTextSpanMM     %! baca.SegmentMaker._set_status_tag():EXPLICIT_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2.2):METRIC_MODULATION_IS_STRIPPED
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    - \abjad-invisible-line %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    %! baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
%@% - \baca-start-ct-both "[0'06'']" "[0'10'']"     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    %! baca.bar_line()
    %! baca.IndicatorCommand._call()
    \bar ":|." %! baca.bar_line():baca.IndicatorCommand._call()
    %! baca.bar_line_x_extent()
    %! ONLY_MOL
    %! MEASURE_4
    %! baca.OverrideCommand._call(1)
%%% \once \override Score.BarLine.X-extent = #'(0 . 1.5) %! baca.bar_line_x_extent():ONLY_MOL:MEASURE_4:baca.OverrideCommand._call(1)

    %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.SegmentMaker._style_phantom_measures(1)
    %! PHANTOM
    % [01 Global_Skips measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    %! baca.SegmentMaker._make_global_skips(3)
    %! PHANTOM
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_TIME_SIGNATURE
    %! baca.SegmentMaker._style_phantom_measures(1)
    \time 1/4 %! baca.SegmentMaker._make_global_skips(3):PHANTOM:baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE:baca.SegmentMaker._style_phantom_measures(1)
    %! baca.SegmentMaker._style_phantom_measures(2)
    %! PHANTOM
    \baca-time-signature-transparent %! baca.SegmentMaker._style_phantom_measures(2):PHANTOM
    %! baca.SegmentMaker._make_global_skips(3)
    %! PHANTOM
    s1 * 1/4 %! baca.SegmentMaker._make_global_skips(3):PHANTOM
    %! LOCAL_MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %! baca.SegmentMaker._style_phantom_measures(1)
    %! PHANTOM
    \bacaStopTextSpanLMN %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    %! MEASURE_NUMBER
    %! baca.SegmentMaker._label_measure_numbers()
    %! baca.SegmentMaker._style_phantom_measures(1)
    %! PHANTOM
%@% \bacaStopTextSpanMN     %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    %! STAGE_NUMBER
    %! baca.SegmentMaker._label_stage_numbers()
    %! baca.SegmentMaker._style_phantom_measures(1)
    %! PHANTOM
    \bacaStopTextSpanSNM %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    %! EOS_STOP_MM_SPANNER
    %! baca.SegmentMaker._attach_metronome_marks(4)
    %! baca.SegmentMaker._style_phantom_measures(1)
    %! PHANTOM
    \bacaStopTextSpanMM %! EOS_STOP_MM_SPANNER:baca.SegmentMaker._attach_metronome_marks(4):baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    %! CLOCK_TIME
    %! baca.SegmentMaker._label_clock_time()
    %! baca.SegmentMaker._style_phantom_measures(1)
    %! PHANTOM
%@% \bacaStopTextSpanCT     %! CLOCK_TIME:baca.SegmentMaker._label_clock_time():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
    %! baca.SegmentMaker._style_phantom_measures(3)
    %! PHANTOM
    \once \override Score.BarLine.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(3):PHANTOM
    %! baca.SegmentMaker._style_phantom_measures(3)
    %! PHANTOM
    \once \override Score.SpanBar.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(3):PHANTOM

%! abjad.ScoreTemplate._make_global_context()
%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Global_Rests = { %! ide.Path.extern()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Global_Rests measure 1] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 3/2 %! baca.SegmentMaker._make_global_rests(1)

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Global_Rests measure 2] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 5/4 %! baca.SegmentMaker._make_global_rests(1)

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Global_Rests measure 3] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.SegmentMaker._make_global_rests(1)
    R1 * 3/4 %! baca.SegmentMaker._make_global_rests(1)

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Global_Rests measure 4] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.SegmentMaker._make_global_rests(2)
    %! PHANTOM
    R1 * 1/4 %! baca.SegmentMaker._make_global_rests(2):PHANTOM

%! abjad.ScoreTemplate._make_global_context()
%! NOT_TOPMOST
%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Bass_Flute_Music_Voice_A = { %! ide.Path.extern()

    %! abjad.on_beat_grace_container(4)
    \voiceTwo %! abjad.on_beat_grace_container(4)
    %! harmony.appoggiato()
    a'2... %! harmony.appoggiato()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-f-mp %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-up-hook %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-sounds-ottava-higher-markup %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.text_spanner():baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak direction #down %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 8 %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \startTextSpan %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START

%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Bass_Flute_Music_Voice_B = { %! ide.Path.extern()

    %! abjad.on_beat_grace_container(4)
    \voiceTwo %! abjad.on_beat_grace_container(4)
    %! harmony.appoggiato()
    a'4.. %! harmony.appoggiato()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-mf-mp %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Bass_Flute_Music_Voice_C = { %! ide.Path.extern()

    %! abjad.on_beat_grace_container(4)
    \voiceTwo %! abjad.on_beat_grace_container(4)
    a'8.
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-f-mp %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    a'2
    \repeatTie

%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Bass_Flute_Music_Voice_D = { %! ide.Path.extern()

    %! abjad.on_beat_grace_container(4)
    \voiceTwo %! abjad.on_beat_grace_container(4)
    %! harmony.appoggiato()
    a'4.. %! harmony.appoggiato()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-mf-mp %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    %! baca.dots_x_extent_false()
    %! baca.OverrideCommand._call(2)
    \revert Dots.X-extent %! baca.dots_x_extent_false():baca.OverrideCommand._call(2)
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Bass_Flute_Music_Voice = { %! ide.Path.extern()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Bass_Flute_Music_Voice measure 1] %! baca.SegmentMaker._comment_measure_numbers()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2) %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-bfl-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_MARGIN_MARKUP
    %! baca.start_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-bass-flute-markup %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 5 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! baca.dots_x_extent_false()
    %! baca.OverrideCommand._call(1)
    \override Dots.X-extent = ##f %! baca.dots_x_extent_false():baca.OverrideCommand._call(1)
    %! abjad.ScoreTemplate.attach_defaults(3)
    %! baca.SegmentMaker._set_status_tag()
    %! DEFAULT_CLEF
    \clef "treble" %! abjad.ScoreTemplate.attach_defaults(3):baca.SegmentMaker._set_status_tag():DEFAULT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! DEFAULT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet) %! baca.SegmentMaker._attach_color_literal(2):DEFAULT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! DEFAULT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):DEFAULT_CLEF_COLOR_CANCELLATION
    %! abjad.ScoreTemplate.attach_defaults(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! DEFAULT_CLEF
    \set Staff.forceClef = ##t %! abjad.ScoreTemplate.attach_defaults(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():DEFAULT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_MARGIN_MARKUP_COLOR
%@% \once \override Staff.InstrumentName.color = #(x11-color 'blue)     %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_MARGIN_MARKUP_COLOR
    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! DEFAULT_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-default-indicator-markup "(“BassFlute”)"     %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! EXPLICIT_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-explicit-indicator-markup "[“Bfl.”]"     %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "appoggiato(divisions=[16, 8, 12, 8], counts=[9, 6, 8, 4], incise=True, prefix_talea=[-1], prefix_counts=[1])"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_color_literal(2)
    %! DEFAULT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'violet) %! baca.SegmentMaker._attach_color_literal(2):DEFAULT_CLEF_REDRAW_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
%@% \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-bfl-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_EXPLICIT_MARGIN_MARKUP

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3 %! abjad.on_beat_grace_container(1)

            %! abjad.on_beat_grace_container(2)
            \slash %! abjad.on_beat_grace_container(2)
            %! abjad.on_beat_grace_container(3)
            \voiceOne %! abjad.on_beat_grace_container(3)
            <
                \tweak font-size 0
                \tweak transparent ##t
                a'
                cs'''!
            >8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            d'''8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            as''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            b''8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            bqs''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            c'''8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            cqs'''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            cs'''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            b''8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        %! ide.Path.extern()
        \a_Bass_Flute_Music_Voice_A %! ide.Path.extern()

    >>
    %! abjad.on_beat_grace_container(5)
    \oneVoice %! abjad.on_beat_grace_container(5)

    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3 %! abjad.on_beat_grace_container(1)

            %! abjad.on_beat_grace_container(2)
            \slash %! abjad.on_beat_grace_container(2)
            %! abjad.on_beat_grace_container(3)
            \voiceOne %! abjad.on_beat_grace_container(3)
            <
                \tweak font-size 0
                \tweak transparent ##t
                a'
                cs'''!
            >8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            ctqs'''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            d'''8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            dqs'''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            cs'''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            d'''8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        %! ide.Path.extern()
        \a_Bass_Flute_Music_Voice_B %! ide.Path.extern()

    >>
    %! abjad.on_beat_grace_container(5)
    \oneVoice %! abjad.on_beat_grace_container(5)

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Bass_Flute_Music_Voice measure 2] %! baca.SegmentMaker._comment_measure_numbers()
    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3 %! abjad.on_beat_grace_container(1)

            %! abjad.on_beat_grace_container(2)
            \slash %! abjad.on_beat_grace_container(2)
            %! abjad.on_beat_grace_container(3)
            \voiceOne %! abjad.on_beat_grace_container(3)
            <
                \tweak font-size 0
                \tweak transparent ##t
                a'
                as''!
            >8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            b''8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            bqs''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            c'''8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            cqs'''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            cs'''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            b''8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            cs'''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        %! ide.Path.extern()
        \a_Bass_Flute_Music_Voice_C %! ide.Path.extern()

    >>
    %! abjad.on_beat_grace_container(5)
    \oneVoice %! abjad.on_beat_grace_container(5)

    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            %! abjad.on_beat_grace_container(1)
            \set fontSize = #-3 %! abjad.on_beat_grace_container(1)

            %! abjad.on_beat_grace_container(2)
            \slash %! abjad.on_beat_grace_container(2)
            %! abjad.on_beat_grace_container(3)
            \voiceOne %! abjad.on_beat_grace_container(3)
            <
                \tweak font-size 0
                \tweak transparent ##t
                a'
                ctqs'''!
            >8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            [
            (

            d'''8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            dqs'''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

            cs'''!8 * 2/5
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        %! ide.Path.extern()
        \a_Bass_Flute_Music_Voice_D %! ide.Path.extern()

    >>

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Bass_Flute_Music_Voice measure 3] %! baca.SegmentMaker._comment_measure_numbers()
    %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice()
    %! ONE_VOICE_COMMAND
    \oneVoice %! abjad.OnBeatGraceContainer._attach_lilypond_one_voice():ONE_VOICE_COMMAND
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 3 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! harmony.sixteenths()
    r2 %! harmony.sixteenths()
    %! baca.text_spanner()
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \stopTextSpan %! baca.text_spanner():baca.PiecewiseCommand._call(4):SPANNER_STOP
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([-10, 1, -9, 1, -8, 1, -7, 1, -6, 1, -5, 1, -4, 1, -3, 1, '-'], talea_denominator=16)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! harmony.sixteenths()
    r8 %! harmony.sixteenths()

    %! harmony.sixteenths()
    f'16 %! harmony.sixteenths()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-cov-markup %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 3.25 %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.covered_spanner()
    %! COVERED_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanCovered %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! harmony.sixteenths()
    r16 %! harmony.sixteenths()
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    << %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Bass_Flute_Music_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Bass_Flute_Music_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music     %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            b'1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.covered_spanner()
            %! COVERED_SPANNER
            %! baca.PiecewiseCommand._call(4)
            %! SPANNER_STOP
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \bacaStopTextSpanCovered %! baca.covered_spanner():COVERED_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Bass_Flute_Rest_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Bass_Flute_Rest_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >> %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Bass_Flute_Music_Staff = << %! ide.Path.extern()

    %! abjad.ScoreTemplate._make_global_context()
    \context GlobalRests = "Global_Rests" %! abjad.ScoreTemplate._make_global_context()
    %! abjad.ScoreTemplate._make_global_context()
    %! ide.Path.extern()
    \a_Global_Rests %! ide.Path.extern()

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Bass_Flute_Music_Voice" %! harmony.ScoreTemplate.__call__()
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \a_Bass_Flute_Music_Voice %! ide.Path.extern()

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>> %! ide.Path.extern()


%! ide.Path.extern()
a_Percussion_I_Music_Voice = { %! ide.Path.extern()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Percussion_I_Music_Voice measure 1] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-perc-i-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_MARGIN_MARKUP
    %! baca.start_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-percussion-i-markup %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0) %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_1
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_1:baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_1
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0) %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_1:baca.OverrideCommand._call(1)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "percussion" %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_MARGIN_MARKUP_COLOR
%@% \once \override Staff.InstrumentName.color = #(x11-color 'blue)     %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! harmony.sixteenths()
    r1 %! harmony.sixteenths()
    %! DEFAULT_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-default-indicator-markup "(“Percussion”)"     %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! EXPLICIT_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-explicit-indicator-markup "[“Perc. I”]"     %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths(['-', 3, 1], written_quarters=True, invisible_pairs=True, talea_denominator=16)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
%@% \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-perc-i-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_EXPLICIT_MARGIN_MARKUP
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    %! harmony.sixteenths()
    r4 %! harmony.sixteenths()

    %! baca.stem_down()
    %! baca.OverrideCommand._call(1)
    \override Stem.direction = #down %! baca.stem_down():baca.OverrideCommand._call(1)
    %! harmony.sixteenths()
    b4 * 3/4 %! harmony.sixteenths()
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak self-alignment-X 0.25 %! baca.markup():baca.IndicatorCommand._call()
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6 %! baca.markup():baca.IndicatorCommand._call()
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-bd-superball-markup %! baca.markup():baca.IndicatorCommand._call()
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
%@% ^ \baca-duration-multiplier-markup #"3" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \< %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
%@% \abjad-invisible-music     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    %! harmony.sixteenths()
    b4 * 1/4 %! harmony.sixteenths()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
%@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    %! baca.breathe()
    %! baca.IndicatorCommand._call()
    \breathe %! baca.breathe():baca.IndicatorCommand._call()
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Percussion_I_Music_Voice measure 2] %! baca.SegmentMaker._comment_measure_numbers()
    %! harmony.sixteenths()
    b4 * 3/4 %! harmony.sixteenths()
    %! baca.laissez_vibrer()
    %! baca.IndicatorCommand._call()
    \laissezVibrer %! baca.laissez_vibrer():baca.IndicatorCommand._call()
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
%@% ^ \baca-duration-multiplier-markup #"3" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \< %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([3, 1, '-', 3, 1], written_quarters=True, invisible_pairs=True, talea_denominator=16)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
%@% \abjad-invisible-music     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    %! harmony.sixteenths()
    b4 * 1/4 %! harmony.sixteenths()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
%@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    %! harmony.sixteenths()
    r2. %! harmony.sixteenths()

    %! harmony.sixteenths()
    b4 * 3/4 %! harmony.sixteenths()
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
%@% ^ \baca-duration-multiplier-markup #"3" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak stencil #abjad-flared-hairpin %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \< %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COMMAND
%@% \abjad-invisible-music     %! harmony.sixteenths():INVISIBLE_MUSIC_COMMAND
    %! harmony.sixteenths()
    %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring %! harmony.sixteenths():INVISIBLE_MUSIC_COLORING
    %! harmony.sixteenths()
    b4 * 1/4 %! harmony.sixteenths()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.SegmentMaker._label_duration_multipliers()
    %! DURATION_MULTIPLIER
%@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
    %! baca.breathe()
    %! baca.IndicatorCommand._call()
    \breathe %! baca.breathe():baca.IndicatorCommand._call()
    %! baca.stem_down()
    %! baca.OverrideCommand._call(2)
    \revert Stem.direction %! baca.stem_down():baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(2)
    \revert TupletBracket.direction %! baca.tuplet_bracket_up():baca.OverrideCommand._call(2)
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Percussion_I_Music_Voice measure 3] %! baca.SegmentMaker._comment_measure_numbers()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 1) %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.staff-padding = 0.5 %! baca.tuplet_bracket_staff_padding():baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 5.5 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! harmony.phjc()
    r2 %! harmony.phjc()
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "phjc([2, 1, 1], [2, 2, 2, 2, 2, 2, 2, 1], extra_counts=[2], rest_most=True)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text %! harmony.phjc()
    %! harmony.phjc()
    \times 2/3 %! harmony.phjc()
    %! harmony.phjc()
    { %! harmony.phjc()

        %! harmony.phjc()
        r8 %! harmony.phjc()

        %! baca.stem_down()
        %! baca.OverrideCommand._call(1)
        \override Stem.direction = #down %! baca.stem_down():baca.OverrideCommand._call(1)
        %! harmony.phjc()
        c'8 %! harmony.phjc()
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \f %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        - \tweak self-alignment-X 0.25 %! baca.markup():baca.IndicatorCommand._call()
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        - \tweak staff-padding 6 %! baca.markup():baca.IndicatorCommand._call()
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        ^ \baca-purpleheart-markup %! baca.markup():baca.IndicatorCommand._call()
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \> %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %! harmony.phjc()
        [ %! harmony.phjc()

        %! harmony.phjc()
        c'16 %! harmony.phjc()

        %! harmony.phjc()
        a16 %! harmony.phjc()
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \p %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %! harmony.phjc()
        ] %! harmony.phjc()
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(2)
        \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
        %! baca.stem_down()
        %! baca.OverrideCommand._call(2)
        \revert Stem.direction %! baca.stem_down():baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.direction %! baca.tuplet_bracket_up():baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_staff_padding()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.staff-padding %! baca.tuplet_bracket_staff_padding():baca.OverrideCommand._call(2)
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(2)
        \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(4)
        %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! harmony.phjc()
    } %! harmony.phjc()

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    << %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Percussion_I_Music_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Percussion_I_Music_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music     %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            c'1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Percussion_I_Rest_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Percussion_I_Rest_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >> %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Percussion_I_Music_Staff = << %! ide.Path.extern()

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests" %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \a_Global_Rests %! ide.Path.extern():NOT_TOPMOST

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Percussion_I_Music_Voice" %! harmony.ScoreTemplate.__call__()
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \a_Percussion_I_Music_Voice %! ide.Path.extern()

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>> %! ide.Path.extern()


%! ide.Path.extern()
a_Percussion_II_Music_Voice = { %! ide.Path.extern()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Percussion_II_Music_Voice measure 1] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_MARGIN_MARKUP
    %! baca.start_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-percussion-ii-markup %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.stem_down()
    %! baca.OverrideCommand._call(1)
    \override Stem.direction = #down %! baca.stem_down():baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_1
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_1:baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_1
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0) %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_1:baca.OverrideCommand._call(1)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "percussion" %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_MARGIN_MARKUP_COLOR
%@% \once \override Staff.InstrumentName.color = #(x11-color 'blue)     %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! harmony.sixteenths()
    d'4 %! harmony.sixteenths()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! DEFAULT_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-default-indicator-markup "(“Percussion”)"     %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6 %! baca.markup():baca.IndicatorCommand._call()
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-slate-scrape-markup %! baca.markup():baca.IndicatorCommand._call()
    %! EXPLICIT_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-explicit-indicator-markup "[“Perc. II”]"     %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([4, -14, 4, -2, 4, -6, 4, 4, -2], talea_denominator=16)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
%@% \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_EXPLICIT_MARGIN_MARKUP
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    %! harmony.sixteenths()
    r2. %! harmony.sixteenths()

    %! harmony.sixteenths()
    r8 %! harmony.sixteenths()

    %! harmony.sixteenths()
    d'8 %! harmony.sixteenths()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    %! harmony.sixteenths()
    d'8 %! harmony.sixteenths()
    \repeatTie

    %! harmony.sixteenths()
    r8 %! harmony.sixteenths()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Percussion_II_Music_Voice measure 2] %! baca.SegmentMaker._comment_measure_numbers()
    %! harmony.sixteenths()
    d'4 %! harmony.sixteenths()

    %! harmony.sixteenths()
    r4 %! harmony.sixteenths()

    %! harmony.sixteenths()
    r8 %! harmony.sixteenths()

    %! harmony.sixteenths()
    d'8 %! harmony.sixteenths()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    %! harmony.sixteenths()
    d'8 %! harmony.sixteenths()
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [ %! rmakers.RewriteMeterCommand.__call__

    %! harmony.sixteenths()
    d'8 %! harmony.sixteenths()
    %! rmakers.RewriteMeterCommand.__call__
    ] %! rmakers.RewriteMeterCommand.__call__
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    %! harmony.sixteenths()
    d'8 %! harmony.sixteenths()
    \repeatTie
    %! baca.stem_down()
    %! baca.OverrideCommand._call(2)
    \revert Stem.direction %! baca.stem_down():baca.OverrideCommand._call(2)

    %! harmony.sixteenths()
    r8 %! harmony.sixteenths()
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(2)
    \revert TupletBracket.direction %! baca.tuplet_bracket_up():baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Percussion_II_Music_Voice measure 3] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.staff-padding = 0.5 %! baca.tuplet_bracket_staff_padding():baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 5.5 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! harmony.phjc()
    r4 %! harmony.phjc()
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "phjc([1, 2], [2, 2, 2, 2, 2, 2, 2, 1], extra_counts=[0, 6], rest_pleaves=[0, 1, 2, 3], rest_most=True)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text %! harmony.phjc()
    %! harmony.phjc()
    \times 4/7 %! harmony.phjc()
    %! harmony.phjc()
    { %! harmony.phjc()

        %! harmony.phjc()
        r8 %! harmony.phjc()

        %! harmony.phjc()
        r8 %! harmony.phjc()

        %! harmony.phjc()
        r8 %! harmony.phjc()

        %! harmony.phjc()
        r8 %! harmony.phjc()

        %! baca.stem_down()
        %! baca.OverrideCommand._call(1)
        \override Stem.direction = #down %! baca.stem_down():baca.OverrideCommand._call(1)
        %! harmony.phjc()
        c'8 %! harmony.phjc()
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \f %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        - \tweak self-alignment-X 0.25 %! baca.markup():baca.IndicatorCommand._call()
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        - \tweak staff-padding 6 %! baca.markup():baca.IndicatorCommand._call()
        %! baca.markup()
        %! baca.IndicatorCommand._call()
        ^ \baca-purpleheart-markup %! baca.markup():baca.IndicatorCommand._call()
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \> %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %! harmony.phjc()
        [ %! harmony.phjc()

        %! harmony.phjc()
        c'16 %! harmony.phjc()

        %! harmony.phjc()
        a8 %! harmony.phjc()

        %! harmony.phjc()
        c'16 %! harmony.phjc()
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(3)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \p %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %! harmony.phjc()
        ] %! harmony.phjc()
        %! baca.stem_down()
        %! baca.OverrideCommand._call(2)
        \revert Stem.direction %! baca.stem_down():baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.direction %! baca.tuplet_bracket_up():baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_staff_padding()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.staff-padding %! baca.tuplet_bracket_staff_padding():baca.OverrideCommand._call(2)
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(2)
        \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(4)
        %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! harmony.phjc()
    } %! harmony.phjc()

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    << %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Percussion_II_Music_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Percussion_II_Music_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music     %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            c'1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Percussion_II_Rest_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Percussion_II_Rest_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >> %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Percussion_II_Music_Staff = << %! ide.Path.extern()

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests" %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \a_Global_Rests %! ide.Path.extern():NOT_TOPMOST

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Percussion_II_Music_Voice" %! harmony.ScoreTemplate.__call__()
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \a_Percussion_II_Music_Voice %! ide.Path.extern()

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>> %! ide.Path.extern()


%! ide.Path.extern()
a_Harp_Music_Voice = { %! ide.Path.extern()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Harp_Music_Voice measure 1] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-hp-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_MARGIN_MARKUP
    %! baca.start_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-harp-markup %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 2) %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.stem_down()
    %! baca.OverrideCommand._call(1)
    \override Stem.direction = #down %! baca.stem_down():baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_1
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_1:baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_1
    %! baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0) %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_1:baca.OverrideCommand._call(1)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "percussion" %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_MARGIN_MARKUP_COLOR
%@% \once \override Staff.InstrumentName.color = #(x11-color 'blue)     %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! harmony.sixteenths()
    c'4 %! harmony.sixteenths()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! DEFAULT_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-default-indicator-markup "(“Harp”)"     %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6 %! baca.markup():baca.IndicatorCommand._call()
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-whisk-markup %! baca.markup():baca.IndicatorCommand._call()
    %! EXPLICIT_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-explicit-indicator-markup "[“Hp.”]"     %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([4, -14, 4, -2, 4, -6, 4, 4, -2], talea_denominator=16)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
%@% \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-hp-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_EXPLICIT_MARGIN_MARKUP
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    %! harmony.sixteenths()
    r2. %! harmony.sixteenths()

    %! harmony.sixteenths()
    r8 %! harmony.sixteenths()

    %! harmony.sixteenths()
    c'8 %! harmony.sixteenths()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    %! harmony.sixteenths()
    c'8 %! harmony.sixteenths()
    \repeatTie

    %! harmony.sixteenths()
    r8 %! harmony.sixteenths()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Harp_Music_Voice measure 2] %! baca.SegmentMaker._comment_measure_numbers()
    %! harmony.sixteenths()
    c'4 %! harmony.sixteenths()

    %! harmony.sixteenths()
    r4 %! harmony.sixteenths()

    %! harmony.sixteenths()
    r8 %! harmony.sixteenths()

    %! harmony.sixteenths()
    c'8 %! harmony.sixteenths()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    %! harmony.sixteenths()
    c'8 %! harmony.sixteenths()
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [ %! rmakers.RewriteMeterCommand.__call__

    %! harmony.sixteenths()
    c'8 %! harmony.sixteenths()
    %! rmakers.RewriteMeterCommand.__call__
    ] %! rmakers.RewriteMeterCommand.__call__
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    %! harmony.sixteenths()
    c'8 %! harmony.sixteenths()
    \repeatTie
    %! baca.stem_down()
    %! baca.OverrideCommand._call(2)
    \revert Stem.direction %! baca.stem_down():baca.OverrideCommand._call(2)

    %! harmony.sixteenths()
    r8 %! harmony.sixteenths()
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(2)
    \revert TupletBracket.direction %! baca.tuplet_bracket_up():baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Harp_Music_Voice measure 3] %! baca.SegmentMaker._comment_measure_numbers()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2) %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_3
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_3:baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_3
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0) %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_3:baca.OverrideCommand._call(1)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "bass" %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! harmony.sixteenths()
    g,,2 %! harmony.sixteenths()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9 %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \baca-mf-ancora %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([10, '-'], talea_denominator=16)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    %! harmony.sixteenths()
    g,,8 %! harmony.sixteenths()
    \repeatTie

    %! harmony.sixteenths()
    r8 %! harmony.sixteenths()
    %! baca.damp()
    %! baca.IndicatorCommand._call()
    - \baca-damp %! baca.damp():baca.IndicatorCommand._call()
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    << %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Harp_Music_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Harp_Music_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music     %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            d1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Harp_Rest_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Harp_Rest_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >> %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Harp_Music_Staff = << %! ide.Path.extern()

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests" %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \a_Global_Rests %! ide.Path.extern():NOT_TOPMOST

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Harp_Music_Voice" %! harmony.ScoreTemplate.__call__()
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \a_Harp_Music_Voice %! ide.Path.extern()

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>> %! ide.Path.extern()


%! ide.Path.extern()
a_Viola_Music_Voice = { %! ide.Path.extern()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Viola_Music_Voice measure 1] %! baca.SegmentMaker._comment_measure_numbers()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2) %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-va-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_MARGIN_MARKUP
    %! baca.start_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-viola-markup %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! abjad.ScoreTemplate.attach_defaults(3)
    %! baca.SegmentMaker._set_status_tag()
    %! DEFAULT_CLEF
    \clef "alto" %! abjad.ScoreTemplate.attach_defaults(3):baca.SegmentMaker._set_status_tag():DEFAULT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! DEFAULT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet) %! baca.SegmentMaker._attach_color_literal(2):DEFAULT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! DEFAULT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):DEFAULT_CLEF_COLOR_CANCELLATION
    %! abjad.ScoreTemplate.attach_defaults(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! DEFAULT_CLEF
    \set Staff.forceClef = ##t %! abjad.ScoreTemplate.attach_defaults(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():DEFAULT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_MARGIN_MARKUP_COLOR
%@% \once \override Staff.InstrumentName.color = #(x11-color 'blue)     %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_MARGIN_MARKUP_COLOR
    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! DEFAULT_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-default-indicator-markup "(“Viola”)"     %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! EXPLICIT_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-explicit-indicator-markup "[“Va.”]"     %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "appoggiato(divisions=[16, 8, 12, 8], incise=True, prefix_talea=[-1], prefix_counts=[1])"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_color_literal(2)
    %! DEFAULT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'violet) %! baca.SegmentMaker._attach_color_literal(2):DEFAULT_CLEF_REDRAW_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
%@% \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-va-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_EXPLICIT_MARGIN_MARKUP

    %! harmony.appoggiato()
    gqf'!2... %! harmony.appoggiato()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 5.5 %! baca.markup():baca.IndicatorCommand._call()
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-seven-a %! baca.markup():baca.IndicatorCommand._call()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! harmony.appoggiato()
    gqf'!4.. %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Viola_Music_Voice measure 2] %! baca.SegmentMaker._comment_measure_numbers()
    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    gqf'!8.
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    gqf'2
    \repeatTie

    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! harmony.appoggiato()
    gqf'!4.. %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Viola_Music_Voice measure 3] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_3
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_3:baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_3
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0) %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_3:baca.OverrideCommand._call(1)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "percussion" %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! harmony.sixteenths()
    r4 %! harmony.sixteenths()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([-10, 1, -9, 1, -8, 1, -7, 1, -6, 1, -5, 1, -4, 1, -3, 1, '-'], denominator=None, extra_counts=[2], talea_denominator=16)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0) %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    %! harmony.sixteenths()
    \tweak text #tuplet-number::calc-fraction-text %! harmony.sixteenths()
    %! harmony.sixteenths()
    \times 2/3 %! harmony.sixteenths()
    %! harmony.sixteenths()
    { %! harmony.sixteenths()

        %! harmony.sixteenths()
        r4 %! harmony.sixteenths()

        %! baca.stem_down()
        %! baca.OverrideCommand._call(1)
        \once \override Stem.direction = #down %! baca.stem_down():baca.OverrideCommand._call(1)
        %! harmony.sixteenths()
        c'16 %! harmony.sixteenths()
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.dynamic()
        %! baca.IndicatorCommand._call()
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        %! baca.dynamic()
        %! baca.IndicatorCommand._call()
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \sfp %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %! baca.accent()
        %! baca.IndicatorCommand._call()
        - \accent %! baca.accent():baca.IndicatorCommand._call()

        %! harmony.sixteenths()
        r16 %! harmony.sixteenths()

    %! harmony.sixteenths()
    } %! harmony.sixteenths()

    %! harmony.sixteenths()
    r4 %! harmony.sixteenths()
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(2)
    \revert TupletBracket.direction %! baca.tuplet_bracket_up():baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    << %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Viola_Music_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Viola_Music_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music     %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            c'1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Viola_Rest_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Viola_Rest_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >> %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Viola_Music_Staff = << %! ide.Path.extern()

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests" %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \a_Global_Rests %! ide.Path.extern():NOT_TOPMOST

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Viola_Music_Voice" %! harmony.ScoreTemplate.__call__()
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \a_Viola_Music_Voice %! ide.Path.extern()

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>> %! ide.Path.extern()


%! ide.Path.extern()
a_Cello_I_Music_Voice = { %! ide.Path.extern()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Cello_I_Music_Voice measure 1] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-vc-i-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_MARGIN_MARKUP
    %! baca.start_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-cello-i-markup %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    %! baca.tuplet_bracket_down()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #down %! baca.tuplet_bracket_down():baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! abjad.ScoreTemplate.attach_defaults(3)
    %! baca.SegmentMaker._set_status_tag()
    %! DEFAULT_CLEF
    \clef "bass" %! abjad.ScoreTemplate.attach_defaults(3):baca.SegmentMaker._set_status_tag():DEFAULT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! DEFAULT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet) %! baca.SegmentMaker._attach_color_literal(2):DEFAULT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! DEFAULT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):DEFAULT_CLEF_COLOR_CANCELLATION
    %! abjad.ScoreTemplate.attach_defaults(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! DEFAULT_CLEF
    \set Staff.forceClef = ##t %! abjad.ScoreTemplate.attach_defaults(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():DEFAULT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_MARGIN_MARKUP_COLOR
%@% \once \override Staff.InstrumentName.color = #(x11-color 'blue)     %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.skeleton()
    a,4 %! baca.skeleton()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent %! baca.accent():baca.IndicatorCommand._call()
    %! DEFAULT_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-default-indicator-markup "(“Cello”)"     %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! EXPLICIT_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-explicit-indicator-markup "[“Vc. I”]"     %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \< %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "baca.skeleton()"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkcyan     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P1" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_color_literal(2)
    %! DEFAULT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'violet) %! baca.SegmentMaker._attach_color_literal(2):DEFAULT_CLEF_REDRAW_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
%@% \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-vc-i-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_EXPLICIT_MARGIN_MARKUP

    %! baca.skeleton()
    \tweak text #tuplet-number::calc-fraction-text %! baca.skeleton()
    %! baca.skeleton()
    \times 5/3 %! baca.skeleton()
    %! baca.skeleton()
    { %! baca.skeleton()

        %! baca.skeleton()
        a,4 %! baca.skeleton()
        %! baca.repeat_tie()
        %! baca.IndicatorCommand._call()
        \repeatTie %! baca.repeat_tie():baca.IndicatorCommand._call()

        %! baca.skeleton()
        a,4 %! baca.skeleton()
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
        %! baca.accent()
        %! baca.IndicatorCommand._call()
        - \accent %! baca.accent():baca.IndicatorCommand._call()
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        \bacaStopTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \abjad-solid-line-with-arrow %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \baca-text-spanner-left-text "P3" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak staff-padding 3 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        \bacaStartTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \abjad-dashed-line-with-hook %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \baca-text-spanner-left-text "MM" %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! AUTODETECT
        %! SPANNER_START
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak bound-details.right.padding 2.75 %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak staff-padding 5.5 %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        \bacaStartTextSpanMetricModulation %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

        %! baca.skeleton()
        a,4 %! baca.skeleton()
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
        %! baca.accent()
        %! baca.IndicatorCommand._call()
        - \accent %! baca.accent():baca.IndicatorCommand._call()
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        \bacaStopTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \abjad-solid-line-with-arrow %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \baca-text-spanner-left-text "P2" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak staff-padding 3 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        \bacaStartTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.SegmentMaker._attach_shadow_tie_indicators()
        - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
        %! baca.SegmentMaker._attach_shadow_tie_indicators()
        ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    %! baca.skeleton()
    } %! baca.skeleton()

    %! baca.skeleton()
    \tweak text #tuplet-number::calc-fraction-text %! baca.skeleton()
    %! baca.skeleton()
    \times 5/3 %! baca.skeleton()
    %! baca.skeleton()
    { %! baca.skeleton()

        %! baca.SegmentMaker._comment_measure_numbers()
        % [01 Cello_I_Music_Voice measure 2] %! baca.SegmentMaker._comment_measure_numbers()
        %! baca.skeleton()
        a,4 %! baca.skeleton()
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \f %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %! baca.repeat_tie()
        %! baca.IndicatorCommand._call()
        \repeatTie %! baca.repeat_tie():baca.IndicatorCommand._call()
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak to-barline ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak circled-tip ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %! baca.hairpin()
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \> %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC

        %! baca.skeleton()
        a,4 %! baca.skeleton()
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
        %! baca.accent()
        %! baca.IndicatorCommand._call()
        - \accent %! baca.accent():baca.IndicatorCommand._call()
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        \bacaStopTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \abjad-solid-line-with-arrow %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \baca-text-spanner-left-text "P4" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak staff-padding 3 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        \bacaStartTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

        %! baca.skeleton()
        a,4 %! baca.skeleton()
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
        %! baca.accent()
        %! baca.IndicatorCommand._call()
        - \accent %! baca.accent():baca.IndicatorCommand._call()
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_STOP
        \bacaStopTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \abjad-solid-line-with-arrow %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \baca-text-spanner-left-text "P1" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \baca-text-spanner-right-text "P3" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak bound-details.right.padding 0.5 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak bound-details.right.stencil-align-dir-y #center %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        - \tweak staff-padding 3 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! SPANNER_START
        \bacaStartTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
        %! baca.tuplet_bracket_down()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.direction %! baca.tuplet_bracket_down():baca.OverrideCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(4)
        %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.skeleton()
    } %! baca.skeleton()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Cello_I_Music_Voice measure 3] %! baca.SegmentMaker._comment_measure_numbers()
    %! harmony.sixteenths()
    a,4 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent %! baca.accent():baca.IndicatorCommand._call()
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([5, -5, 1, -4], extra_counts=[1], talea_denominator=16)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)

    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "percussion" %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! harmony.sixteenths()
    r4 %! harmony.sixteenths()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \! %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.metric_modulation_spanner()
    %! METRIC_MODULATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    %! harmony.sixteenths()
    \tweak text #tuplet-number::calc-fraction-text %! harmony.sixteenths()
    %! harmony.sixteenths()
    \times 4/5 %! harmony.sixteenths()
    %! harmony.sixteenths()
    { %! harmony.sixteenths()

        %! baca.stem_down()
        %! baca.OverrideCommand._call(1)
        \once \override Stem.direction = #down %! baca.stem_down():baca.OverrideCommand._call(1)
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(1)
        \once \override TupletBracket.direction = #up %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(1)
        \once \override DynamicLineSpanner.staff-padding = 6 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
        %! harmony.sixteenths()
        c'16 %! harmony.sixteenths()
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.dynamic()
        %! baca.IndicatorCommand._call()
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        %! baca.dynamic()
        %! baca.IndicatorCommand._call()
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \sfp %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %! baca.accent()
        %! baca.IndicatorCommand._call()
        - \accent %! baca.accent():baca.IndicatorCommand._call()

        %! harmony.sixteenths()
        r4 %! harmony.sixteenths()
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(4)
        %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! harmony.sixteenths()
    } %! harmony.sixteenths()

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    << %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Cello_I_Music_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Cello_I_Music_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music     %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            c'1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Cello_I_Rest_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Cello_I_Rest_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >> %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Cello_I_Music_Staff = << %! ide.Path.extern()

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests" %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \a_Global_Rests %! ide.Path.extern():NOT_TOPMOST

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Cello_I_Music_Voice" %! harmony.ScoreTemplate.__call__()
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \a_Cello_I_Music_Voice %! ide.Path.extern()

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>> %! ide.Path.extern()


%! ide.Path.extern()
a_Cello_II_Music_Voice = { %! ide.Path.extern()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Cello_II_Music_Voice measure 1] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_MARGIN_MARKUP
    %! baca.start_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-cello-ii-markup %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! abjad.ScoreTemplate.attach_defaults(3)
    %! baca.SegmentMaker._set_status_tag()
    %! DEFAULT_CLEF
    \clef "bass" %! abjad.ScoreTemplate.attach_defaults(3):baca.SegmentMaker._set_status_tag():DEFAULT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! DEFAULT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet) %! baca.SegmentMaker._attach_color_literal(2):DEFAULT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! DEFAULT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):DEFAULT_CLEF_COLOR_CANCELLATION
    %! abjad.ScoreTemplate.attach_defaults(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! DEFAULT_CLEF
    \set Staff.forceClef = ##t %! abjad.ScoreTemplate.attach_defaults(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():DEFAULT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_MARGIN_MARKUP_COLOR
%@% \once \override Staff.InstrumentName.color = #(x11-color 'blue)     %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_MARGIN_MARKUP_COLOR
    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! DEFAULT_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-default-indicator-markup "(“Cello”)"     %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! EXPLICIT_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-explicit-indicator-markup "[“Vc. II”]"     %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "appoggiato(divisions=[16, 8, 12, 8], incise=True, prefix_talea=[-1], prefix_counts=[1])"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_color_literal(2)
    %! DEFAULT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'violet) %! baca.SegmentMaker._attach_color_literal(2):DEFAULT_CLEF_REDRAW_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
%@% \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_EXPLICIT_MARGIN_MARKUP

    %! harmony.appoggiato()
    b2... %! harmony.appoggiato()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! harmony.appoggiato()
    b4.. %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Cello_II_Music_Voice measure 2] %! baca.SegmentMaker._comment_measure_numbers()
    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    b8.
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    b2
    \repeatTie

    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! harmony.appoggiato()
    b4.. %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Cello_II_Music_Voice measure 3] %! baca.SegmentMaker._comment_measure_numbers()
    %! harmony.sixteenths()
    g,2 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \> %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([10, '-'], talea_denominator=16, untie=True, after_graces=[1])"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando %! baca.glissando():abjad.glissando(7)
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P1" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! baca.glissando()
    %! abjad.glissando(1)
    \hide NoteHead %! baca.glissando():abjad.glissando(1)
    %! baca.glissando()
    %! abjad.glissando(1)
    \override Accidental.stencil = ##f %! baca.glissando():abjad.glissando(1)
    %! baca.glissando()
    %! abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t %! baca.glissando():abjad.glissando(1)
    %! baca.glissando()
    %! abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t %! baca.glissando():abjad.glissando(1)
    \afterGrace
    %! harmony.sixteenths()
    g,8 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    {

        %! baca.glissando()
        %! abjad.glissando(6)
        \revert Accidental.stencil %! baca.glissando():abjad.glissando(6)
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert NoteColumn.glissando-skip %! baca.glissando():abjad.glissando(6)
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert NoteHead.no-ledgers %! baca.glissando():abjad.glissando(6)
        %! baca.glissando()
        %! abjad.glissando(6)
        \undo \hide NoteHead %! baca.glissando():abjad.glissando(6)
        f,8

    }


    %! harmony.sixteenths()
    r8 %! harmony.sixteenths()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \! %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    << %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Cello_II_Music_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Cello_II_Music_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music     %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            d1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Cello_II_Rest_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Cello_II_Rest_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >> %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Cello_II_Music_Staff = << %! ide.Path.extern()

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests" %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \a_Global_Rests %! ide.Path.extern():NOT_TOPMOST

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Cello_II_Music_Voice" %! harmony.ScoreTemplate.__call__()
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \a_Cello_II_Music_Voice %! ide.Path.extern()

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>> %! ide.Path.extern()


%! ide.Path.extern()
a_Contrabass_I_Music_Voice = { %! ide.Path.extern()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Contrabass_I_Music_Voice measure 1] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-cb-i-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_MARGIN_MARKUP
    %! baca.start_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-contrabass-i-markup %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! abjad.ScoreTemplate.attach_defaults(3)
    %! baca.SegmentMaker._set_status_tag()
    %! DEFAULT_CLEF
    \clef "bass" %! abjad.ScoreTemplate.attach_defaults(3):baca.SegmentMaker._set_status_tag():DEFAULT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! DEFAULT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet) %! baca.SegmentMaker._attach_color_literal(2):DEFAULT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! DEFAULT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):DEFAULT_CLEF_COLOR_CANCELLATION
    %! abjad.ScoreTemplate.attach_defaults(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! DEFAULT_CLEF
    \set Staff.forceClef = ##t %! abjad.ScoreTemplate.attach_defaults(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():DEFAULT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_MARGIN_MARKUP_COLOR
%@% \once \override Staff.InstrumentName.color = #(x11-color 'blue)     %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_MARGIN_MARKUP_COLOR
    %! harmony.sixteenths()
    a,1 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent %! baca.accent():baca.IndicatorCommand._call()
    %! DEFAULT_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-default-indicator-markup "(“Contrabass”)"     %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! EXPLICIT_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-explicit-indicator-markup "[“Cb. I”]"     %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \< %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([18, 6, 10, 4, 6], talea_denominator=16)"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P1" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_color_literal(2)
    %! DEFAULT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'violet) %! baca.SegmentMaker._attach_color_literal(2):DEFAULT_CLEF_REDRAW_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
%@% \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-cb-i-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_EXPLICIT_MARGIN_MARKUP

    %! harmony.sixteenths()
    a,8 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [ %! rmakers.RewriteMeterCommand.__call__

    %! harmony.sixteenths()
    a,8 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent %! baca.accent():baca.IndicatorCommand._call()
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    %! rmakers.RewriteMeterCommand.__call__
    ] %! rmakers.RewriteMeterCommand.__call__
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P3" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    %! harmony.sixteenths()
    a,4 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \repeatTie

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Contrabass_I_Music_Voice measure 2] %! baca.SegmentMaker._comment_measure_numbers()
    %! harmony.sixteenths()
    a,2 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \f %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent %! baca.accent():baca.IndicatorCommand._call()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \> %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P2" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    %! harmony.sixteenths()
    a,8 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [ %! rmakers.RewriteMeterCommand.__call__

    %! harmony.sixteenths()
    a,8 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent %! baca.accent():baca.IndicatorCommand._call()
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    %! rmakers.RewriteMeterCommand.__call__
    ] %! rmakers.RewriteMeterCommand.__call__
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-solid-line-with-arrow %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P4" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-right-text "P1" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 0.5 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 3 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    %! harmony.sixteenths()
    a,8 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \repeatTie
    %! rmakers.RewriteMeterCommand.__call__
    [ %! rmakers.RewriteMeterCommand.__call__

    %! harmony.sixteenths()
    a,8 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    %! baca.accent()
    %! baca.IndicatorCommand._call()
    - \accent %! baca.accent():baca.IndicatorCommand._call()
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_STOP
    %! rmakers.RewriteMeterCommand.__call__
    ] %! rmakers.RewriteMeterCommand.__call__
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    %! harmony.sixteenths()
    a,4 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \repeatTie
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Contrabass_I_Music_Voice measure 3] %! baca.SegmentMaker._comment_measure_numbers()
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.tuplet_number_text()
    %! baca.OverrideCommand._call(1)
    \override TupletNumber.text = \markup { 5:4 } %! baca.tuplet_number_text():baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    %! baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! baca.clef_x_extent_false()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_3
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_3:baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    %! SHIFTED_CLEF
    %! MEASURE_3
    %! baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0) %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_3:baca.OverrideCommand._call(1)
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \clef "percussion" %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! EXPLICIT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    %! baca.clef()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    %! baca.skeleton()
    r4 %! baca.skeleton()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \! %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "baca.skeleton()"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkcyan     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    %! baca.skeleton()
    \times 4/5 %! baca.skeleton()
    %! baca.skeleton()
    { %! baca.skeleton()

        %! baca.skeleton()
        r4. %! baca.skeleton()

        %! baca.stem_down()
        %! baca.OverrideCommand._call(1)
        \override Stem.direction = #down %! baca.stem_down():baca.OverrideCommand._call(1)
        %! baca.skeleton()
        c'16 %! baca.skeleton()
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
        %! EXPLICIT_DYNAMIC_COLOR
        %! _treat_persistent_wrapper(1)
        %! baca.dynamic()
        %! baca.IndicatorCommand._call()
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        %! baca.dynamic()
        %! baca.IndicatorCommand._call()
        %! baca.SegmentMaker._set_status_tag()
        %! EXPLICIT_DYNAMIC
        \sfp %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        %! baca.accent()
        %! baca.IndicatorCommand._call()
        - \accent %! baca.accent():baca.IndicatorCommand._call()
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! RIGHT_BROKEN
        %! SPANNER_START
        - \abjad-dashed-line-with-hook %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! RIGHT_BROKEN
        %! SPANNER_START
        - \baca-text-spanner-left-text "MM" %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! RIGHT_BROKEN
        %! AUTODETECT
        %! SPANNER_START
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! RIGHT_BROKEN
        %! SPANNER_START
        - \tweak bound-details.right.padding 3.25 %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:AUTODETECT:SPANNER_START
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! RIGHT_BROKEN
        %! SPANNER_START
        - \tweak staff-padding 6.5 %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
        %! baca.metric_modulation_spanner()
        %! METRIC_MODULATION_SPANNER
        %! baca.PiecewiseCommand._call(2)
        %! RIGHT_BROKEN
        %! SPANNER_START
        \bacaStartTextSpanMetricModulation %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START

        %! baca.skeleton()
        r16 %! baca.skeleton()

        %! baca.skeleton()
        c'16 %! baca.skeleton()
        %! baca.stem_tremolo()
        %! baca.IndicatorCommand._call()
        :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
        %! baca.accent()
        %! baca.IndicatorCommand._call()
        - \accent %! baca.accent():baca.IndicatorCommand._call()
        %! baca.stem_down()
        %! baca.OverrideCommand._call(2)
        \revert Stem.direction %! baca.stem_down():baca.OverrideCommand._call(2)

        %! baca.skeleton()
        r16 %! baca.skeleton()
        %! baca.tuplet_number_text()
        %! baca.OverrideCommand._call(2)
        \revert TupletNumber.text %! baca.tuplet_number_text():baca.OverrideCommand._call(2)
        %! baca.tuplet_bracket_up()
        %! baca.OverrideCommand._call(2)
        \revert TupletBracket.direction %! baca.tuplet_bracket_up():baca.OverrideCommand._call(2)
        %! baca.dls_staff_padding()
        %! baca.OverrideCommand._call(2)
        \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! baca.PiecewiseCommand._call(4)
        %! SPANNER_STOP
    %@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.skeleton()
    } %! baca.skeleton()

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    << %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Contrabass_I_Music_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Contrabass_I_Music_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music     %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            c'1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.metric_modulation_spanner()
            %! METRIC_MODULATION_SPANNER
            %! baca.PiecewiseCommand._call(4)
            %! RIGHT_BROKEN
            %! SPANNER_STOP
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \bacaStopTextSpanMetricModulation %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(4):RIGHT_BROKEN:SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Contrabass_I_Rest_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Contrabass_I_Rest_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >> %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Contrabass_I_Music_Staff = << %! ide.Path.extern()

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests" %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \a_Global_Rests %! ide.Path.extern():NOT_TOPMOST

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Contrabass_I_Music_Voice" %! harmony.ScoreTemplate.__call__()
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \a_Contrabass_I_Music_Voice %! ide.Path.extern()

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>> %! ide.Path.extern()


%! ide.Path.extern()
a_Contrabass_II_Music_Voice = { %! ide.Path.extern()

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Contrabass_II_Music_Voice measure 1] %! baca.SegmentMaker._comment_measure_numbers()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2) %! -PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_BAR_EXTENT
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \stopStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.staff_lines()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_STAFF_LINES
    \startStaff %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_MARGIN_MARKUP
    %! baca.start_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-contrabass-ii-markup %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 4 %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    %! abjad.ScoreTemplate.attach_defaults(3)
    %! baca.SegmentMaker._set_status_tag()
    %! DEFAULT_CLEF
    \clef "bass" %! abjad.ScoreTemplate.attach_defaults(3):baca.SegmentMaker._set_status_tag():DEFAULT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! DEFAULT_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet) %! baca.SegmentMaker._attach_color_literal(2):DEFAULT_CLEF_COLOR
    %! baca.SegmentMaker._attach_color_literal(1)
    %! DEFAULT_CLEF_COLOR_CANCELLATION
%@% \override Staff.Clef.color = ##f     %! baca.SegmentMaker._attach_color_literal(1):DEFAULT_CLEF_COLOR_CANCELLATION
    %! abjad.ScoreTemplate.attach_defaults(3)
    %! baca.SegmentMaker._treat_persistent_wrapper(2)
    %! baca.SegmentMaker._set_status_tag()
    %! DEFAULT_CLEF
    \set Staff.forceClef = ##t %! abjad.ScoreTemplate.attach_defaults(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():DEFAULT_CLEF
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue) %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! EXPLICIT_MARGIN_MARKUP_COLOR
%@% \once \override Staff.InstrumentName.color = #(x11-color 'blue)     %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_MARGIN_MARKUP_COLOR
    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! DEFAULT_INSTRUMENT_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-default-indicator-markup "(“Contrabass”)"     %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! EXPLICIT_MARGIN_MARKUP_ALERT
    %! baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-explicit-indicator-markup "[“Cb. II”]"     %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "appoggiato(divisions=[16, 8, 12, 8], incise=True, prefix_talea=[-1], prefix_counts=[1])"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_color_literal(2)
    %! DEFAULT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'violet) %! baca.SegmentMaker._attach_color_literal(2):DEFAULT_CLEF_REDRAW_COLOR
    %! baca.SegmentMaker._attach_color_literal(2)
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
%@% \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)     %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR
    %! baca.margin_markup()
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._treat_persistent_wrapper(3)
    %! baca.SegmentMaker._set_status_tag()
    %! REDRAWN_EXPLICIT_MARGIN_MARKUP
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup %! baca.margin_markup():-PARTS:baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_EXPLICIT_MARGIN_MARKUP

    %! harmony.appoggiato()
    dqs'!2... %! harmony.appoggiato()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.dynamic()
    %! baca.IndicatorCommand._call()
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mp %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    - \tweak staff-padding 6.5 %! baca.markup():baca.IndicatorCommand._call()
    %! baca.markup()
    %! baca.IndicatorCommand._call()
    ^ \baca-eleven-a %! baca.markup():baca.IndicatorCommand._call()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 4 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! harmony.appoggiato()
    dqs'!4.. %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 4 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Contrabass_II_Music_Voice measure 2] %! baca.SegmentMaker._comment_measure_numbers()
    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    dqs'!8.
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 4 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    - \tweak stencil ##f %! baca.SegmentMaker._attach_shadow_tie_indicators()
    %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~ %! baca.SegmentMaker._attach_shadow_tie_indicators()

    dqs'2
    \repeatTie

    %! harmony.appoggiato()
    r16 %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! harmony.appoggiato()
    dqs'!4.. %! harmony.appoggiato()
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! AUTODETECT
    %! SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak bound-details.right.padding 2.75 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 4 %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._comment_measure_numbers()
    % [01 Contrabass_II_Music_Voice measure 3] %! baca.SegmentMaker._comment_measure_numbers()
    %! harmony.sixteenths()
    g2 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \mf %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak to-barline ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak circled-tip ##t %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \> %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.damp_spanner()
    %! DAMP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanDamp %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \abjad-dashed-line-with-hook     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([10, '-'], talea_denominator=16, untie=True, after_graces=[1])"     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
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
%@% - \tweak bound-details.right.padding 2.75     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak color #darkyellow     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% - \tweak staff-padding 8     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.glissando()
    %! abjad.glissando(7)
    \glissando %! baca.glissando():abjad.glissando(7)
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \abjad-dashed-line-with-hook %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \baca-text-spanner-left-text "P1" %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    - \tweak staff-padding 4 %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(2)
    %! SPANNER_START
    \bacaStartTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    %! baca.glissando()
    %! abjad.glissando(1)
    \hide NoteHead %! baca.glissando():abjad.glissando(1)
    %! baca.glissando()
    %! abjad.glissando(1)
    \override Accidental.stencil = ##f %! baca.glissando():abjad.glissando(1)
    %! baca.glissando()
    %! abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t %! baca.glissando():abjad.glissando(1)
    %! baca.glissando()
    %! abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t %! baca.glissando():abjad.glissando(1)
    \afterGrace
    %! harmony.sixteenths()
    g8 %! harmony.sixteenths()
    %! baca.stem_tremolo()
    %! baca.IndicatorCommand._call()
    :32 %! baca.stem_tremolo():baca.IndicatorCommand._call()
    {

        %! baca.glissando()
        %! abjad.glissando(6)
        \revert Accidental.stencil %! baca.glissando():abjad.glissando(6)
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert NoteColumn.glissando-skip %! baca.glissando():abjad.glissando(6)
        %! baca.glissando()
        %! abjad.glissando(6)
        \revert NoteHead.no-ledgers %! baca.glissando():abjad.glissando(6)
        %! baca.glissando()
        %! abjad.glissando(6)
        \undo \hide NoteHead %! baca.glissando():abjad.glissando(6)
        fs!8

    }


    %! harmony.sixteenths()
    r8 %! harmony.sixteenths()
    %! EXPLICIT_DYNAMIC_COLOR
    %! _treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue) %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    %! baca.hairpin()
    %! baca.PiecewiseCommand._call(3)
    %! SPANNER_STOP
    %! baca.SegmentMaker._set_status_tag()
    %! EXPLICIT_DYNAMIC
    \! %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
    \bacaStopTextSpanSCP %! baca.scp_spanner():SCP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
    %! baca.dls_staff_padding()
    %! baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    %! baca.rhythm_annotation_spanner()
    %! RHYTHM_ANNOTATION_SPANNER
    %! baca.PiecewiseCommand._call(4)
    %! SPANNER_STOP
%@% <> \bacaStopTextSpanRhythmAnnotation     %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    << %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        \context Voice = "Contrabass_II_Music_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Contrabass_II_Music_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(2)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COLORING
            %! baca.SegmentMaker._style_phantom_measures(5)
            \abjad-invisible-music-coloring %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._make_multimeasure_rest_container(3)
            %! PHANTOM
            %! NOTE
            %! INVISIBLE_MUSIC_COMMAND
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music     %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            %! baca.SegmentMaker._color_not_yet_pitched()
            %! NOT_YET_PITCHED_COLORING
            %! HIDDEN
            %! NOTE
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            \baca-not-yet-pitched-coloring %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(1)
            %! PHANTOM
            %! HIDDEN
            %! NOTE
            d1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        \context Voice = "Contrabass_II_Rest_Voice" %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        { %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            %! baca.SegmentMaker._comment_measure_numbers()
            %! baca.SegmentMaker._style_phantom_measures(5)
            %! PHANTOM
            % [01 Contrabass_II_Rest_Voice measure 4] %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(6)
            %! PHANTOM
            \once \override Score.TimeSignature.X-extent = ##f %! baca.SegmentMaker._style_phantom_measures(6):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(7)
            %! PHANTOM
            \once \override MultiMeasureRest.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(7):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \stopStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \once \override Staff.StaffSymbol.transparent = ##t %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._style_phantom_measures(8)
            %! PHANTOM
            \startStaff %! baca.SegmentMaker._style_phantom_measures(8):PHANTOM
            %! baca.SegmentMaker._make_multimeasure_rest_container(5)
            %! PHANTOM
            %! REST_VOICE
            %! MULTIMEASURE_REST
            R1 * 1/4 %! baca.SegmentMaker._make_multimeasure_rest_container(5):PHANTOM:REST_VOICE:MULTIMEASURE_REST
            %! baca.SegmentMaker._label_duration_multipliers()
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca.SegmentMaker._style_phantom_measures(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"     %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:PHANTOM:REST_VOICE:baca.SegmentMaker._style_phantom_measures(5)

        %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        %! PHANTOM
        } %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

    %! baca.SegmentMaker._make_multimeasure_rest_container(7)
    %! PHANTOM
    >> %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
} %! ide.Path.extern()


%! ide.Path.extern()
a_Contrabass_II_Music_Staff = << %! ide.Path.extern()

    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
%%% \context GlobalRests = "Global_Rests" %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
    %! abjad.ScoreTemplate._make_global_context()
    %! NOT_TOPMOST
    %! ide.Path.extern()
%%% \a_Global_Rests %! ide.Path.extern():NOT_TOPMOST

    %! harmony.ScoreTemplate.__call__()
    \context Voice = "Contrabass_II_Music_Voice" %! harmony.ScoreTemplate.__call__()
    %! harmony.ScoreTemplate.__call__()
    %! ide.Path.extern()
    \a_Contrabass_II_Music_Voice %! ide.Path.extern()

%! harmony.ScoreTemplate.__call__()
%! ide.Path.extern()
>> %! ide.Path.extern()
