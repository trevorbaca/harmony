p_Global_Skips = {                                                             %! ide.Path.extern()

    % [16 Global_Skips measure 141 / measure 1]                                %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \bar ""                                                                    %! EMPTY_START_BAR:+SEGMENT:baca.SegmentMaker._make_global_skips(4)
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    - \tweak extra-offset #'(0 . 18)                                           %! baca.rehearsal_mark():-PARTS:baca.IndicatorCommand._call()
    - \baca-rehearsal-mark-markup "P" #10                                      %! baca.rehearsal_mark():-PARTS:baca.IndicatorCommand._call()
%%% - \tweak extra-offset #'(0 . 10)                                           %! baca.rehearsal_mark():+PARTS:baca.IndicatorCommand._call()
%%% - \baca-rehearsal-mark-markup "P" #4                                       %! baca.rehearsal_mark():+PARTS:baca.IndicatorCommand._call()
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "141"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[P.1-6]"                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! baca.SegmentMaker._reapply_persistent_indicators(2):baca.SegmentMaker._set_status_tag():REAPPLIED_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "96"                        %! baca.SegmentMaker._reapply_persistent_indicators(2):baca.SegmentMaker._set_status_tag():REAPPLIED_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! baca.SegmentMaker._reapply_persistent_indicators(2):baca.SegmentMaker._set_status_tag():REAPPLIED_METRONOME_MARK:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! REAPPLIED_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "96" #'green4       %! REAPPLIED_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! REAPPLIED_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[7'47'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [16 Global_Skips measure 142 / measure 2]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "142"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'48'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [16 Global_Skips measure 143 / measure 3]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "143"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'50'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [16 Global_Skips measure 144 / measure 4]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "144"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'52'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [16 Global_Skips measure 145 / measure 5]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "145"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'54'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [16 Global_Skips measure 146 / measure 6]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "146"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'56'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [16 Global_Skips measure 147 / measure 7]                                %! baca.SegmentMaker._comment_measure_numbers()
    \time 1/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "147"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only-fermata "2''"                                   %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [16 Global_Skips measure 148 / measure 8]                                %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "148"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-colored-left-only "[◀O.4]" #darkgreen                    %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \baca-start-ct-left-only "[8'00'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [16 Global_Skips measure 149 / measure 9]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "149"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[P.7-8]"                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \baca-start-ct-left-only "[8'02'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [16 Global_Skips measure 150 / measure 10]                               %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "150"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-both "[8'04'']" "[8'05'']"                                %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [16 Global_Skips measure 151 / measure 11]                               %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
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


p_Global_Rests = {                                                             %! ide.Path.extern()

    % [16 Global_Rests measure 141 / measure 1]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [16 Global_Rests measure 142 / measure 2]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [16 Global_Rests measure 143 / measure 3]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [16 Global_Rests measure 144 / measure 4]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [16 Global_Rests measure 145 / measure 5]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [16 Global_Rests measure 146 / measure 6]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [16 Global_Rests measure 147 / measure 7]                                %! baca.SegmentMaker._comment_measure_numbers()
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure                                                      %! baca.global_fermata():baca.GlobalFermataCommand._call(2)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata():baca.GlobalFermataCommand._call(1)

    % [16 Global_Rests measure 148 / measure 8]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [16 Global_Rests measure 149 / measure 9]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [16 Global_Rests measure 150 / measure 10]                               %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [16 Global_Rests measure 151 / measure 11]                               %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(2):PHANTOM

}                                                                              %! ide.Path.extern()


p_Bass_Flute_Music_Voice = {                                                   %! ide.Path.extern()

    % [16 Bass_Flute_Music_Voice measure 141 / measure 1]                      %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-bfl-markup                            %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = 4                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \clef "treble"                                                             %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    d'''8.                                                                     %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X -0.9                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-p-ancora                                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-reapplied-indicator-markup "[“Bfl.”]"                              %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“BassFlute”)"                         %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([3, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.text_spanner():baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 5.5                                                 %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(4):SPANNER_STOP

    d'''2                                                                      %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.text_spanner():baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 5.5                                                 %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START

    % [16 Bass_Flute_Music_Voice measure 142 / measure 2]                      %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(4):SPANNER_STOP

    d'''4                                                                      %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.text_spanner():baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 5.5                                                 %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    % [16 Bass_Flute_Music_Voice measure 143 / measure 3]                      %! baca.SegmentMaker._comment_measure_numbers()
    d'''8.                                                                     %! harmony.sixteenths()
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(4):SPANNER_STOP

    d'''4                                                                      %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.text_spanner():baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 5.5                                                 %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START

    r4                                                                         %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [16 Bass_Flute_Music_Voice measure 144 / measure 4]                      %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [16 Bass_Flute_Music_Voice measure 145 / measure 5]                      %! baca.SegmentMaker._comment_measure_numbers()
    d'''2.                                                                     %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.text_spanner():baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 5.5                                                 %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    % [16 Bass_Flute_Music_Voice measure 146 / measure 6]                      %! baca.SegmentMaker._comment_measure_numbers()
    d'''4                                                                      %! harmony.sixteenths()
    \repeatTie

    r4                                                                         %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(4):SPANNER_STOP

    d'''4                                                                      %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.text_spanner():baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 5.5                                                 %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [16 Bass_Flute_Music_Voice measure 147 / measure 7]              %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \stopTextSpan                                                      %! baca.text_spanner():baca.PiecewiseCommand._call(4):SPANNER_STOP
            \override Staff.BarLine.bar-extent = #'(0 . 0)                     %! baca.SegmentMaker._style_fermata_measures(2):FERMATA_MEASURE_EMPTY_BAR_EXTENT

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [16 Bass_Flute_Rest_Voice measure 147 / measure 7]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [16 Bass_Flute_Music_Voice measure 148 / measure 8]                      %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(4):FERMATA_MEASURE_NEXT_BAR_EXTENT
%%% \once \override Score.BarLine.transparent = ##t                            %! FERMATA_MEASURE:MEASURE_147:baca.SegmentMaker._style_fermata_measures(7)
%%% \once \override Score.SpanBar.transparent = ##t                            %! FERMATA_MEASURE:MEASURE_147:baca.SegmentMaker._style_fermata_measures(7)
    fs'''!2.                                                                   %! harmony.sixteenths()
    - \tweak color #(x11-color 'DeepPink1)                                     %! REDUNDANT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X -0.9                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():REDUNDANT_DYNAMIC
    \baca-p-ancora                                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():REDUNDANT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths(['+'], talea_denominator=16)"   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2                                     %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
    \startTrillSpan                                                            %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(2):SPANNER_START
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [16 Bass_Flute_Music_Voice measure 149 / measure 9]                      %! baca.SegmentMaker._comment_measure_numbers()
    d'''8.                                                                     %! harmony.sixteenths()
    \stopTrillSpan                                                             %! baca.trill_spanner():baca.SpannerIndicatorCommand._call(4):SPANNER_STOP
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([3, -1, 8, -8, 3, -1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.text_spanner():baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 5.5                                                 %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START

    r16                                                                        %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(4):SPANNER_STOP

    d'''2                                                                      %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.text_spanner():baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 5.5                                                 %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):SPANNER_START

    % [16 Bass_Flute_Music_Voice measure 150 / measure 10]                     %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(4):SPANNER_STOP

    d'''8.                                                                     %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.text_spanner():baca.PiecewiseCommand._call(2):RIGHT_BROKEN:AUTODETECT:SPANNER_START
    - \tweak staff-padding 5.5                                                 %! baca.text_spanner():baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    - \abjad-dashed-line-with-hook                                             %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    - \baca-text-spanner-left-text "MM"                                        %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:AUTODETECT:SPANNER_START
    - \tweak staff-padding 8                                                   %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    \bacaStartTextSpanMetricModulation                                         %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START

    r16                                                                        %! harmony.sixteenths()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [16 Bass_Flute_Music_Voice measure 151 / measure 11]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            \stopTextSpan                                                      %! baca.text_spanner():baca.PiecewiseCommand._call(4):RIGHT_BROKEN:SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \bacaStopTextSpanMetricModulation                                  %! baca.metric_modulation_spanner():METRIC_MODULATION_SPANNER:baca.PiecewiseCommand._call(4):RIGHT_BROKEN:SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [16 Bass_Flute_Rest_Voice measure 151 / measure 11]              %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


p_Bass_Flute_Music_Staff = <<                                                  %! ide.Path.extern()

    \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context()
    \p_Global_Rests                                                            %! ide.Path.extern()

    \context Voice = "Bass_Flute_Music_Voice"                                  %! harmony.ScoreTemplate.__call__()
    \p_Bass_Flute_Music_Voice                                                  %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


p_Percussion_I_Music_Voice = {                                                 %! ide.Path.extern()

    % [16 Percussion_I_Music_Voice measure 141 / measure 1]                    %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
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
    c'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X -0.9                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-p-sempre                                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-reapplied-indicator-markup "[“Perc. I”]"                           %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding 6                                                   %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-brake-drum-paper-towel-markup                                      %! baca.markup():baca.IndicatorCommand._call()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([41, -7, '+'], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [16 Percussion_I_Music_Voice measure 142 / measure 2]                    %! baca.SegmentMaker._comment_measure_numbers()
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(1)
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(1)
    c'2.                                                                       %! harmony.sixteenths()

    % [16 Percussion_I_Music_Voice measure 143 / measure 3]                    %! baca.SegmentMaker._comment_measure_numbers()
    \once \override Dots.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    \once \override Stem.transparent = ##t                                     %! baca.glissando():abjad.glissando(-1)
    c'2.                                                                       %! harmony.sixteenths()

    % [16 Percussion_I_Music_Voice measure 144 / measure 4]                    %! baca.SegmentMaker._comment_measure_numbers()
    c'4                                                                        %! harmony.sixteenths()

    \revert Accidental.stencil                                                 %! baca.glissando():abjad.glissando(6)
    \revert NoteColumn.glissando-skip                                          %! baca.glissando():abjad.glissando(6)
    \revert NoteHead.no-ledgers                                                %! baca.glissando():abjad.glissando(6)
    \undo \hide NoteHead                                                       %! baca.glissando():abjad.glissando(6)
    c'16                                                                       %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    % [16 Percussion_I_Music_Voice measure 145 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
    c'2.                                                                       %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [16 Percussion_I_Music_Voice measure 146 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(1)
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(1)
    \override Dots.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    \override Stem.transparent = ##t                                           %! baca.glissando():abjad.glissando(1)
    \revert Accidental.stencil                                                 %! baca.glissando():abjad.glissando(6)
    \revert NoteColumn.glissando-skip                                          %! baca.glissando():abjad.glissando(6)
    \revert NoteHead.no-ledgers                                                %! baca.glissando():abjad.glissando(6)
    \undo \hide NoteHead                                                       %! baca.glissando():abjad.glissando(6)
    \revert Dots.transparent                                                   %! baca.glissando():abjad.glissando(6)
    \revert Stem.transparent                                                   %! baca.glissando():abjad.glissando(6)
    c'2.                                                                       %! harmony.sixteenths()
    \revert Stem.direction                                                     %! baca.stem_up():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [16 Percussion_I_Music_Voice measure 147 / measure 7]            %! baca.SegmentMaker._comment_measure_numbers()
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

            % [16 Percussion_I_Rest_Voice measure 147 / measure 7]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [16 Percussion_I_Music_Voice measure 148 / measure 8]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! baca.SegmentMaker._style_fermata_measures(4):FERMATA_MEASURE_NEXT_BAR_EXTENT
    \once \override Stem.direction = #down                                     %! baca.stem_down():baca.OverrideCommand._call(1)
    \once \override TupletBracket.direction = #up                              %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
    d'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak self-alignment-X -0.9                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \baca-effort-f                                                             %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding 6                                                   %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-slate-scrape-markup                                                %! baca.markup():baca.IndicatorCommand._call()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths(['+'], talea_denominator=16)"   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [16 Percussion_I_Music_Voice measure 149 / measure 9]                    %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #up                                             %! baca.stem_up():baca.OverrideCommand._call(1)
    c'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding 6                                                   %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-brake-drum-paper-towel-markup                                      %! baca.markup():baca.IndicatorCommand._call()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([12, 4, 4, 1, '-'], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [16 Percussion_I_Music_Voice measure 150 / measure 10]                   %! baca.SegmentMaker._comment_measure_numbers()
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(1)
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(1)
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(1)
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(1)
    c'4                                                                        %! harmony.sixteenths()

    c'4                                                                        %! harmony.sixteenths()

    \revert Accidental.stencil                                                 %! baca.glissando():abjad.glissando(6)
    \revert NoteColumn.glissando-skip                                          %! baca.glissando():abjad.glissando(6)
    \revert NoteHead.no-ledgers                                                %! baca.glissando():abjad.glissando(6)
    \undo \hide NoteHead                                                       %! baca.glissando():abjad.glissando(6)
    c'16                                                                       %! harmony.sixteenths()
    \revert Stem.direction                                                     %! baca.stem_up():baca.OverrideCommand._call(2)

    r8.                                                                        %! harmony.sixteenths()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [16 Percussion_I_Music_Voice measure 151 / measure 11]           %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [16 Percussion_I_Rest_Voice measure 151 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


p_Percussion_I_Music_Staff = <<                                                %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \p_Global_Rests                                                            %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Percussion_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \p_Percussion_I_Music_Voice                                                %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


p_Percussion_II_Music_Voice = {                                                %! ide.Path.extern()

    % [16 Percussion_II_Music_Voice measure 141 / measure 1]                   %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \set Staff.instrumentName = \harmony-perc-ii-markup                        %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up                                    %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
    \override DynamicLineSpanner.staff-padding = 6                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    c'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'DeepPink1)                                     %! REDUNDANT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():REDUNDANT_DYNAMIC
%@% ^ \baca-reapplied-indicator-markup "[“Perc. II”]"                          %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding 6                                                   %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-tam-tam-markup                                                     %! baca.markup():baca.IndicatorCommand._call()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([21, -14, 18, '-'], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [16 Percussion_II_Music_Voice measure 142 / measure 2]                   %! baca.SegmentMaker._comment_measure_numbers()
    c'2                                                                        %! harmony.sixteenths()
    \repeatTie
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    c'16                                                                       %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.damp():baca.IndicatorCommand._call()

    % [16 Percussion_II_Music_Voice measure 143 / measure 3]                   %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    c'16                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'DeepPink1)                                     %! REDUNDANT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():REDUNDANT_DYNAMIC
    ~

    % [16 Percussion_II_Music_Voice measure 144 / measure 4]                   %! baca.SegmentMaker._comment_measure_numbers()
    c'2.                                                                       %! harmony.sixteenths()
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    % [16 Percussion_II_Music_Voice measure 145 / measure 5]                   %! baca.SegmentMaker._comment_measure_numbers()
    c'4                                                                        %! harmony.sixteenths()
    \repeatTie
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    c'16                                                                       %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.damp():baca.IndicatorCommand._call()

    r4                                                                         %! harmony.sixteenths()

    % [16 Percussion_II_Music_Voice measure 146 / measure 6]                   %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()
    \revert TupletBracket.direction                                            %! baca.tuplet_bracket_up():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [16 Percussion_II_Music_Voice measure 147 / measure 7]           %! baca.SegmentMaker._comment_measure_numbers()
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

            % [16 Percussion_II_Rest_Voice measure 147 / measure 7]            %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [16 Percussion_II_Music_Voice measure 148 / measure 8]                   %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [16 Percussion_II_Music_Voice measure 149 / measure 9]                   %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    \override TupletBracket.direction = #up                                    %! baca.tuplet_bracket_up():baca.OverrideCommand._call(1)
    c'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'DeepPink1)                                     %! REDUNDANT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():REDUNDANT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([21, -14, 18, '-'], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    % [16 Percussion_II_Music_Voice measure 150 / measure 10]                  %! baca.SegmentMaker._comment_measure_numbers()
    c'2                                                                        %! harmony.sixteenths()
    \repeatTie
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    c'16                                                                       %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.damp():baca.IndicatorCommand._call()
    \revert TupletBracket.direction                                            %! baca.tuplet_bracket_up():baca.OverrideCommand._call(2)
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [16 Percussion_II_Music_Voice measure 151 / measure 11]          %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [16 Percussion_II_Rest_Voice measure 151 / measure 11]           %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


p_Percussion_II_Music_Staff = <<                                               %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \p_Global_Rests                                                            %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Percussion_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \p_Percussion_II_Music_Voice                                               %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


p_Harp_Music_Voice = {                                                         %! ide.Path.extern()

    % [16 Harp_Music_Voice measure 141 / measure 1]                            %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-hp-markup                             %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = 7                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_141:baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_141:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    f,,2.                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'DeepPink1)                                     %! REDUNDANT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-reapplied-indicator-markup "(“Harp”)"                              %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "[“Hp.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([21, -14, 18, '-'], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    % [16 Harp_Music_Voice measure 142 / measure 2]                            %! baca.SegmentMaker._comment_measure_numbers()
    f,,2                                                                       %! harmony.sixteenths()
    \repeatTie
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    f,,16                                                                      %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.damp():baca.IndicatorCommand._call()

    % [16 Harp_Music_Voice measure 143 / measure 3]                            %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    f,,16                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'DeepPink1)                                     %! REDUNDANT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():REDUNDANT_DYNAMIC
    ~

    % [16 Harp_Music_Voice measure 144 / measure 4]                            %! baca.SegmentMaker._comment_measure_numbers()
    f,,2.                                                                      %! harmony.sixteenths()
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    % [16 Harp_Music_Voice measure 145 / measure 5]                            %! baca.SegmentMaker._comment_measure_numbers()
    f,,4                                                                       %! harmony.sixteenths()
    \repeatTie
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    f,,16                                                                      %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.damp():baca.IndicatorCommand._call()

    r4                                                                         %! harmony.sixteenths()

    % [16 Harp_Music_Voice measure 146 / measure 6]                            %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [16 Harp_Music_Voice measure 147 / measure 7]                    %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(2):FERMATA_MEASURE_EMPTY_BAR_EXTENT

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [16 Harp_Rest_Voice measure 147 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [16 Harp_Music_Voice measure 148 / measure 8]                            %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(4):FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override DynamicLineSpanner.staff-padding = 6                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_148:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_148:baca.OverrideCommand._call(1)
    \clef "treble"                                                             %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    r2                                                                         %! harmony.sixteenths()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths(['-', 4], denominator=None, extra_counts=[2], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 2/3 {                                                               %! harmony.sixteenths()

        r8                                                                     %! harmony.sixteenths()

        <b' c''>4
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \f                                                                     %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
        - \baca-double-flageolet                                               %! baca.double_flageolet():baca.IndicatorCommand._call()
        - \tweak padding 1.5                                                   %! baca.markup():baca.IndicatorCommand._call()
        ^ \baca-lv-markup                                                      %! baca.markup():baca.IndicatorCommand._call()
        \revert DynamicLineSpanner.staff-padding                               %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
    %@% <> \bacaStopTextSpanRhythmAnnotation                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    }                                                                          %! harmony.sixteenths()

    % [16 Harp_Music_Voice measure 149 / measure 9]                            %! baca.SegmentMaker._comment_measure_numbers()
    \override DynamicLineSpanner.staff-padding = 7                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_149:baca.OverrideCommand._call(1)
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_149:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    f,,2.                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([21, -14, 18, '-'], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    % [16 Harp_Music_Voice measure 150 / measure 10]                           %! baca.SegmentMaker._comment_measure_numbers()
    f,,2                                                                       %! harmony.sixteenths()
    \repeatTie
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    f,,16                                                                      %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.damp():baca.IndicatorCommand._call()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [16 Harp_Music_Voice measure 151 / measure 11]                   %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [16 Harp_Rest_Voice measure 151 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


p_Harp_Music_Staff = <<                                                        %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \p_Global_Rests                                                            %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Harp_Music_Voice"                                        %! harmony.ScoreTemplate.__call__()
    \p_Harp_Music_Voice                                                        %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


p_Viola_Music_Voice = {                                                        %! ide.Path.extern()

    % [16 Viola_Music_Voice measure 141 / measure 1]                           %! baca.SegmentMaker._comment_measure_numbers()
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
    d'8                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \ppp                                                                       %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding 1.5                                                 %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
%@% ^ \baca-reapplied-indicator-markup "[“Va.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Viola”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([2, 1, -1, 4, 2, 1, -1, -8, 4, 2, 1, -1, 2, 1, -1, -16, 2, 1, -1, 8, 2, 1, -1, -4, 2, 1, -1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    - \abjad-dashed-line-with-hook                                             %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "½ clt"                                     %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 5.5                                                 %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanHalfCLT                                                  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    ef'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    d'4                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 1.5                                                 %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    ef'!8                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 1.5                                                 %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    d'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    % [16 Viola_Music_Voice measure 142 / measure 2]                           %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    ef'!4                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 1.5                                                 %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [16 Viola_Music_Voice measure 143 / measure 3]                           %! baca.SegmentMaker._comment_measure_numbers()
    d'8                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 1.5                                                 %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    ef'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    d'8                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 1.5                                                 %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    ef'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    % [16 Viola_Music_Voice measure 144 / measure 4]                           %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [16 Viola_Music_Voice measure 145 / measure 5]                           %! baca.SegmentMaker._comment_measure_numbers()
    d'8                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 1.5                                                 %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    ef'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    d'2                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 1.5                                                 %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [16 Viola_Music_Voice measure 146 / measure 6]                           %! baca.SegmentMaker._comment_measure_numbers()
    ef'!8                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 1.5                                                 %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    d'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    ef'!8                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 1.5                                                 %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    d'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [16 Viola_Music_Voice measure 147 / measure 7]                   %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \bacaStopTextSpanHalfCLT                                           %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(2):FERMATA_MEASURE_EMPTY_BAR_EXTENT

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [16 Viola_Rest_Voice measure 147 / measure 7]                    %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [16 Viola_Music_Voice measure 148 / measure 8]                           %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(4):FERMATA_MEASURE_NEXT_BAR_EXTENT
    f'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths(['+'], talea_denominator=16)"   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "XFB"                                       %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [16 Viola_Music_Voice measure 149 / measure 9]                           %! baca.SegmentMaker._comment_measure_numbers()
    d'2.                                                                       %! baca.make_repeat_tied_notes()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \bacaStopTextSpanBowSpeed                                                  %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "make_repeat_tied_notes()"                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkcyan                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    - \abjad-dashed-line-with-hook                                             %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    - \baca-text-spanner-left-text "poco scr."                                 %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START
    \bacaStartTextSpanBowSpeed                                                 %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(2):RIGHT_BROKEN:SPANNER_START

    % [16 Viola_Music_Voice measure 150 / measure 10]                          %! baca.SegmentMaker._comment_measure_numbers()
    \hide NoteHead                                                             %! baca.glissando():abjad.glissando(0):SHOW_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN
    \override Accidental.stencil = ##f                                         %! baca.glissando():abjad.glissando(0):SHOW_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN
    \override NoteColumn.glissando-skip = ##t                                  %! baca.glissando():abjad.glissando(0):SHOW_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN
    \override NoteHead.no-ledgers = ##t                                        %! baca.glissando():abjad.glissando(0):SHOW_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN
    \override Dots.transparent = ##t                                           %! baca.glissando():abjad.glissando(0):SHOW_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN
    \override Stem.transparent = ##t                                           %! baca.glissando():abjad.glissando(0):SHOW_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN
    d'2.                                                                       %! baca.make_repeat_tied_notes()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [16 Viola_Music_Voice measure 151 / measure 11]                  %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \revert Accidental.stencil                                         %! baca.glissando():abjad.glissando(4):HIDE_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \revert NoteColumn.glissando-skip                                  %! baca.glissando():abjad.glissando(4):HIDE_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \revert NoteHead.no-ledgers                                        %! baca.glissando():abjad.glissando(4):HIDE_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \undo \hide NoteHead                                               %! baca.glissando():abjad.glissando(4):HIDE_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \revert Dots.transparent                                           %! baca.glissando():abjad.glissando(4):HIDE_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \revert Stem.transparent                                           %! baca.glissando():abjad.glissando(4):HIDE_TO_JOIN_BROKEN_SPANNERS:RIGHT_BROKEN:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            \bacaStopTextSpanBowSpeed                                          %! baca.bow_speed_spanner():BOW_SPEED_SPANNER:baca.PiecewiseCommand._call(4):RIGHT_BROKEN:SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [16 Viola_Rest_Voice measure 151 / measure 11]                   %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


p_Viola_Music_Staff = <<                                                       %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \p_Global_Rests                                                            %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Viola_Music_Voice"                                       %! harmony.ScoreTemplate.__call__()
    \p_Viola_Music_Voice                                                       %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


p_Cello_I_Music_Voice = {                                                      %! ide.Path.extern()

    % [16 Cello_I_Music_Voice measure 141 / measure 1]                         %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-vc-i-markup                           %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = 4                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    ds!8.                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-reapplied-indicator-markup "[“Vc. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([3, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    ds!2                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    % [16 Cello_I_Music_Voice measure 142 / measure 2]                         %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    ds!4                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    % [16 Cello_I_Music_Voice measure 143 / measure 3]                         %! baca.SegmentMaker._comment_measure_numbers()
    ds8.                                                                       %! harmony.sixteenths()
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    ds!4                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    r4                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [16 Cello_I_Music_Voice measure 144 / measure 4]                         %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [16 Cello_I_Music_Voice measure 145 / measure 5]                         %! baca.SegmentMaker._comment_measure_numbers()
    ds!2.                                                                      %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    % [16 Cello_I_Music_Voice measure 146 / measure 6]                         %! baca.SegmentMaker._comment_measure_numbers()
    ds4                                                                        %! harmony.sixteenths()
    \repeatTie

    r4                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    ds!4                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [16 Cello_I_Music_Voice measure 147 / measure 7]                 %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \bacaStopTextSpanDamp                                              %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [16 Cello_I_Rest_Voice measure 147 / measure 7]                  %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [16 Cello_I_Music_Voice measure 148 / measure 8]                         %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    a,2                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths(['+', -1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    a,8.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \baca-fff-scratch                                                          %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [16 Cello_I_Music_Voice measure 149 / measure 9]                         %! baca.SegmentMaker._comment_measure_numbers()
    ds!8.                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([3, -1, 8, -8, 3, -1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    ds!2                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    % [16 Cello_I_Music_Voice measure 150 / measure 10]                        %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    ds!8.                                                                      %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [16 Cello_I_Music_Voice measure 151 / measure 11]                %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [16 Cello_I_Rest_Voice measure 151 / measure 11]                 %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


p_Cello_I_Music_Staff = <<                                                     %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \p_Global_Rests                                                            %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Cello_I_Music_Voice"                                     %! harmony.ScoreTemplate.__call__()
    \p_Cello_I_Music_Voice                                                     %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


p_Cello_II_Music_Voice = {                                                     %! ide.Path.extern()

    % [16 Cello_II_Music_Voice measure 141 / measure 1]                        %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-vc-ii-markup                          %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = 4                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    cs!8.                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% ^ \baca-reapplied-indicator-markup "[“Vc. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([3, -1, 8, -8, 7, -1, 4, -16, 16, -4, 4], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    cs!2                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    % [16 Cello_II_Music_Voice measure 142 / measure 2]                        %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    cs!4                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    % [16 Cello_II_Music_Voice measure 143 / measure 3]                        %! baca.SegmentMaker._comment_measure_numbers()
    cs8.                                                                       %! harmony.sixteenths()
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    cs!4                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    r4                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [16 Cello_II_Music_Voice measure 144 / measure 4]                        %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [16 Cello_II_Music_Voice measure 145 / measure 5]                        %! baca.SegmentMaker._comment_measure_numbers()
    cs!2.                                                                      %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    % [16 Cello_II_Music_Voice measure 146 / measure 6]                        %! baca.SegmentMaker._comment_measure_numbers()
    cs4                                                                        %! harmony.sixteenths()
    \repeatTie

    r4                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    cs!4                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [16 Cello_II_Music_Voice measure 147 / measure 7]                %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \bacaStopTextSpanDamp                                              %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [16 Cello_II_Rest_Voice measure 147 / measure 7]                 %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [16 Cello_II_Music_Voice measure 148 / measure 8]                        %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    g,2                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths(['+', -1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    g,8.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \baca-fff-scratch                                                          %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [16 Cello_II_Music_Voice measure 149 / measure 9]                        %! baca.SegmentMaker._comment_measure_numbers()
    cs!8.                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \pp                                                                        %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([3, -1, 8, -8, 3, -1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    cs!2                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    % [16 Cello_II_Music_Voice measure 150 / measure 10]                       %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    cs!8.                                                                      %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 2.75                                  %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 3                                                   %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [16 Cello_II_Music_Voice measure 151 / measure 11]               %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [16 Cello_II_Rest_Voice measure 151 / measure 11]                %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


p_Cello_II_Music_Staff = <<                                                    %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \p_Global_Rests                                                            %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Cello_II_Music_Voice"                                    %! harmony.ScoreTemplate.__call__()
    \p_Cello_II_Music_Voice                                                    %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


p_Contrabass_I_Music_Voice = {                                                 %! ide.Path.extern()

    % [16 Contrabass_I_Music_Voice measure 141 / measure 1]                    %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-cb-i-markup                           %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override DynamicLineSpanner.staff-padding = 4                             %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
%@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    e'8                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \ppp                                                                       %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
%@% ^ \baca-reapplied-indicator-markup "[“Cb. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([2, 1, -1, 4, 2, 1, -1, -8, 4, 2, 1, -1, 2, 1, -1, -16, 2, 1, -1, 8, 2, 1, -1, -4, 2, 1, -1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    - \abjad-dashed-line-with-hook                                             %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "½ clt"                                     %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 8                                                   %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanHalfCLT                                                  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    ds'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    e'4                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    ds'!8                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    e'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    % [16 Contrabass_I_Music_Voice measure 142 / measure 2]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    ds'!4                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [16 Contrabass_I_Music_Voice measure 143 / measure 3]                    %! baca.SegmentMaker._comment_measure_numbers()
    e'8                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    ds'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    e'8                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    ds'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    % [16 Contrabass_I_Music_Voice measure 144 / measure 4]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [16 Contrabass_I_Music_Voice measure 145 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
    e'8                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    ds'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    e'2                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [16 Contrabass_I_Music_Voice measure 146 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
    ds'!8                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    e'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    ds'!8                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    e'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [16 Contrabass_I_Music_Voice measure 147 / measure 7]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \bacaStopTextSpanHalfCLT                                           %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [16 Contrabass_I_Rest_Voice measure 147 / measure 7]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [16 Contrabass_I_Music_Voice measure 148 / measure 8]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    gs,!2                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths(['+', -1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    gs,8.                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \baca-fff-scratch                                                          %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [16 Contrabass_I_Music_Voice measure 149 / measure 9]                    %! baca.SegmentMaker._comment_measure_numbers()
    e'8                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \ppp                                                                       %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([2, 1, -1, 4, 2, 1, -1, -8, 2, 1, -1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    - \abjad-dashed-line-with-hook                                             %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "½ clt"                                     %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 8                                                   %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanHalfCLT                                                  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    ds'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    e'4                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    ds'!8                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    e'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    % [16 Contrabass_I_Music_Voice measure 150 / measure 10]                   %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    ds'!8                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    e'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [16 Contrabass_I_Music_Voice measure 151 / measure 11]           %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            \bacaStopTextSpanHalfCLT                                           %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [16 Contrabass_I_Rest_Voice measure 151 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


p_Contrabass_I_Music_Staff = <<                                                %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \p_Global_Rests                                                            %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Contrabass_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \p_Contrabass_I_Music_Voice                                                %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()


p_Contrabass_II_Music_Voice = {                                                %! ide.Path.extern()

    % [16 Contrabass_II_Music_Voice measure 141 / measure 1]                   %! baca.SegmentMaker._comment_measure_numbers()
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
    cs'!8                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \ppp                                                                       %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
%@% ^ \baca-reapplied-indicator-markup "[“Cb. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
%@% ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([2, 1, -1, 4, 2, 1, -1, -8, 4, 2, 1, -1, 2, 1, -1, -16, 2, 1, -1, 8, 2, 1, -1, -4, 2, 1, -1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    - \abjad-dashed-line-with-hook                                             %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "½ clt"                                     %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 8                                                   %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanHalfCLT                                                  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    d'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    cs'!4                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    d'8                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    cs'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    % [16 Contrabass_II_Music_Voice measure 142 / measure 2]                   %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    d'4                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [16 Contrabass_II_Music_Voice measure 143 / measure 3]                   %! baca.SegmentMaker._comment_measure_numbers()
    cs'!8                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    d'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    cs'!8                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    d'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    % [16 Contrabass_II_Music_Voice measure 144 / measure 4]                   %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [16 Contrabass_II_Music_Voice measure 145 / measure 5]                   %! baca.SegmentMaker._comment_measure_numbers()
    cs'!8                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    d'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    cs'!2                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    % [16 Contrabass_II_Music_Voice measure 146 / measure 6]                   %! baca.SegmentMaker._comment_measure_numbers()
    d'8                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    cs'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    d'8                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    cs'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [16 Contrabass_II_Music_Voice measure 147 / measure 7]           %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):NOTE:INVISIBLE_MUSIC_COLORING
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):NOTE:INVISIBLE_MUSIC_COMMAND
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE
            \bacaStopTextSpanHalfCLT                                           %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(2):FERMATA_MEASURE_EMPTY_BAR_EXTENT

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [16 Contrabass_II_Rest_Voice measure 147 / measure 7]            %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5):REST_VOICE:MULTIMEASURE_REST
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:MULTIMEASURE_REST:REST_VOICE

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [16 Contrabass_II_Music_Voice measure 148 / measure 8]                   %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(3)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(4):FERMATA_MEASURE_NEXT_BAR_EXTENT
    fs,!2                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \<                                                                         %! baca.hairpin():baca.PiecewiseCommand._call(2):SPANNER_START:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths(['+', -1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak stencil ##f                                                       %! baca.SegmentMaker._attach_shadow_tie_indicators()
    ~                                                                          %! baca.SegmentMaker._attach_shadow_tie_indicators()

    fs,8.                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \baca-fff-scratch                                                          %! baca.hairpin():baca.PiecewiseCommand._call(3):SPANNER_STOP:baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    - \baca-stop-on-string                                                     %! baca.stop_on_string():baca.IndicatorCommand._call()
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    % [16 Contrabass_II_Music_Voice measure 149 / measure 9]                   %! baca.SegmentMaker._comment_measure_numbers()
    cs'!8                                                                      %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \ppp                                                                       %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
%@% - \abjad-dashed-line-with-hook                                             %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \baca-text-spanner-left-text "sixteenths([2, 1, -1, 4, 2, 1, -1, -8, 2, 1, -1], talea_denominator=16)" %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak bound-details.right.padding 2.75                                  %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
%@% - \tweak color #darkyellow                                                 %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% - \tweak staff-padding 8                                                   %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
%@% \bacaStartTextSpanRhythmAnnotation                                         %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)
    - \abjad-dashed-line-with-hook                                             %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \baca-text-spanner-left-text "½ clt"                                     %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    - \tweak bound-details.right.padding 3.25                                  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):AUTODETECT:SPANNER_START
    - \tweak staff-padding 8                                                   %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START
    \bacaStartTextSpanHalfCLT                                                  %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(2):SPANNER_START

    d'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    cs'!4                                                                      %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    d'8                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-downbow                                                       %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    cs'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()

    % [16 Contrabass_II_Music_Voice measure 150 / measure 10]                  %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    d'8                                                                        %! harmony.sixteenths()
    - \tweak staff-padding 4                                                   %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    - \baca-full-upbow                                                         %! baca.alternate_bow_strokes():baca.IndicatorCommand._call()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando():abjad.glissando(7)

    cs'!16                                                                     %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    r16                                                                        %! harmony.sixteenths()
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding():baca.OverrideCommand._call(2)
%@% <> \bacaStopTextSpanRhythmAnnotation                                       %! baca.rhythm_annotation_spanner():RHYTHM_ANNOTATION_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [16 Contrabass_II_Music_Voice measure 151 / measure 11]          %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \abjad-invisible-music-coloring                                    %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:NOTE:INVISIBLE_MUSIC_COLORING:baca.SegmentMaker._style_phantom_measures(5)
        %@% \abjad-invisible-music                                             %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:NOTE:INVISIBLE_MUSIC_COMMAND:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED_COLORING:HIDDEN:NOTE:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:HIDDEN:NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:HIDDEN:NOTE:PHANTOM:baca.SegmentMaker._style_phantom_measures(5)
            \bacaStopTextSpanHalfCLT                                           %! baca.half_clt_spanner():HALF_CLT_SPANNER:baca.PiecewiseCommand._call(4):SPANNER_STOP:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [16 Contrabass_II_Rest_Voice measure 151 / measure 11]           %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


p_Contrabass_II_Music_Staff = <<                                               %! ide.Path.extern()

%%% \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context():NOT_TOPMOST
%%% \p_Global_Rests                                                            %! ide.Path.extern():NOT_TOPMOST

    \context Voice = "Contrabass_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \p_Contrabass_II_Music_Voice                                               %! ide.Path.extern()

>>                                                                             %! ide.Path.extern()