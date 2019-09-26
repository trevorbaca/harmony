P_Global_Skips = {                                                             %! abjad.Path.extern()

    % [P Global_Skips measure 141 / measure 1]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \bar ""                                                                    %! EMPTY_START_BAR:+SEGMENT:baca.SegmentMaker._make_global_skips(4)
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    - \tweak extra-offset #'(0 . 18)                                           %! baca.rehearsal_mark():baca.IndicatorCommand._call()
    - \baca-rehearsal-mark-markup "P"                                          %! baca.rehearsal_mark():baca.IndicatorCommand._call()
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
%@% - \baca-start-ct-left-only "[7'28'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 142 / measure 2]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "142"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'29'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 143 / measure 3]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "143"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'31'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 144 / measure 4]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "144"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'33'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 145 / measure 5]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "145"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'35'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 146 / measure 6]                                 %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "146"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-left-only "[7'37'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 147 / measure 7]                                 %! baca.SegmentMaker._comment_measure_numbers()
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

    % [P Global_Skips measure 148 / measure 8]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 2/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
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
%@% - \baca-start-ct-left-only "[7'41'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 149 / measure 9]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! baca.SegmentMaker._make_global_skips(2):baca.SegmentMaker._set_status_tag():EXPLICIT_TIME_SIGNATURE
    \baca-time-signature-color #'blue                                          %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_TIME_SIGNATURE_COLOR
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
%@% - \baca-start-ct-left-only "[7'42'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [P Global_Skips measure 150 / measure 10]                                %! baca.SegmentMaker._comment_measure_numbers()
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "150"                                           %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-ct-both "[7'44'']" "[7'46'']"                                %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    \baca-bar-line-visible                                                     %! baca.SegmentMaker._attach_final_bar_line()
    \bar "|"                                                                   %! baca.SegmentMaker._attach_final_bar_line()

    % [P Global_Skips measure 151 / measure 11]                                %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
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


P_Global_Rests = {                                                             %! abjad.Path.extern()

    % [P Global_Rests measure 141 / measure 1]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 142 / measure 2]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 143 / measure 3]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 144 / measure 4]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 145 / measure 5]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 146 / measure 6]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 147 / measure 7]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure                                                      %! baca.global_fermata():baca.GlobalFermataCommand._call(2)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata():baca.GlobalFermataCommand._call(1)

    % [P Global_Rests measure 148 / measure 8]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 149 / measure 9]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 150 / measure 10]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [P Global_Rests measure 151 / measure 11]                                %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(4):PHANTOM
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(2):PHANTOM

}                                                                              %! abjad.Path.extern()


P_Bass_Flute_Music_Voice = {                                                   %! abjad.Path.extern()

    % [P Bass_Flute_Music_Voice measure 141 / measure 1]                       %! baca.SegmentMaker._comment_measure_numbers()
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
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'8.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \baca-p-sempre                                                             %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Bfl.”]"                              %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“BassFlute”)"                         %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'2                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)

    % [P Bass_Flute_Music_Voice measure 142 / measure 2]                       %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'4                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)

    % [P Bass_Flute_Music_Voice measure 143 / measure 3]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'8.                                                                       %! harmony.sixteenths()
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'4                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)

    r4                                                                         %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(3):SPANNER_STOP

    % [P Bass_Flute_Music_Voice measure 144 / measure 4]                       %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [P Bass_Flute_Music_Voice measure 145 / measure 5]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'2.                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)

    % [P Bass_Flute_Music_Voice measure 146 / measure 6]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'4                                                                        %! harmony.sixteenths()
    \repeatTie

    r4                                                                         %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'4                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #3.25                                 %! baca.text_spanner():baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [P Bass_Flute_Music_Voice measure 147 / measure 7]               %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \stopTextSpan                                                      %! baca.text_spanner():baca.PiecewiseCommand._call(3):SPANNER_STOP
            \override Staff.BarLine.bar-extent = #'(0 . 0)                     %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [P Bass_Flute_Rest_Voice measure 147 / measure 7]                %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [P Bass_Flute_Music_Voice measure 148 / measure 8]                       %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
%%% \once \override Score.BarLine.transparent = ##t                            %! FERMATA_MEASURE:MEASURE_147:baca.SegmentMaker._style_fermata_measures(4)
%%% \once \override Score.SpanBar.transparent = ##t                            %! FERMATA_MEASURE:MEASURE_147:baca.SegmentMaker._style_fermata_measures(4)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [P Bass_Flute_Music_Voice measure 149 / measure 9]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'8.                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)

    r16                                                                        %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'2                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)

    % [P Bass_Flute_Music_Voice measure 150 / measure 10]                      %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    b'8.                                                                       %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner():baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.text_spanner():baca.PiecewiseCommand._call(1)
    \startTextSpan                                                             %! baca.text_spanner():baca.PiecewiseCommand._call(1)

    r16                                                                        %! harmony.sixteenths()
    \stopTextSpan                                                              %! baca.text_spanner():baca.PiecewiseCommand._call(3):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [P Bass_Flute_Music_Voice measure 151 / measure 11]              %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            b'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [P Bass_Flute_Rest_Voice measure 151 / measure 11]               %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


P_Bass_Flute_Music_Staff = <<                                                  %! abjad.Path.extern()

    \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context()
    \P_Global_Rests                                                            %! abjad.Path.extern()

    \context Voice = "Bass_Flute_Music_Voice"                                  %! harmony.ScoreTemplate.__call__()
    \P_Bass_Flute_Music_Voice                                                  %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Percussion_I_Music_Voice = {                                                 %! abjad.Path.extern()

    % [P Percussion_I_Music_Voice measure 141 / measure 1]                     %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-perc-i-markup                         %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override Stem.direction = #up                                             %! baca.stem_up():baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):REAPPLIED_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():REAPPLIED_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    c'2.                                                                       %! harmony.sixteenths()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! baca.dynamic():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Perc. I”]"                           %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-brake-drum-paper-towel-markup                                      %! baca.markup():baca.IndicatorCommand._call()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    % [P Percussion_I_Music_Voice measure 142 / measure 2]                     %! baca.SegmentMaker._comment_measure_numbers()
    c'2.                                                                       %! harmony.sixteenths()
    \repeatTie

    % [P Percussion_I_Music_Voice measure 143 / measure 3]                     %! baca.SegmentMaker._comment_measure_numbers()
    c'2.                                                                       %! harmony.sixteenths()
    \repeatTie

    % [P Percussion_I_Music_Voice measure 144 / measure 4]                     %! baca.SegmentMaker._comment_measure_numbers()
    c'4                                                                        %! harmony.sixteenths()
    \repeatTie

    c'16                                                                       %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()

    r4                                                                         %! harmony.sixteenths()

    % [P Percussion_I_Music_Voice measure 145 / measure 5]                     %! baca.SegmentMaker._comment_measure_numbers()
    c'2.                                                                       %! harmony.sixteenths()

    % [P Percussion_I_Music_Voice measure 146 / measure 6]                     %! baca.SegmentMaker._comment_measure_numbers()
    c'2.                                                                       %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_up():baca.OverrideCommand._call(2)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [P Percussion_I_Music_Voice measure 147 / measure 7]             %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [P Percussion_I_Rest_Voice measure 147 / measure 7]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [P Percussion_I_Music_Voice measure 148 / measure 8]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [P Percussion_I_Music_Voice measure 149 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #up                                             %! baca.stem_up():baca.OverrideCommand._call(1)
    c'2.                                                                       %! harmony.sixteenths()
    ^ \baca-brake-drum-paper-towel-markup                                      %! baca.markup():baca.IndicatorCommand._call()

    % [P Percussion_I_Music_Voice measure 150 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    c'2                                                                        %! harmony.sixteenths()
    \repeatTie

    c'16                                                                       %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_up():baca.OverrideCommand._call(2)

    r8.                                                                        %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [P Percussion_I_Music_Voice measure 151 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [P Percussion_I_Rest_Voice measure 151 / measure 11]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


P_Percussion_I_Music_Staff = <<                                                %! abjad.Path.extern()

    \context Voice = "Percussion_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \P_Percussion_I_Music_Voice                                                %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Percussion_II_Music_Voice = {                                                %! abjad.Path.extern()

    % [P Percussion_II_Music_Voice measure 141 / measure 1]                    %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \set Staff.instrumentName = \harmony-perc-ii-markup                        %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_141:baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_141:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    d2.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ^ \baca-reapplied-indicator-markup "[“Perc. II”]"                          %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-tam-tam-markup                                                     %! baca.markup():baca.IndicatorCommand._call()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    % [P Percussion_II_Music_Voice measure 142 / measure 2]                    %! baca.SegmentMaker._comment_measure_numbers()
    d2                                                                         %! harmony.sixteenths()
    \repeatTie

    d16                                                                        %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    % [P Percussion_II_Music_Voice measure 143 / measure 3]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    d16                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ~

    % [P Percussion_II_Music_Voice measure 144 / measure 4]                    %! baca.SegmentMaker._comment_measure_numbers()
    d2.                                                                        %! harmony.sixteenths()

    % [P Percussion_II_Music_Voice measure 145 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
    d4                                                                         %! harmony.sixteenths()
    \repeatTie

    d16                                                                        %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    r4                                                                         %! harmony.sixteenths()

    % [P Percussion_II_Music_Voice measure 146 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [P Percussion_II_Music_Voice measure 147 / measure 7]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [P Percussion_II_Rest_Voice measure 147 / measure 7]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [P Percussion_II_Music_Voice measure 148 / measure 8]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [P Percussion_II_Music_Voice measure 149 / measure 9]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \startStaff                                                                %! baca.staff_lines():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_STAFF_LINES
    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_STAFF_LINES_COLOR
    d2.                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ^ \baca-tam-tam-markup                                                     %! baca.markup():baca.IndicatorCommand._call()

    % [P Percussion_II_Music_Voice measure 150 / measure 10]                   %! baca.SegmentMaker._comment_measure_numbers()
    d2                                                                         %! harmony.sixteenths()
    \repeatTie

    d16                                                                        %! harmony.sixteenths()
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [P Percussion_II_Music_Voice measure 151 / measure 11]           %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [P Percussion_II_Rest_Voice measure 151 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


P_Percussion_II_Music_Staff = <<                                               %! abjad.Path.extern()

    \context Voice = "Percussion_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \P_Percussion_II_Music_Voice                                               %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Harp_Music_Voice = {                                                         %! abjad.Path.extern()

    % [P Harp_Music_Voice measure 141 / measure 1]                             %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_MARGIN_MARKUP
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_BAR_EXTENT:EXPLICIT_BAR_EXTENT
    \stopStaff                                                                 %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \startStaff                                                                %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_STAFF_LINES
    \set Staff.instrumentName = \harmony-hp-markup                             %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
%%% \once \override Staff.Clef.X-extent = ##f                                  %! baca.clef_x_extent_false():baca.clef_shift():SHIFTED_CLEF:MEASURE_141:baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)                    %! baca.clef_extra_offset():baca.clef_shift():SHIFTED_CLEF:MEASURE_141:baca.OverrideCommand._call(1)
    \clef "bass"                                                               %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_MARGIN_MARKUP_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_COLOR
%@% \override Staff.Clef.color = ##f                                           %! baca.SegmentMaker._attach_color_literal(1):EXPLICIT_CLEF_COLOR_CANCELLATION
    \set Staff.forceClef = ##t                                                 %! baca.clef():baca.IndicatorCommand._call():baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._set_status_tag():EXPLICIT_CLEF
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2.                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ^ \baca-reapplied-indicator-markup "(“Harp”)"                              %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "[“Hp.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! baca.SegmentMaker._attach_color_literal(2):EXPLICIT_CLEF_REDRAW_COLOR

    % [P Harp_Music_Voice measure 142 / measure 2]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2                                                                         %! harmony.sixteenths()
    \repeatTie

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    % [P Harp_Music_Voice measure 143 / measure 3]                             %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    r8.                                                                        %! harmony.sixteenths()

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ~

    % [P Harp_Music_Voice measure 144 / measure 4]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2.                                                                        %! harmony.sixteenths()

    % [P Harp_Music_Voice measure 145 / measure 5]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d4                                                                         %! harmony.sixteenths()
    \repeatTie

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    r4                                                                         %! harmony.sixteenths()

    % [P Harp_Music_Voice measure 146 / measure 6]                             %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [P Harp_Music_Voice measure 147 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [P Harp_Rest_Voice measure 147 / measure 7]                      %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [P Harp_Music_Voice measure 148 / measure 8]                             %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [P Harp_Music_Voice measure 149 / measure 9]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2.                                                                        %! harmony.sixteenths()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    % [P Harp_Music_Voice measure 150 / measure 10]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2                                                                         %! harmony.sixteenths()
    \repeatTie

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d16                                                                        %! harmony.sixteenths()
    \repeatTie

    r8.                                                                        %! harmony.sixteenths()
    - \baca-damp                                                               %! baca.articulation():baca.IndicatorCommand._call()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [P Harp_Music_Voice measure 151 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [P Harp_Rest_Voice measure 151 / measure 11]                     %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


P_Harp_Music_Staff = <<                                                        %! abjad.Path.extern()

    \context Voice = "Harp_Music_Voice"                                        %! harmony.ScoreTemplate.__call__()
    \P_Harp_Music_Voice                                                        %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Viola_Music_Voice = {                                                        %! abjad.Path.extern()

    % [P Viola_Music_Voice measure 141 / measure 1]                            %! baca.SegmentMaker._comment_measure_numbers()
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
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    a8                                                                         %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \baca-p-sempre                                                             %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Va.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Viola”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    e'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    a2                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        ]

    }


    % [P Viola_Music_Voice measure 142 / measure 2]                            %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    e'4                                                                        %! harmony.sixteenths()

    % [P Viola_Music_Voice measure 143 / measure 3]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    e'8.                                                                       %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    e'4                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        ]

    }


    r4                                                                         %! harmony.sixteenths()

    % [P Viola_Music_Voice measure 144 / measure 4]                            %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [P Viola_Music_Voice measure 145 / measure 5]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    a2.                                                                        %! harmony.sixteenths()

    % [P Viola_Music_Voice measure 146 / measure 6]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    a4                                                                         %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        ]

    }


    r4                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    e'4                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        ]

    }


    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [P Viola_Music_Voice measure 147 / measure 7]                    %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [P Viola_Rest_Voice measure 147 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [P Viola_Music_Voice measure 148 / measure 8]                            %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [P Viola_Music_Voice measure 149 / measure 9]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    a8                                                                         %! harmony.sixteenths()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    e'16                                                                       %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    a2                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        ]

    }


    % [P Viola_Music_Voice measure 150 / measure 10]                           %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    e'8.                                                                       %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        e'8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        a8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [P Viola_Music_Voice measure 151 / measure 11]                   %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [P Viola_Rest_Voice measure 151 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


P_Viola_Music_Staff = <<                                                       %! abjad.Path.extern()

    \context Voice = "Viola_Music_Voice"                                       %! harmony.ScoreTemplate.__call__()
    \P_Viola_Music_Voice                                                       %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Cello_I_Music_Voice = {                                                      %! abjad.Path.extern()

    % [P Cello_I_Music_Voice measure 141 / measure 1]                          %! baca.SegmentMaker._comment_measure_numbers()
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
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \fff                                                                       %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Vc. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    % [P Cello_I_Music_Voice measure 142 / measure 2]                          %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    % [P Cello_I_Music_Voice measure 143 / measure 3]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    r4                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    % [P Cello_I_Music_Voice measure 144 / measure 4]                          %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [P Cello_I_Music_Voice measure 145 / measure 5]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    % [P Cello_I_Music_Voice measure 146 / measure 6]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d4                                                                         %! harmony.sixteenths()
    \repeatTie

    r4                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #3.25                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [P Cello_I_Music_Voice measure 147 / measure 7]                  %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \bacaStopTextSpanDamp                                              %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [P Cello_I_Rest_Voice measure 147 / measure 7]                   %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [P Cello_I_Music_Voice measure 148 / measure 8]                          %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [P Cello_I_Music_Voice measure 149 / measure 9]                          %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    % [P Cello_I_Music_Voice measure 150 / measure 10]                         %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [P Cello_I_Music_Voice measure 151 / measure 11]                 %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [P Cello_I_Rest_Voice measure 151 / measure 11]                  %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


P_Cello_I_Music_Staff = <<                                                     %! abjad.Path.extern()

    \context Voice = "Cello_I_Music_Voice"                                     %! harmony.ScoreTemplate.__call__()
    \P_Cello_I_Music_Voice                                                     %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Cello_II_Music_Voice = {                                                     %! abjad.Path.extern()

    % [P Cello_II_Music_Voice measure 141 / measure 1]                         %! baca.SegmentMaker._comment_measure_numbers()
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
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \fff                                                                       %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Vc. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    % [P Cello_II_Music_Voice measure 142 / measure 2]                         %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    % [P Cello_II_Music_Voice measure 143 / measure 3]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()
    \repeatTie

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    r4                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    % [P Cello_II_Music_Voice measure 144 / measure 4]                         %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [P Cello_II_Music_Voice measure 145 / measure 5]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    % [P Cello_II_Music_Voice measure 146 / measure 6]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d4                                                                         %! harmony.sixteenths()
    \repeatTie

    r4                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d4                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #3.25                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [P Cello_II_Music_Voice measure 147 / measure 7]                 %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \bacaStopTextSpanDamp                                              %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [P Cello_II_Rest_Voice measure 147 / measure 7]                  %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [P Cello_II_Music_Voice measure 148 / measure 8]                         %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [P Cello_II_Music_Voice measure 149 / measure 9]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d2                                                                         %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    % [P Cello_II_Music_Voice measure 150 / measure 10]                        %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    \baca-not-yet-pitched-coloring                                             %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
    d8.                                                                        %! harmony.sixteenths()
    - \abjad-dashed-line-with-hook                                             %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1):autodetect
    - \tweak staff-padding #3                                                  %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)
    \bacaStartTextSpanDamp                                                     %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(1)

    r16                                                                        %! harmony.sixteenths()
    \bacaStopTextSpanDamp                                                      %! baca.damp_spanner():DAMP:baca.PiecewiseCommand._call(3):SPANNER_STOP

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [P Cello_II_Music_Voice measure 151 / measure 11]                %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [P Cello_II_Rest_Voice measure 151 / measure 11]                 %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


P_Cello_II_Music_Staff = <<                                                    %! abjad.Path.extern()

    \context Voice = "Cello_II_Music_Voice"                                    %! harmony.ScoreTemplate.__call__()
    \P_Cello_II_Music_Voice                                                    %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Contrabass_I_Music_Voice = {                                                 %! abjad.Path.extern()

    % [P Contrabass_I_Music_Voice measure 141 / measure 1]                     %! baca.SegmentMaker._comment_measure_numbers()
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
    b,8                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \fff                                                                       %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Cb. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    f16                                                                        %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    b,2                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        ]

    }


    % [P Contrabass_I_Music_Voice measure 142 / measure 2]                     %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    b,4                                                                        %! harmony.sixteenths()

    % [P Contrabass_I_Music_Voice measure 143 / measure 3]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    b,8.                                                                       %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    f4                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        ]

    }


    r4                                                                         %! harmony.sixteenths()

    % [P Contrabass_I_Music_Voice measure 144 / measure 4]                     %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [P Contrabass_I_Music_Voice measure 145 / measure 5]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    b,2.                                                                       %! harmony.sixteenths()

    % [P Contrabass_I_Music_Voice measure 146 / measure 6]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    b,4                                                                        %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        ]

    }


    r4                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    b,4                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        ]

    }


    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [P Contrabass_I_Music_Voice measure 147 / measure 7]             %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [P Contrabass_I_Rest_Voice measure 147 / measure 7]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [P Contrabass_I_Music_Voice measure 148 / measure 8]                     %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [P Contrabass_I_Music_Voice measure 149 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    b,8                                                                        %! harmony.sixteenths()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    f16                                                                        %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    b,2                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        ]

    }


    % [P Contrabass_I_Music_Voice measure 150 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    b,8.                                                                       %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [P Contrabass_I_Music_Voice measure 151 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [P Contrabass_I_Rest_Voice measure 151 / measure 11]             %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


P_Contrabass_I_Music_Staff = <<                                                %! abjad.Path.extern()

    \context Voice = "Contrabass_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \P_Contrabass_I_Music_Voice                                                %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


P_Contrabass_II_Music_Voice = {                                                %! abjad.Path.extern()

    % [P Contrabass_II_Music_Voice measure 141 / measure 1]                    %! baca.SegmentMaker._comment_measure_numbers()
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
    b,8                                                                        %! harmony.sixteenths()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \fff                                                                       %! baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._set_status_tag():REAPPLIED_DYNAMIC
    ^ \baca-reapplied-indicator-markup "[“Cb. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! baca.SegmentMaker._attach_color_literal(2):REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! -PARTS:baca.SegmentMaker._reapply_persistent_indicators(3):baca.SegmentMaker._treat_persistent_wrapper(3):baca.SegmentMaker._set_status_tag():REDRAWN_REAPPLIED_MARGIN_MARKUP
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! baca.SegmentMaker._attach_color_literal(2):REAPPLIED_CLEF_REDRAW_COLOR

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    f16                                                                        %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    f2                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        ]

    }


    % [P Contrabass_II_Music_Voice measure 142 / measure 2]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    b,4                                                                        %! harmony.sixteenths()

    % [P Contrabass_II_Music_Voice measure 143 / measure 3]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    b,8.                                                                       %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    f4                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        ]

    }


    r4                                                                         %! harmony.sixteenths()

    % [P Contrabass_II_Music_Voice measure 144 / measure 4]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.sixteenths()

    % [P Contrabass_II_Music_Voice measure 145 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    f2.                                                                        %! harmony.sixteenths()

    % [P Contrabass_II_Music_Voice measure 146 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    f4                                                                         %! harmony.sixteenths()
    \repeatTie
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        ]

    }


    r4                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    b,4                                                                        %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        ]

    }


    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

            % [P Contrabass_II_Music_Voice measure 147 / measure 7]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):INVISIBLE_MUSIC_COLORING:HIDDEN_NOTE
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):INVISIBLE_MUSIC:HIDDEN_NOTE
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):HIDDEN_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4)

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6)
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

            % [P Contrabass_II_Rest_Voice measure 147 / measure 7]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(5)
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6)

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7)

    % [P Contrabass_II_Music_Voice measure 148 / measure 8]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_measure_silences()
%@% ^ \baca-duration-multiplier-markup #"1" #"2"                               %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER

    % [P Contrabass_II_Music_Voice measure 149 / measure 9]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    b,8                                                                        %! harmony.sixteenths()
    [                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    f16                                                                        %! harmony.sixteenths()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    f2                                                                         %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        ]

    }


    % [P Contrabass_II_Music_Voice measure 150 / measure 10]                   %! baca.SegmentMaker._comment_measure_numbers()
    r2                                                                         %! harmony.sixteenths()

    \baca-mock-pitch-coloring                                                  %! baca.SegmentMaker._color_mock_pitch():MOCK
    \afterGrace
    b,8.                                                                       %! harmony.sixteenths()
    \glissando                                                                 %! baca.glissando()
    {

        \slash
        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        [
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        f8
        \glissando                                                             %! baca.glissando()

        \baca-mock-pitch-coloring                                              %! baca.SegmentMaker._color_mock_pitch():MOCK
        b,8
        ]

    }


    r16                                                                        %! harmony.sixteenths()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container(7):PHANTOM

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

            % [P Contrabass_II_Music_Voice measure 151 / measure 11]           %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            \baca-invisible-music-coloring                                     %! baca.SegmentMaker._make_multimeasure_rest_container(2):PHANTOM:INVISIBLE_MUSIC_COLORING:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
        %@% \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container(3):PHANTOM:INVISIBLE_MUSIC:PHANTOM_NOTE:baca.SegmentMaker._style_phantom_measures(5)
            \baca-not-yet-pitched-coloring                                     %! baca.SegmentMaker._color_not_yet_pitched():NOT_YET_PITCHED:baca.SegmentMaker._style_phantom_measures(5):PHANTOM
            d1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container(1):PHANTOM:PHANTOM_NOTE
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! baca.SegmentMaker._label_duration_multipliers():DURATION_MULTIPLIER:baca.SegmentMaker._style_phantom_measures(5):PHANTOM

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(4):PHANTOM

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container(6):PHANTOM

            % [P Contrabass_II_Rest_Voice measure 151 / measure 11]            %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(5):PHANTOM
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


P_Contrabass_II_Music_Staff = <<                                               %! abjad.Path.extern()

    \context Voice = "Contrabass_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \P_Contrabass_II_Music_Voice                                               %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()
