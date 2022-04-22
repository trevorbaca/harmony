%! baca.path.extern()
segment.15.Global.Skips = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 1]
    % OPENING:
    % COMMANDS:
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    %! baca._attach_color_literal(2)
    \baca-time-signature-color #'blue
    %! +SEGMENT
    %! EMPTY_START_BAR
    %! baca._attach_nonfirst_empty_start_bar()
    \bar ""
    %! EXPLICIT_TIME_SIGNATURE
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    \time 4/4
    %! baca._make_global_skips(1)
    s1 * 1
    % AFTER:
    % MARKUP:
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.rehearsal_mark()
    - \tweak extra-offset #'(0 . 18)
    %! -PARTS
    %! baca.IndicatorCommand._call()
    %! baca.rehearsal_mark()
    - \baca-rehearsal-mark-markup "O" #10
    %! +PARTS
    %! baca.IndicatorCommand._call()
    %! baca.rehearsal_mark()
%%% - \tweak extra-offset #'(0 . 10)
    %! +PARTS
    %! baca.IndicatorCommand._call()
    %! baca.rehearsal_mark()
%%% - \baca-rehearsal-mark-markup "O" #4
    % SPANNER_STARTS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "1"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "131"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    - \baca-start-snm-left-only "[O.1-2]"
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! REAPPLIED_METRONOME_MARK
    %! baca._attach_metronome_marks(2)
    %! baca._reapply_persistent_indicators(2)
    %! baca._set_status_tag()
    %@% - \abjad-invisible-line
    %! REAPPLIED_METRONOME_MARK
    %! baca._attach_metronome_marks(2)
    %! baca._reapply_persistent_indicators(2)
    %! baca._set_status_tag()
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "96"
    %! REAPPLIED_METRONOME_MARK
    %! baca._attach_metronome_marks(2)
    %! baca._reapply_persistent_indicators(2)
    %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
    %! REAPPLIED_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
    %! REAPPLIED_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "96" #'green4
    %! REAPPLIED_METRONOME_MARK_WITH_COLOR
    %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[7'27'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 2]
    %! baca._make_global_skips(1)
    s1 * 1
    % AFTER:
    % SPANNER_STOPS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    % SPANNER_STARTS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "2"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "132"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[7'29'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 3]
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
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStopTextSpanSNM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    % SPANNER_STARTS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "3"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "133"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    - \baca-start-snm-colored-left-only "[◀L.2]" #darkgreen
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[7'32'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 4]
    %! baca._make_global_skips(1)
    s1 * 3/4
    % AFTER:
    % SPANNER_STOPS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStopTextSpanSNM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    % SPANNER_STARTS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "4"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "134"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    - \baca-start-snm-colored-left-only "[◀L.4]" #darkgreen
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[7'33'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 5]
    %! baca._make_global_skips(1)
    s1 * 3/4
    % AFTER:
    % SPANNER_STOPS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStopTextSpanSNM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    % SPANNER_STARTS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "5"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "135"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    - \baca-start-snm-left-only "[O.3-4]"
    %! STAGE_NUMBER
    %! baca._label_stage_numbers()
    \bacaStartTextSpanSNM
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[7'35'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 6]
    %! baca._make_global_skips(1)
    s1 * 3/4
    % AFTER:
    % SPANNER_STOPS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    % SPANNER_STARTS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "6"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "136"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[7'37'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 7]
    %! baca._make_global_skips(1)
    s1 * 3/4
    % AFTER:
    % SPANNER_STOPS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    % SPANNER_STARTS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "7"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "137"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[7'39'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 8]
    %! baca._make_global_skips(1)
    s1 * 3/4
    % AFTER:
    % SPANNER_STOPS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    % SPANNER_STARTS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "8"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "138"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[7'41'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 9]
    %! baca._make_global_skips(1)
    s1 * 3/4
    % AFTER:
    % SPANNER_STOPS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    % SPANNER_STARTS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "9"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "139"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-left-only "[7'43'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Skips measure 10]
    % OPENING:
    % COMMANDS:
    %! EXPLICIT_TIME_SIGNATURE_COLOR
    %! baca._attach_color_literal(2)
    \baca-time-signature-color #'blue
    %! EXPLICIT_TIME_SIGNATURE
    %! baca._make_global_skips(2)
    %! baca._set_status_tag()
    \time 2/4
    %! baca._make_global_skips(1)
    s1 * 1/2
    % AFTER:
    % SPANNER_STOPS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStopTextSpanCT
    % SPANNER_STARTS:
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "10"
    %! LOCAL_MEASURE_NUMBER
    %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "140"
    %! MEASURE_NUMBER
    %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% - \baca-start-ct-both "[7'45'']" "[7'46'']"
    %! CLOCK_TIME
    %! baca._label_clock_time()
    %@% \bacaStartTextSpanCT
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! PHANTOM
    %! baca._comment_measure_numbers()
    %! baca._style_phantom_measures(1)
    % [Global_Skips measure 11]
    % OPENING:
    % COMMANDS:
    %! PHANTOM
    %! baca._style_phantom_measures(2)
    \baca-time-signature-transparent
    %! EXPLICIT_TIME_SIGNATURE
    %! PHANTOM
    %! baca._make_global_skips(3)
    %! baca._set_status_tag()
    %! baca._style_phantom_measures(1)
    \time 1/4
    %! PHANTOM
    %! baca._make_global_skips(3)
    s1 * 1/4
    % AFTER:
    % SPANNER_STOPS:
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
    % COMMANDS:
    %! PHANTOM
    %! baca._style_phantom_measures(3)
    \once \override Score.BarLine.transparent = ##t
    %! PHANTOM
    %! baca._style_phantom_measures(3)
    \once \override Score.SpanBar.transparent = ##t
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! baca.make_global_context()
%! baca.path.extern()
}


%! baca.path.extern()
segment.15.Global.Rests = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 1]
    %! baca._make_global_rests(1)
    R1 * 1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 2]
    %! baca._make_global_rests(1)
    R1 * 1
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 3]
    %! baca._make_global_rests(1)
    R1 * 3/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 4]
    %! baca._make_global_rests(1)
    R1 * 3/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 5]
    %! baca._make_global_rests(1)
    R1 * 3/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 6]
    %! baca._make_global_rests(1)
    R1 * 3/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 7]
    %! baca._make_global_rests(1)
    R1 * 3/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 8]
    %! baca._make_global_rests(1)
    R1 * 3/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 9]
    %! baca._make_global_rests(1)
    R1 * 3/4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 10]
    %! baca._make_global_rests(1)
    R1 * 1/2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Global_Rests measure 11]
    %! PHANTOM
    %! baca._make_global_rests(2)
    R1 * 1/4
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! baca.make_global_context()
%! baca.path.extern()
}


%! baca.path.extern()
segment.15.Bass.Flute.Music.Voice = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 1]
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
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-bfl-markup
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
    % OPENING:
    % COMMANDS:
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \clef "treble"
    %! REAPPLIED_CLEF_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
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
    %! harmony.sixteenths()
    r16
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
    \p
    % MARKUP:
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“BassFlute”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Bfl.”]"
    % ABSOLUTE_AFTER:
    % COMMANDS:
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
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    e'8.
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
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
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    e'4
    % AFTER:
    % ARTICULATIONS:
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    e'4
    % AFTER:
    % ARTICULATIONS:
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 2]
    %! harmony.sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    e'8.
    % AFTER:
    % ARTICULATIONS:
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    e'4
    % AFTER:
    % ARTICULATIONS:
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r2
    % AFTER:
    % SPANNER_STOPS:
    %! COVERED_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.covered_spanner()
    \bacaStopTextSpanCovered
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 3]
    <ef'! ef''! bf''!>2. * 1/2
    % AFTER:
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

    % OPENING:
    % COMMANDS:
    %! INVISIBLE_MUSIC_COMMAND
    %! harmony.sixteenths()
    %@% \abjad-invisible-music
    %! INVISIBLE_MUSIC_COLORING
    %! harmony.sixteenths()
    \abjad-invisible-music-coloring
    <ef'! ef''! bf''!>2. * 1/2
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
    \mp
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

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 4]
    %! harmony.sixteenths()
    dtqf'''!4
    % AFTER:
    % ARTICULATIONS:
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(3)
    %! baca.hairpin()
    \!
    % MARKUP:
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 8
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-seven-e-flat
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
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.text_spanner()
    - \tweak staff-padding 5.5
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.text_spanner()
    - \abjad-solid-line-with-arrow
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.text_spanner()
    - \baca-text-spanner-left-text "T"
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.text_spanner()
    \startTextSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    dtqf'''!2
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
    \baca-effort-f
    % SPANNER_STOPS:
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(2)
    %! baca.text_spanner()
    \stopTextSpan
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
    - \baca-text-spanner-left-text "A"
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.text_spanner()
    \startTextSpan
    % COMMANDS:
    %! baca.IndicatorCommand._call()
    %! baca.breathe()
    \breathe
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 5]
    %! harmony.sixteenths()
    r16
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

    %! harmony.sixteenths()
    e'8.
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
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
    - \baca-text-spanner-left-markup \baca-cov-markup
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
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r2
    % AFTER:
    % SPANNER_STOPS:
    %! COVERED_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.covered_spanner()
    \bacaStopTextSpanCovered
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 6]
    %! harmony.sixteenths()
    fs'''!4
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
    % TRILL_SPANNER_STARTS:
    %! SPANNER_START
    %! baca.SpannerIndicatorCommand._call(2)
    %! baca.trill_spanner()
    \startTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r2
    % AFTER:
    % SPANNER_STOPS:
    %! SPANNER_STOP
    %! baca.SpannerIndicatorCommand._call(4)
    %! baca.trill_spanner()
    \stopTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 7]
    %! harmony.sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    fs'''!8.
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
    - \tweak self-alignment-X -0.75
    %! EXPLICIT_DYNAMIC
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    %! baca.dynamic()
    \baca-p-sempre
    % SPANNER_STARTS:
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % TRILL_SPANNER_STARTS:
    %! SPANNER_START
    %! baca.SpannerIndicatorCommand._call(2)
    %! baca.trill_spanner()
    - \tweak bound-details.right.padding 2
    %! SPANNER_START
    %! baca.SpannerIndicatorCommand._call(2)
    %! baca.trill_spanner()
    \startTrillSpan
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    fs'''2
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 8]
    %! harmony.sixteenths()
    fs'''2.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Bass_Flute_Music_Voice measure 9]
    %! harmony.sixteenths()
    fs'''2.
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
        \context Voice = "Bass_Flute_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Bass_Flute_Music_Voice measure 10]
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            b'1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
            % SPANNER_STOPS:
            %! SPANNER_STOP
            %! baca.SpannerIndicatorCommand._call(4)
            %! baca.trill_spanner()
            \stopTrillSpan
            % COMMANDS:
            %! baca.OverrideCommand._call(2)
            %! baca.dls_staff_padding()
            \revert DynamicLineSpanner.staff-padding
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Bass_Flute_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Bass_Flute_Rest_Voice measure 10]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Bass_Flute_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Bass_Flute_Music_Voice measure 11]
            % BEFORE:
            % COMMANDS:
            %! INVISIBLE_MUSIC_COMMAND
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! INVISIBLE_MUSIC_COLORING
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            R1 * 1/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Bass_Flute_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Bass_Flute_Rest_Voice measure 11]
            % OPENING:
            % COMMANDS:
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
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
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.15.Bass.Flute.Music.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca.make_global_context()
    \context GlobalRests = "Global_Rests"
    %! baca.make_global_context()
    %! baca.path.extern()
    { \segment.15.Global.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.make_empty_score()
    \context Voice = "Bass_Flute_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.15.Bass.Flute.Music.Voice }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.15.Percussion.I.Music.Voice = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_I_Music_Voice measure 1]
    % BEFORE:
    % COMMANDS:
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 6
    %! EXPLICIT_BAR_EXTENT
    %! REAPPLIED_BAR_EXTENT
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-perc-i-markup
    %! -PARTS
    %! REAPPLIED_MARGIN_MARKUP
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
    %! REAPPLIED_MARGIN_MARKUP_COLOR
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
    %! harmony.sixteenths()
    r16
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
    \p
    % MARKUP:
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Perc. I”]"
    % ABSOLUTE_AFTER:
    % COMMANDS:
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
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
    %! baca.OverrideCommand._call(1)
    %! baca.stem_down()
    \override Stem.direction = #down
    %! harmony.sixteenths()
    d'8.
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
    ^ \baca-slate-scrape-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    d'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    d'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_I_Music_Voice measure 2]
    %! harmony.sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    d'8.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    d'4
    % AFTER:
    % COMMANDS:
    %! baca.OverrideCommand._call(2)
    %! baca.stem_down()
    \revert Stem.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r2
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
    % [Percussion_I_Music_Voice measure 3]
    % BEFORE:
    % COMMANDS:
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \once \override DynamicLineSpanner.staff-padding = 4
    %! MEASURE_133
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_133
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
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
    %! harmony.sixteenths()
    ef'!2.
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
    %! baca.IndicatorCommand._call()
    %! baca.laissez_vibrer()
    \laissezVibrer
    % MARKUP:
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 4
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-glockenspiel-markup
    % ABSOLUTE_AFTER:
    % COMMANDS:
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_I_Music_Voice measure 4]
    % BEFORE:
    % COMMANDS:
    %! MEASURE_134
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
    \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_134
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 6
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
    %! harmony.sixteenths()
    b4 * 3/4
    % AFTER:
    % MARKUP:
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 6
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-bd-superball-markup
    %! DURATION_MULTIPLIER
    %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
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
    % COMMANDS:
    %! -PARTS
    %! EXPLICIT_BAR_EXTENT
    %! baca.IndicatorCommand._call()
    %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
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
    %! harmony.sixteenths()
    %@% \abjad-invisible-music
    %! INVISIBLE_MUSIC_COLORING
    %! harmony.sixteenths()
    \abjad-invisible-music-coloring
    %! harmony.sixteenths()
    b4 * 1/4
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
    % MARKUP:
    %! DURATION_MULTIPLIER
    %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    % COMMANDS:
    %! baca.OverrideCommand._call(2)
    %! baca.stem_down()
    \revert Stem.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r2
    % AFTER:
    % COMMANDS:
    %! baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_I_Music_Voice measure 5]
    % BEFORE:
    % COMMANDS:
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
    %! harmony.sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % BEFORE:
    % COMMANDS:
    %! baca.OverrideCommand._call(1)
    %! baca.stem_down()
    \override Stem.direction = #down
    %! harmony.sixteenths()
    d'8.
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
    ^ \baca-slate-scrape-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_I_Music_Voice measure 6]
    %! harmony.sixteenths()
    d'4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_I_Music_Voice measure 7]
    %! harmony.sixteenths()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    d'8.
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
    \baca-effort-f-sempre
    % SPANNER_STARTS:
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
    %! harmony.sixteenths()
    d'2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_I_Music_Voice measure 8]
    % OPENING:
    % COMMANDS:
    %! abjad.glissando(-1)
    %! baca.glissando()
    \once \override Dots.transparent = ##t
    %! abjad.glissando(-1)
    %! baca.glissando()
    \once \override Stem.transparent = ##t
    %! harmony.sixteenths()
    d'2.
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_I_Music_Voice measure 9]
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
    %! harmony.sixteenths()
    d'2.
    % AFTER:
    % COMMANDS:
    %! baca.OverrideCommand._call(2)
    %! baca.stem_down()
    \revert Stem.direction
    %! baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_I_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Percussion_I_Music_Voice measure 10]
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            c'1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
            % COMMANDS:
            %! baca.OverrideCommand._call(2)
            %! baca.dls_staff_padding()
            \revert DynamicLineSpanner.staff-padding
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_I_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Percussion_I_Rest_Voice measure 10]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_I_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Percussion_I_Music_Voice measure 11]
            % BEFORE:
            % COMMANDS:
            %! INVISIBLE_MUSIC_COMMAND
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! INVISIBLE_MUSIC_COLORING
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            R1 * 1/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_I_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Percussion_I_Rest_Voice measure 11]
            % OPENING:
            % COMMANDS:
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
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
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.15.Percussion.I.Music.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.15.Global.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.make_empty_score()
    \context Voice = "Percussion_I_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.15.Percussion.I.Music.Voice }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.15.Percussion.II.Music.Voice = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_II_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Percussion_II_Music_Voice measure 1]
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
            %! baca.OverrideCommand._call(1)
            %! baca.dls_staff_padding()
            \override DynamicLineSpanner.staff-padding = 6
            %! baca._clone_segment_initial_short_instrument_name()
            \set Staff.instrumentName = \harmony-perc-ii-markup
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
            %! REAPPLIED_MARGIN_MARKUP_COLOR
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            c'1 * 1
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
            \baca-pp-ancora
            % MARKUP:
            %! REAPPLIED_INSTRUMENT_ALERT
            %! baca._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"
            %! REAPPLIED_MARGIN_MARKUP_ALERT
            %! baca._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "[“Perc. II”]"
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"1"
            % ABSOLUTE_AFTER:
            % COMMANDS:
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
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_II_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Percussion_II_Rest_Voice measure 1]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"1"
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
    % [Percussion_II_Music_Voice measure 2]
    %! baca._make_measure_silences()
    R1 * 1
    % AFTER:
    % MARKUP:
    %! DURATION_MULTIPLIER
    %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"1"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 3]
    %! baca._make_measure_silences()
    R1 * 3/4
    % AFTER:
    % MARKUP:
    %! DURATION_MULTIPLIER
    %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 4]
    % BEFORE:
    % COMMANDS:
    %! baca.OverrideCommand._call(1)
    %! baca.stem_up()
    \override Stem.direction = #up
    %! harmony.sixteenths()
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
    \f
    % MARKUP:
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    - \tweak staff-padding 6
    %! baca.IndicatorCommand._call()
    %! baca.markup()
    ^ \baca-brake-drum-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    c'8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    c'8
    % AFTER:
    % COMMANDS:
    %! baca.OverrideCommand._call(2)
    %! baca.stem_up()
    \revert Stem.direction
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8
    % AFTER:
    % COMMANDS:
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.phjc()
    \times 4/5
    %! harmony.phjc()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca._comment_measure_numbers()
        % [Percussion_II_Music_Voice measure 5]
        % BEFORE:
        % COMMANDS:
        %! baca.OverrideCommand._call(1)
        %! baca.dls_staff_padding()
        \override DynamicLineSpanner.staff-padding = 5
        %! baca.OverrideCommand._call(1)
        %! baca.tuplet_bracket_up()
        \override TupletBracket.direction = #up
        %! baca.OverrideCommand._call(1)
        %! baca.tuplet_bracket_staff_padding()
        \override TupletBracket.staff-padding = 0.5
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
        %! harmony.phjc()
        r16
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % BEFORE:
        % COMMANDS:
        %! baca.OverrideCommand._call(1)
        %! baca.stem_down()
        \override Stem.direction = #down
        %! harmony.phjc()
        e'8
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
        % MARKUP:
        %! baca.IndicatorCommand._call()
        %! baca.markup()
        - \tweak staff-padding 5
        %! baca.IndicatorCommand._call()
        %! baca.markup()
        ^ \baca-purpleheart-markup
        % START_BEAM:
        %! harmony.phjc()
        [
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.phjc()
        a16
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.phjc()
        c'16
        % AFTER:
        % STOP_BEAM:
        %! harmony.phjc()
        ]
        % COMMANDS:
        %! baca.OverrideCommand._call(2)
        %! baca.stem_down()
        \revert Stem.direction
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! harmony.phjc()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.phjc()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.phjc()
    r4
    % AFTER:
    % COMMANDS:
    %! baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    %! baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_staff_padding()
    \revert TupletBracket.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 6]
    % BEFORE:
    % COMMANDS:
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_up()
    \override TupletBracket.direction = #up
    %! baca.OverrideCommand._call(1)
    %! baca.tuplet_bracket_staff_padding()
    \override TupletBracket.staff-padding = 0.5
    %! harmony.phjc()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.phjc()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.phjc()
    \times 4/5
    %! harmony.phjc()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.phjc()
        r16
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % BEFORE:
        % COMMANDS:
        %! baca.OverrideCommand._call(1)
        %! baca.stem_down()
        \override Stem.direction = #down
        %! harmony.phjc()
        a16
        % AFTER:
        % START_BEAM:
        %! harmony.phjc()
        [
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.phjc()
        c'16
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.phjc()
        e'16
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.phjc()
        c'16
        % AFTER:
        % STOP_BEAM:
        %! harmony.phjc()
        ]
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! harmony.phjc()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 7]
    %! harmony.phjc()
    r16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.phjc()
    e'16
    % AFTER:
    % START_BEAM:
    %! harmony.phjc()
    [
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.phjc()
    a16
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.phjc()
    a16
    % AFTER:
    % STOP_BEAM:
    %! harmony.phjc()
    ]
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.phjc()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.phjc()
    \times 4/5
    %! harmony.phjc()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.phjc()
        r16
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.phjc()
        c'8
        % AFTER:
        % START_BEAM:
        %! harmony.phjc()
        [
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.phjc()
        e'16
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.phjc()
        c'16
        % AFTER:
        % STOP_BEAM:
        %! harmony.phjc()
        ]
        % COMMANDS:
        %! baca.OverrideCommand._call(2)
        %! baca.stem_down()
        \revert Stem.direction
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! harmony.phjc()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.phjc()
    r4
    % AFTER:
    % COMMANDS:
    %! baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_up()
    \revert TupletBracket.direction
    %! baca.OverrideCommand._call(2)
    %! baca.tuplet_bracket_staff_padding()
    \revert TupletBracket.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_II_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Percussion_II_Music_Voice measure 8]
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            c'1 * 3/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"3" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_II_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Percussion_II_Rest_Voice measure 8]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 3/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"3" #"4"
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
    % [Percussion_II_Music_Voice measure 9]
    %! baca._make_measure_silences()
    R1 * 3/4
    % AFTER:
    % MARKUP:
    %! DURATION_MULTIPLIER
    %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Percussion_II_Music_Voice measure 10]
    %! baca._make_measure_silences()
    R1 * 1/2
    % AFTER:
    % MARKUP:
    %! DURATION_MULTIPLIER
    %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % COMMANDS:
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Percussion_II_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Percussion_II_Music_Voice measure 11]
            % BEFORE:
            % COMMANDS:
            %! INVISIBLE_MUSIC_COMMAND
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! INVISIBLE_MUSIC_COLORING
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            R1 * 1/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Percussion_II_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Percussion_II_Rest_Voice measure 11]
            % OPENING:
            % COMMANDS:
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
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
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.15.Percussion.II.Music.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.15.Global.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.make_empty_score()
    \context Voice = "Percussion_II_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.15.Percussion.II.Music.Voice }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.15.Harp.Music.Voice = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 1]
    % BEFORE:
    % COMMANDS:
    %! MEASURE_131
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_shift()
    %! baca.clef_x_extent_false()
%%% \once \override Staff.Clef.X-extent = ##f
    %! MEASURE_131
    %! SHIFTED_CLEF
    %! baca.OverrideCommand._call(1)
    %! baca.clef_extra_offset()
    %! baca.clef_shift()
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 6
    %! EXPLICIT_BAR_EXTENT
    %! REAPPLIED_BAR_EXTENT
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-hp-markup
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
    %! REAPPLIED_MARGIN_MARKUP_COLOR
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
    %! harmony.sixteenths()
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
    \p
    %! baca.IndicatorCommand._call()
    %! baca.damp()
    - \baca-damp
    % MARKUP:
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Harp”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Hp.”]"
    % ABSOLUTE_AFTER:
    % COMMANDS:
    %! EXPLICIT_CLEF_REDRAW_COLOR
    %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-hp-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.sixteenths()
    \times 2/3
    %! harmony.sixteenths()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.sixteenths()
        r8
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        <b' c''>4
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
        %! baca.IndicatorCommand._call()
        %! baca.double_flageolet()
        - \baca-double-flageolet
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
    %! harmony.sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Harp_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Harp_Music_Voice measure 2]
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            b'1 * 1
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"1"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Harp_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Harp_Rest_Voice measure 2]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"1"
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
    % [Harp_Music_Voice measure 3]
    %! harmony.sixteenths()
    ef'!2.
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
    %! baca.IndicatorCommand._call()
    %! baca.laissez_vibrer()
    \laissezVibrer
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 4]
    %! harmony.sixteenths()
    e'8
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
    %! baca.IndicatorCommand._call()
    %! baca.snap_pizzicato()
    - \snappizzicato
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    e'8
    % AFTER:
    % ARTICULATIONS:
    %! baca.IndicatorCommand._call()
    %! baca.snap_pizzicato()
    - \snappizzicato
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    e'8
    % AFTER:
    % ARTICULATIONS:
    %! baca.IndicatorCommand._call()
    %! baca.snap_pizzicato()
    - \snappizzicato
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 5]
    %! harmony.sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.sixteenths()
    \times 2/3
    %! harmony.sixteenths()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.sixteenths()
        r8
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        <b' c''>4
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
        \baca-f-ancora
        %! baca.IndicatorCommand._call()
        %! baca.double_flageolet()
        - \baca-double-flageolet
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
    %! harmony.sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Harp_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Harp_Music_Voice measure 6]
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            b'1 * 3/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"3" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Harp_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Harp_Rest_Voice measure 6]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 3/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"3" #"4"
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
    % [Harp_Music_Voice measure 7]
    %! baca._make_measure_silences()
    R1 * 3/4
    % AFTER:
    % MARKUP:
    %! DURATION_MULTIPLIER
    %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 8]
    %! baca._make_measure_silences()
    R1 * 3/4
    % AFTER:
    % MARKUP:
    %! DURATION_MULTIPLIER
    %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Harp_Music_Voice measure 9]
    %! harmony.sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.sixteenths()
    \tweak text #tuplet-number::calc-fraction-text
    %! harmony.sixteenths()
    \times 2/3
    %! harmony.sixteenths()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! harmony.sixteenths()
        r8
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        <b' c''>4
        % AFTER:
        % ARTICULATIONS:
        %! baca.IndicatorCommand._call()
        %! baca.double_flageolet()
        - \baca-double-flageolet
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
    %! harmony.sixteenths()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Harp_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Harp_Music_Voice measure 10]
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            b'1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
            % COMMANDS:
            %! baca.OverrideCommand._call(2)
            %! baca.dls_staff_padding()
            \revert DynamicLineSpanner.staff-padding
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Harp_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Harp_Rest_Voice measure 10]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Harp_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Harp_Music_Voice measure 11]
            % BEFORE:
            % COMMANDS:
            %! INVISIBLE_MUSIC_COMMAND
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! INVISIBLE_MUSIC_COLORING
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            R1 * 1/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Harp_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Harp_Rest_Voice measure 11]
            % OPENING:
            % COMMANDS:
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
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
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.15.Harp.Music.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.15.Global.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.make_empty_score()
    \context Voice = "Harp_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.15.Harp.Music.Voice }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.15.Viola.Music.Voice = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Viola_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Viola_Music_Voice measure 1]
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
            %! baca.OverrideCommand._call(1)
            %! baca.dls_staff_padding()
            \override DynamicLineSpanner.staff-padding = 4
            %! EXPLICIT_BAR_EXTENT
            %! REAPPLIED_BAR_EXTENT
            %! baca._reapply_persistent_indicators(3)
            %! baca._set_status_tag()
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            %! baca._clone_segment_initial_short_instrument_name()
            \set Staff.instrumentName = \harmony-va-markup
            %! -PARTS
            %! REAPPLIED_MARGIN_MARKUP
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
            %! REAPPLIED_MARGIN_MARKUP_COLOR
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            c'1 * 1
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
            \ppp
            % MARKUP:
            %! REAPPLIED_INSTRUMENT_ALERT
            %! baca._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "(“Viola”)"
            %! REAPPLIED_MARGIN_MARKUP_ALERT
            %! baca._attach_latent_indicator_alert()
            %@% ^ \baca-reapplied-indicator-markup "[“Va.”]"
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"1"
            % ABSOLUTE_AFTER:
            % COMMANDS:
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
            \set Staff.shortInstrumentName = \harmony-va-markup
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Viola_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Viola_Rest_Voice measure 1]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"1"
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
    % [Viola_Music_Voice measure 2]
    %! baca._make_measure_silences()
    R1 * 1
    % AFTER:
    % MARKUP:
    %! DURATION_MULTIPLIER
    %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"1"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 3]
    %! baca._make_measure_silences()
    R1 * 3/4
    % AFTER:
    % MARKUP:
    %! DURATION_MULTIPLIER
    %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 4]
    %! harmony.sixteenths()
    bf!4
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    % SPANNER_STARTS:
    %! AUTODETECT
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \tweak bound-details.right.padding 2.75
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
    - \baca-text-spanner-left-text "T4"
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    bf!4
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

    %! harmony.sixteenths()
    bf!4
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

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 5]
    %! harmony.sixteenths()
    f'4
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
    \p
    % SPANNER_STOPS:
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP
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
    - \tweak bound-details.right.padding 2.75
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    f'16
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8.
    % AFTER:
    % SPANNER_STOPS:
    %! BOW_SPEED_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 6]
    %! harmony.sixteenths()
    f'4
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
    \p
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
    - \tweak bound-details.right.padding 2.75
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    f'16
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8.
    % AFTER:
    % SPANNER_STOPS:
    %! BOW_SPEED_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 7]
    %! harmony.sixteenths()
    f'2.
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
    \baca-p-sempre
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
    - \tweak bound-details.right.padding 2.75
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 8]
    %! harmony.sixteenths()
    f'2.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 9]
    %! harmony.sixteenths()
    f'2.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Viola_Music_Voice measure 10]
    %! harmony.sixteenths()
    f'16
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8.
    % AFTER:
    % SPANNER_STOPS:
    %! BOW_SPEED_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.bow_speed_spanner()
    \bacaStopTextSpanBowSpeed
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r4
    % AFTER:
    % COMMANDS:
    %! baca.OverrideCommand._call(2)
    %! baca.dls_staff_padding()
    \revert DynamicLineSpanner.staff-padding
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Viola_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Viola_Music_Voice measure 11]
            % BEFORE:
            % COMMANDS:
            %! INVISIBLE_MUSIC_COMMAND
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! INVISIBLE_MUSIC_COLORING
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            c'1 * 1/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Viola_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Viola_Rest_Voice measure 11]
            % OPENING:
            % COMMANDS:
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
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
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.15.Viola.Music.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.15.Global.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.make_empty_score()
    \context Voice = "Viola_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.15.Viola.Music.Voice }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.15.Cello.I.Music.Voice = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 1]
    % BEFORE:
    % COMMANDS:
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-vc-i-markup
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
    % OPENING:
    % COMMANDS:
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \clef "bass"
    %! REAPPLIED_CLEF_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
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
    %! harmony.sixteenths()
    a,8.
    % AFTER:
    % MARKUP:
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Cello”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Vc. I”]"
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
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r16
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    a,4
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    a,8.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r16
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 2]
    %! harmony.sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    a,8
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    a,16
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8.
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Cello_I_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Cello_I_Music_Voice measure 3]
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            d1 * 3/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"3" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Cello_I_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Cello_I_Rest_Voice measure 3]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 3/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"3" #"4"
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
    % [Cello_I_Music_Voice measure 4]
    %! harmony.sixteenths()
    aqf!4
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    % SPANNER_STARTS:
    %! AUTODETECT
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \tweak bound-details.right.padding 2.75
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
    - \baca-text-spanner-left-text "T4"
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    aqf!4
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

    %! harmony.sixteenths()
    aqf!4
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

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 5]
    %! harmony.sixteenths()
    a,8.
    % AFTER:
    % SPANNER_STOPS:
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP
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

    %! harmony.sixteenths()
    r16
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 6]
    %! harmony.sixteenths()
    a,2.
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 7]
    %! harmony.sixteenths()
    a,2.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 8]
    %! harmony.sixteenths()
    a,2.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_I_Music_Voice measure 9]
    %! harmony.sixteenths()
    a,2
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
    \baca-fff-scratch
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    a,8.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r16
    % AFTER:
    % ARTICULATIONS:
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Cello_I_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Cello_I_Music_Voice measure 10]
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            d1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
            % COMMANDS:
            %! baca.OverrideCommand._call(2)
            %! baca.dls_staff_padding()
            \revert DynamicLineSpanner.staff-padding
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Cello_I_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Cello_I_Rest_Voice measure 10]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Cello_I_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Cello_I_Music_Voice measure 11]
            % BEFORE:
            % COMMANDS:
            %! INVISIBLE_MUSIC_COMMAND
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! INVISIBLE_MUSIC_COLORING
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            R1 * 1/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Cello_I_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Cello_I_Rest_Voice measure 11]
            % OPENING:
            % COMMANDS:
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
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
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.15.Cello.I.Music.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.15.Global.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.make_empty_score()
    \context Voice = "Cello_I_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.15.Cello.I.Music.Voice }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.15.Cello.II.Music.Voice = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 1]
    % BEFORE:
    % COMMANDS:
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-vc-ii-markup
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
    % OPENING:
    % COMMANDS:
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \clef "bass"
    %! REAPPLIED_CLEF_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
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
    %! harmony.sixteenths()
    g,8.
    % AFTER:
    % MARKUP:
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Cello”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Vc. II”]"
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
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r16
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    g,4
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    g,8.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r16
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 2]
    %! harmony.sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    g,8
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    g,16
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8.
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca.skeleton()
    \times 8/10
    %! baca.skeleton()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca._comment_measure_numbers()
        % [Cello_II_Music_Voice measure 3]
        % BEFORE:
        % COMMANDS:
        %! baca.IndicatorCommand._call()
        %! baca.literal()
        \once \override TupletBracket.edge-height = #'(0.7 . 0)
        %! baca.IndicatorCommand._call()
        %! baca.literal()
        \once \override TupletNumber.text = #"10:8"
        %! baca.skeleton()
        f4
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
        \baca-f-ancora
        %! baca.IndicatorCommand._call()
        %! baca.triple_staccato()
        - \baca-staccati #3
        % SPANNER_STARTS:
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! AUTODETECT
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! RHYTHM_ANNOTATION_SPANNER
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! SPANNER_START
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! baca.PiecewiseCommand._call(2)
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \tweak bound-details.right.padding 2.75
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \tweak color #darkcyan
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \tweak staff-padding 8
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \abjad-dashed-line-with-hook
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \baca-text-spanner-left-text "baca.skeleton()"
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% \bacaStartTextSpanRhythmAnnotation
        %! AUTODETECT
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        - \tweak bound-details.right.padding 2.75
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        - \tweak staff-padding 3
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        - \abjad-invisible-line
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        - \baca-text-spanner-left-text "P4"
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        \bacaStartTextSpanSCP
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca.skeleton()
        r4
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca.skeleton()
        r4
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca.skeleton()
        r8.
        % AFTER:
        % LEAK:
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_STOP
        %! baca.PiecewiseCommand._call(4)
        %! baca.rhythm_annotation_spanner()
        %@% <>
        % LEAKS:
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_STOP
        %! baca.PiecewiseCommand._call(4)
        %! baca.rhythm_annotation_spanner()
        %@% \bacaStopTextSpanRhythmAnnotation
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! baca.skeleton()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 4]
    %! harmony.sixteenths()
    f4
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    % SPANNER_STOPS:
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP
    % SPANNER_STARTS:
    %! AUTODETECT
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \tweak bound-details.right.padding 2.75
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
    - \baca-text-spanner-left-text "T4"
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    f4
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

    %! harmony.sixteenths()
    f4
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

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 5]
    %! harmony.sixteenths()
    g,8.
    % AFTER:
    % SPANNER_STOPS:
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP
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

    %! harmony.sixteenths()
    r16
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 6]
    %! harmony.sixteenths()
    g,2.
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 7]
    %! harmony.sixteenths()
    g,2.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 8]
    %! harmony.sixteenths()
    g,2.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Cello_II_Music_Voice measure 9]
    %! harmony.sixteenths()
    g,2
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
    \baca-fff-scratch
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    g,8.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r16
    % AFTER:
    % ARTICULATIONS:
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Cello_II_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Cello_II_Music_Voice measure 10]
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            d1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
            % COMMANDS:
            %! baca.OverrideCommand._call(2)
            %! baca.dls_staff_padding()
            \revert DynamicLineSpanner.staff-padding
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Cello_II_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Cello_II_Rest_Voice measure 10]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Cello_II_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Cello_II_Music_Voice measure 11]
            % BEFORE:
            % COMMANDS:
            %! INVISIBLE_MUSIC_COMMAND
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! INVISIBLE_MUSIC_COLORING
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            R1 * 1/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Cello_II_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Cello_II_Rest_Voice measure 11]
            % OPENING:
            % COMMANDS:
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
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
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.15.Cello.II.Music.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.15.Global.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.make_empty_score()
    \context Voice = "Cello_II_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.15.Cello.II.Music.Voice }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.15.Contrabass.I.Music.Voice = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 1]
    % BEFORE:
    % COMMANDS:
    %! baca.OverrideCommand._call(1)
    %! baca.dls_staff_padding()
    \override DynamicLineSpanner.staff-padding = 4
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-cb-i-markup
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
    % OPENING:
    % COMMANDS:
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \clef "bass"
    %! REAPPLIED_CLEF_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
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
    %! harmony.sixteenths()
    gs,!8.
    % AFTER:
    % MARKUP:
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Cb. I”]"
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
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r16
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    gs,!4
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    gs,8.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r16
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 2]
    %! harmony.sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    gs,!8
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    gs,16
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8.
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca.skeleton()
    \times 8/11
    %! baca.skeleton()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca._comment_measure_numbers()
        % [Contrabass_I_Music_Voice measure 3]
        % BEFORE:
        % COMMANDS:
        %! baca.IndicatorCommand._call()
        %! baca.literal()
        \once \override TupletBracket.edge-height = #'(0.7 . 0)
        %! baca.IndicatorCommand._call()
        %! baca.literal()
        \once \override TupletNumber.text = #"11:8"
        %! baca.skeleton()
        r4
        % AFTER:
        % SPANNER_STARTS:
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! AUTODETECT
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! RHYTHM_ANNOTATION_SPANNER
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! SPANNER_START
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! baca.PiecewiseCommand._call(2)
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \tweak bound-details.right.padding 2.75
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \tweak color #darkcyan
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \tweak staff-padding 8
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \abjad-dashed-line-with-hook
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \baca-text-spanner-left-text "baca.skeleton()"
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% \bacaStartTextSpanRhythmAnnotation
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca.skeleton()
        dtqf'!4
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
        \baca-f-ancora
        %! baca.IndicatorCommand._call()
        %! baca.triple_staccato()
        - \baca-staccati #3
        % MARKUP:
        %! baca.IndicatorCommand._call()
        %! baca.markup()
        - \tweak X-offset 3
        %! baca.IndicatorCommand._call()
        %! baca.markup()
        ^ \baca-seven-e-flat
        % SPANNER_STARTS:
        %! AUTODETECT
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        - \tweak bound-details.right.padding 2.75
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        - \tweak staff-padding 5.5
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        - \abjad-invisible-line
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        - \baca-text-spanner-left-text "P4"
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        \bacaStartTextSpanSCP
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca.skeleton()
        r4
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca.skeleton()
        r4
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca.skeleton()
        r32
        % AFTER:
        % LEAK:
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_STOP
        %! baca.PiecewiseCommand._call(4)
        %! baca.rhythm_annotation_spanner()
        %@% <>
        % LEAKS:
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_STOP
        %! baca.PiecewiseCommand._call(4)
        %! baca.rhythm_annotation_spanner()
        %@% \bacaStopTextSpanRhythmAnnotation
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! baca.skeleton()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 4]
    %! harmony.sixteenths()
    dtqf'!4
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    % SPANNER_STOPS:
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP
    % SPANNER_STARTS:
    %! AUTODETECT
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \tweak bound-details.right.padding 2.75
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
    - \baca-text-spanner-left-text "T4"
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    dtqf'!4
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

    %! harmony.sixteenths()
    dtqf'!4
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

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 5]
    %! harmony.sixteenths()
    gs,!8.
    % AFTER:
    % SPANNER_STOPS:
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP
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

    %! harmony.sixteenths()
    r16
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 6]
    %! harmony.sixteenths()
    gs,!2.
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 7]
    %! harmony.sixteenths()
    gs,2.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 8]
    %! harmony.sixteenths()
    gs,2.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_I_Music_Voice measure 9]
    %! harmony.sixteenths()
    gs,2
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
    \baca-fff-scratch
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    gs,8.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r16
    % AFTER:
    % ARTICULATIONS:
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Contrabass_I_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Contrabass_I_Music_Voice measure 10]
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            d1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
            % COMMANDS:
            %! baca.OverrideCommand._call(2)
            %! baca.dls_staff_padding()
            \revert DynamicLineSpanner.staff-padding
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Contrabass_I_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Contrabass_I_Rest_Voice measure 10]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Contrabass_I_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Contrabass_I_Music_Voice measure 11]
            % BEFORE:
            % COMMANDS:
            %! INVISIBLE_MUSIC_COMMAND
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! INVISIBLE_MUSIC_COLORING
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            R1 * 1/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Contrabass_I_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Contrabass_I_Rest_Voice measure 11]
            % OPENING:
            % COMMANDS:
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
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
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.15.Contrabass.I.Music.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.15.Global.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.make_empty_score()
    \context Voice = "Contrabass_I_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.15.Contrabass.I.Music.Voice }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
>>


%! baca.path.extern()
segment.15.Contrabass.II.Music.Voice = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 1]
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
    %! baca._clone_segment_initial_short_instrument_name()
    \set Staff.instrumentName = \harmony-cb-ii-markup
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
    % OPENING:
    % COMMANDS:
    %! REAPPLIED_CLEF
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    \clef "bass"
    %! REAPPLIED_CLEF_COLOR
    %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
    %! REAPPLIED_MARGIN_MARKUP_COLOR
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
    %! harmony.sixteenths()
    fs,!8.
    % AFTER:
    % MARKUP:
    %! REAPPLIED_INSTRUMENT_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"
    %! REAPPLIED_MARGIN_MARKUP_ALERT
    %! baca._attach_latent_indicator_alert()
    %@% ^ \baca-reapplied-indicator-markup "[“Cb. II”]"
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
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    %! baca._attach_color_literal(2)
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
    %! -PARTS
    %! REDRAWN_REAPPLIED_MARGIN_MARKUP
    %! baca._reapply_persistent_indicators(3)
    %! baca._set_status_tag()
    %! baca.treat_persistent_wrapper(3)
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r16
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r4
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    fs,!4
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    fs,8.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r16
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 2]
    %! harmony.sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    fs,!8
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    fs,16
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r8.
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca.skeleton()
    \times 8/12
    %! baca.skeleton()
    {
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca._comment_measure_numbers()
        % [Contrabass_II_Music_Voice measure 3]
        % BEFORE:
        % COMMANDS:
        %! baca.IndicatorCommand._call()
        %! baca.literal()
        \once \override TupletBracket.edge-height = #'(0.7 . 0)
        %! baca.IndicatorCommand._call()
        %! baca.literal()
        \once \override TupletNumber.text = #"12:8"
        %! baca.skeleton()
        r4
        % AFTER:
        % SPANNER_STARTS:
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! AUTODETECT
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! RHYTHM_ANNOTATION_SPANNER
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! SPANNER_START
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! baca.PiecewiseCommand._call(2)
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
    %@%     %! baca.rhythm_annotation_spanner()
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \tweak bound-details.right.padding 2.75
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \tweak color #darkcyan
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \tweak staff-padding 8
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \abjad-dashed-line-with-hook
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% - \baca-text-spanner-left-text "baca.skeleton()"
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.rhythm_annotation_spanner()
        %@% \bacaStartTextSpanRhythmAnnotation
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca.skeleton()
        ef!4
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
        \baca-f-ancora
        %! baca.IndicatorCommand._call()
        %! baca.triple_staccato()
        - \baca-staccati #3
        % SPANNER_STARTS:
        %! AUTODETECT
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        - \tweak bound-details.right.padding 2.75
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        - \tweak staff-padding 3
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        - \abjad-invisible-line
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        - \baca-text-spanner-left-text "P4"
        %! SCP_SPANNER
        %! SPANNER_START
        %! baca.PiecewiseCommand._call(2)
        %! baca.scp_spanner()
        \bacaStartTextSpanSCP
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca.skeleton()
        r4
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca.skeleton()
        r4
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        %! baca.skeleton()
        r8
        % AFTER:
        % LEAK:
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_STOP
        %! baca.PiecewiseCommand._call(4)
        %! baca.rhythm_annotation_spanner()
        %@% <>
        % LEAKS:
        %! RHYTHM_ANNOTATION_SPANNER
        %! SPANNER_STOP
        %! baca.PiecewiseCommand._call(4)
        %! baca.rhythm_annotation_spanner()
        %@% \bacaStopTextSpanRhythmAnnotation
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! baca.skeleton()
    }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 4]
    %! harmony.sixteenths()
    dtqf'!4
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
    %! baca.IndicatorCommand._call()
    %! baca.accent()
    - \accent
    % SPANNER_STOPS:
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP
    % SPANNER_STARTS:
    %! AUTODETECT
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    - \tweak bound-details.right.padding 2.75
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
    - \baca-text-spanner-left-text "T4"
    %! SCP_SPANNER
    %! SPANNER_START
    %! baca.PiecewiseCommand._call(2)
    %! baca.scp_spanner()
    \bacaStartTextSpanSCP
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    dtqf'!4
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

    %! harmony.sixteenths()
    dtqf'!4
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

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 5]
    %! harmony.sixteenths()
    fs,!8.
    % AFTER:
    % SPANNER_STOPS:
    %! SCP_SPANNER
    %! SPANNER_STOP
    %! baca.PiecewiseCommand._call(4)
    %! baca.scp_spanner()
    \bacaStopTextSpanSCP
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

    %! harmony.sixteenths()
    r16
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
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 6]
    %! harmony.sixteenths()
    fs,!2.
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
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 7]
    %! harmony.sixteenths()
    fs,2.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 8]
    %! harmony.sixteenths()
    fs,2.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! baca._comment_measure_numbers()
    % [Contrabass_II_Music_Voice measure 9]
    %! harmony.sixteenths()
    fs,2
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
    \baca-fff-scratch
    % SPANNER_STARTS:
    \repeatTie
    %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
    %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    fs,8.
    % AFTER:
    % SPANNER_STARTS:
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    %! harmony.sixteenths()
    r16
    % AFTER:
    % ARTICULATIONS:
    %! baca.IndicatorCommand._call()
    %! baca.stop_on_string()
    - \baca-stop-on-string
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Contrabass_II_Music_Voice"
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Contrabass_II_Music_Voice measure 10]
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
            %! HIDDEN
            %! NOTE
            %! baca._make_multimeasure_rest_container(1)
            d1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! NOTE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
            % COMMANDS:
            %! baca.OverrideCommand._call(2)
            %! baca.dls_staff_padding()
            \revert DynamicLineSpanner.staff-padding
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Contrabass_II_Rest_Voice"
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! baca._comment_measure_numbers()
            % [Contrabass_II_Rest_Voice measure 10]
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._make_multimeasure_rest_container(5)
            R1 * 1/2
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        \context Voice = "Contrabass_II_Music_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Contrabass_II_Music_Voice measure 11]
            % BEFORE:
            % COMMANDS:
            %! INVISIBLE_MUSIC_COMMAND
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(3)
            %! baca._style_phantom_measures(5)
            %@% \abjad-invisible-music
            %! INVISIBLE_MUSIC_COLORING
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(2)
            %! baca._style_phantom_measures(5)
            \abjad-invisible-music-coloring
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._make_multimeasure_rest_container(1)
            R1 * 1/4
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! HIDDEN
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(4)
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        \context Voice = "Contrabass_II_Rest_Voice"
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            %! PHANTOM
            %! baca._comment_measure_numbers()
            %! baca._style_phantom_measures(5)
            % [Contrabass_II_Rest_Voice measure 11]
            % OPENING:
            % COMMANDS:
            %! PHANTOM
            %! baca._style_phantom_measures(7)
            \once \override MultiMeasureRest.transparent = ##t
            %! PHANTOM
            %! baca._style_phantom_measures(6)
            \once \override Score.TimeSignature.X-extent = ##f
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
            % AFTER:
            % MARKUP:
            %! DURATION_MULTIPLIER
            %! MULTIMEASURE_REST
            %! PHANTOM
            %! REST_VOICE
            %! baca._label_duration_multipliers()
            %! baca._style_phantom_measures(5)
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! PHANTOM
        %! baca._make_multimeasure_rest_container(6)
        }
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! PHANTOM
    %! baca._make_multimeasure_rest_container(7)
    >>
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
}


%! baca.path.extern()
segment.15.Contrabass.II.Music.Staff = <<
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! NOT_TOPMOST
    %! baca.make_global_context()
%%% \context GlobalRests = "Global_Rests"
    %! NOT_TOPMOST
    %! baca.make_global_context()
    %! baca.path.extern()
%%% { \segment.15.Global.Rests }
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! harmony.make_empty_score()
    \context Voice = "Contrabass_II_Music_Voice"
    %! harmony.make_empty_score()
    %! baca.path.extern()
    { \segment.15.Contrabass.II.Music.Voice }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
%! harmony.make_empty_score()
%! baca.path.extern()
>>
