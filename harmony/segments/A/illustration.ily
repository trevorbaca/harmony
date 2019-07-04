A_Global_Skips = {                                                             %! abjad.Path.extern

    % [A Global_Skips measure 1]                                               %! _comment_measure_numbers
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 5/4                                                                   %! _make_global_skips(1)
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "1"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-left-only "[A.1]"                                        %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "96"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "96" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[0'00'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [A Global_Skips measure 2]                                               %! _comment_measure_numbers
    \time 1/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/4                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "2"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only-fermata "2''"                                   %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [A Global_Skips measure 3]                                               %! _comment_measure_numbers
    \time 3/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 3/4                                                                   %! _make_global_skips(1)
    - \tweak extra-offset #'(0 . 9)                                            %! baca.rehearsal_mark:IndicatorCommand
    - \baca-rehearsal-mark-markup "A"                                          %! baca.rehearsal_mark:IndicatorCommand
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "3"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-left-only "[A.2]"                                        %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \baca-start-ct-left-only "[0'05'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [A Global_Skips measure 4]                                               %! _comment_measure_numbers
    \time 4/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1                                                                     %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "4"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[0'07'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [A Global_Skips measure 5]                                               %! _comment_measure_numbers
    \time 3/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 3/4                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "5"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[0'09'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [A Global_Skips measure 6]                                               %! _comment_measure_numbers
    \time 4/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1                                                                     %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "6"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[0'11'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [A Global_Skips measure 7]                                               %! _comment_measure_numbers
    \time 3/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 3/4                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "7"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[0'13'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [A Global_Skips measure 8]                                               %! _comment_measure_numbers
    \time 4/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1                                                                     %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "8"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[0'15'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [A Global_Skips measure 9]                                               %! _comment_measure_numbers
    \time 2/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "9"                                             %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-colored-left-only "[C.1]" #darkgreen                     %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-rhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #2 #0 #3 #5 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-rhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #2 #0 #3 #5 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[0'18'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [A Global_Skips measure 10]                                              %! _comment_measure_numbers
    \time 1/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/4                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "10"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-both-left-fermata "1''" "[0'21'']"                        %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME
    \baca-bar-line-visible                                                     %! _attach_final_bar_line
    \bar "|"                                                                   %! _attach_final_bar_line

    % [A Global_Skips measure 11]                                              %! PHANTOM:_style_phantom_measures(1):_comment_measure_numbers
    \baca-time-signature-transparent                                           %! PHANTOM:_style_phantom_measures(2)
    s1 * 1/4                                                                   %! PHANTOM:_make_global_skips(3)
    \bacaStopTextSpanLMN                                                       %! PHANTOM:_style_phantom_measures(1):LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! PHANTOM:_style_phantom_measures(1):MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! PHANTOM:_style_phantom_measures(1):STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! PHANTOM:_style_phantom_measures(1):SEGMENT_FINAL_STOP_MM_SPANNER:_attach_metronome_marks(4)
%@% \bacaStopTextSpanCT                                                        %! PHANTOM:_style_phantom_measures(1):CLOCK_TIME
    \once \override Score.BarLine.transparent = ##t                            %! PHANTOM:_style_phantom_measures(3)
    \once \override Score.SpanBar.transparent = ##t                            %! PHANTOM:_style_phantom_measures(3)

}                                                                              %! abjad.Path.extern


A_Global_Rests = {                                                             %! abjad.Path.extern

    % [A Global_Rests measure 1]                                               %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _make_global_rests(1)

    % [A Global_Rests measure 2]                                               %! _comment_measure_numbers
    \baca-fermata-measure                                                      %! baca.global_fermata:GlobalFermataCommand(2)
    R1 * 1/4                                                                   %! _make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata:GlobalFermataCommand(1)

    % [A Global_Rests measure 3]                                               %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _make_global_rests(1)

    % [A Global_Rests measure 4]                                               %! _comment_measure_numbers
    R1 * 1                                                                     %! _make_global_rests(1)

    % [A Global_Rests measure 5]                                               %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _make_global_rests(1)

    % [A Global_Rests measure 6]                                               %! _comment_measure_numbers
    R1 * 1                                                                     %! _make_global_rests(1)

    % [A Global_Rests measure 7]                                               %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _make_global_rests(1)

    % [A Global_Rests measure 8]                                               %! _comment_measure_numbers
    R1 * 1                                                                     %! _make_global_rests(1)

    % [A Global_Rests measure 9]                                               %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [A Global_Rests measure 10]                                              %! _comment_measure_numbers
    \baca-fermata-measure                                                      %! baca.global_fermata:GlobalFermataCommand(2)
    R1 * 1/4                                                                   %! _make_global_rests(1)
    ^ \baca-short-fermata-markup                                               %! baca.global_fermata:GlobalFermataCommand(1)

    % [A Global_Rests measure 11]                                              %! PHANTOM:_style_phantom_measures(4):_comment_measure_numbers
    R1 * 1/4                                                                   %! PHANTOM:_make_global_rests(2)

}                                                                              %! abjad.Path.extern


A_Bass_Flute_Music_Voice = {                                                   %! abjad.Path.extern

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.bfl_transition_rhythm
    \times 4/6 {                                                               %! harmony.bfl_transition_rhythm

        % [A Bass_Flute_Music_Voice measure 1]                                 %! _comment_measure_numbers
        \set Staff.shortInstrumentName = \harmony-bfl-markup                   %! EXPLICIT_MARGIN_MARKUP:_set_status_tag:baca.margin_markup:-PARTS:IndicatorCommand
        \set Staff.instrumentName = \harmony-bass-flute-markup                 %! baca.start_markup:baca_start_markup:-PARTS:IndicatorCommand
        \clef "treble"                                                         %! DEFAULT_CLEF:_set_status_tag:abjad.ScoreTemplate.attach_defaults
        \once \override Staff.Clef.color = #(x11-color 'DarkViolet)            %! DEFAULT_CLEF_COLOR:_attach_color_literal(2)
    %@% \override Staff.Clef.color = ##f                                       %! DEFAULT_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
        \set Staff.forceClef = ##t                                             %! DEFAULT_CLEF:_set_status_tag:_treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults
        \once \override Staff.InstrumentName.color = #(x11-color 'blue)        %! EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        ^ \baca-default-indicator-markup "(“BassFlute”)"                       %! DEFAULT_INSTRUMENT_ALERT:_attach_latent_indicator_alert
        ^ \baca-explicit-indicator-markup "[“Bfl.”]"                           %! EXPLICIT_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
        [                                                                      %! harmony.bfl_transition_rhythm
        \override Staff.Clef.color = #(x11-color 'violet)                      %! DEFAULT_CLEF_REDRAW_COLOR:_attach_color_literal(2)
        \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)      %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
        \set Staff.shortInstrumentName = \harmony-bfl-markup                   %! REDRAWN_EXPLICIT_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):baca.margin_markup:-PARTS:IndicatorCommand

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        ]                                                                      %! harmony.bfl_transition_rhythm

    }                                                                          %! harmony.bfl_transition_rhythm

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.bfl_transition_rhythm
    \times 16/19 {                                                             %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        [                                                                      %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        ]                                                                      %! harmony.bfl_transition_rhythm

    }                                                                          %! harmony.bfl_transition_rhythm

    <<                                                                         %! _make_multimeasure_rest_container

        \context Voice = "Bass_Flute_Music_Voice"                              %! _make_multimeasure_rest_container
        {                                                                      %! _make_multimeasure_rest_container

            % [A Bass_Flute_Music_Voice measure 2]                             %! _comment_measure_numbers
            \baca-invisible-music                                              %! _make_multimeasure_rest_container
            c''1 * 1/4                                                         %! _make_multimeasure_rest_container

        }                                                                      %! _make_multimeasure_rest_container

        \context Voice = "Bass_Flute_Rest_Voice"                               %! _make_multimeasure_rest_container
        {                                                                      %! _make_multimeasure_rest_container

            % [A Bass_Flute_Rest_Voice measure 2]                              %! _comment_measure_numbers
            R1 * 1/4                                                           %! _make_multimeasure_rest_container

        }                                                                      %! _make_multimeasure_rest_container

    >>                                                                         %! _make_multimeasure_rest_container

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.bfl_transition_rhythm
    \times 16/18 {                                                             %! harmony.bfl_transition_rhythm

        % [A Bass_Flute_Music_Voice measure 3]                                 %! _comment_measure_numbers
        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        [                                                                      %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        ]                                                                      %! harmony.bfl_transition_rhythm

    }                                                                          %! harmony.bfl_transition_rhythm

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.bfl_transition_rhythm
    \times 12/15 {                                                             %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        [                                                                      %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        ]                                                                      %! harmony.bfl_transition_rhythm

    }                                                                          %! harmony.bfl_transition_rhythm

    % [A Bass_Flute_Music_Voice measure 5]                                     %! _comment_measure_numbers
    r2                                                                         %! harmony.bfl_transition_rhythm

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.bfl_transition_rhythm
    \times 4/7 {                                                               %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        [                                                                      %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        ]                                                                      %! harmony.bfl_transition_rhythm

    }                                                                          %! harmony.bfl_transition_rhythm

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.bfl_transition_rhythm
    \times 16/18 {                                                             %! harmony.bfl_transition_rhythm

        % [A Bass_Flute_Music_Voice measure 6]                                 %! _comment_measure_numbers
        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        [                                                                      %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        ]                                                                      %! harmony.bfl_transition_rhythm

    }                                                                          %! harmony.bfl_transition_rhythm

    % [A Bass_Flute_Music_Voice measure 7]                                     %! _comment_measure_numbers
    r2.                                                                        %! harmony.bfl_transition_rhythm

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.bfl_transition_rhythm
    \times 8/10 {                                                              %! harmony.bfl_transition_rhythm

        % [A Bass_Flute_Music_Voice measure 8]                                 %! _comment_measure_numbers
        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        [                                                                      %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        ]                                                                      %! harmony.bfl_transition_rhythm

    }                                                                          %! harmony.bfl_transition_rhythm

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.bfl_transition_rhythm
    \times 4/7 {                                                               %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        [                                                                      %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm

        \baca-unpitched-music-warning                                          %! _color_unpitched_notes
        c''16                                                                  %! harmony.bfl_transition_rhythm
        ]                                                                      %! harmony.bfl_transition_rhythm

    }                                                                          %! harmony.bfl_transition_rhythm

    r4                                                                         %! harmony.bfl_transition_rhythm

    <<                                                                         %! _make_multimeasure_rest_container

        \context Voice = "Bass_Flute_Music_Voice"                              %! _make_multimeasure_rest_container
        {                                                                      %! _make_multimeasure_rest_container

            % [A Bass_Flute_Music_Voice measure 9]                             %! _comment_measure_numbers
            \baca-invisible-music                                              %! _make_multimeasure_rest_container
            c''1 * 1/2                                                         %! _make_multimeasure_rest_container

        }                                                                      %! _make_multimeasure_rest_container

        \context Voice = "Bass_Flute_Rest_Voice"                               %! _make_multimeasure_rest_container
        {                                                                      %! _make_multimeasure_rest_container

            % [A Bass_Flute_Rest_Voice measure 9]                              %! _comment_measure_numbers
            R1 * 1/2                                                           %! _make_multimeasure_rest_container

        }                                                                      %! _make_multimeasure_rest_container

    >>                                                                         %! _make_multimeasure_rest_container

    % [A Bass_Flute_Music_Voice measure 10]                                    %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _make_measure_silences

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Bass_Flute_Music_Voice"                              %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Bass_Flute_Music_Voice measure 11]                            %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Bass_Flute_Rest_Voice"                               %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Bass_Flute_Rest_Voice measure 11]                             %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


A_Bass_Flute_Music_Staff = <<                                                  %! abjad.Path.extern

    \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context
    \A_Global_Rests                                                            %! abjad.Path.extern

    \context Voice = "Bass_Flute_Music_Voice"                                  %! harmony.ScoreTemplate.__call__
    \A_Bass_Flute_Music_Voice                                                  %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


A_Percussion_I_Music_Voice = {                                                 %! abjad.Path.extern

    % [A Percussion_I_Music_Voice measure 1]                                   %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! EXPLICIT_MARGIN_MARKUP:_set_status_tag:baca.margin_markup:-PARTS:IndicatorCommand
    \set Staff.instrumentName = \harmony-percussion-i-markup                   %! baca.start_markup:baca_start_markup:-PARTS:IndicatorCommand
    \clef "treble"                                                             %! DEFAULT_CLEF:_set_status_tag:abjad.ScoreTemplate.attach_defaults
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:_set_status_tag:_treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    R1 * 5/4                                                                   %! _call_rhythm_commands
    ^ \baca-default-indicator-markup "(“Percussion”)"                          %! DEFAULT_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    ^ \baca-explicit-indicator-markup "[“Perc. I”]"                            %! EXPLICIT_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:_attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! REDRAWN_EXPLICIT_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):baca.margin_markup:-PARTS:IndicatorCommand

    % [A Percussion_I_Music_Voice measure 2]                                   %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [A Percussion_I_Music_Voice measure 3]                                   %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Percussion_I_Music_Voice measure 4]                                   %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Percussion_I_Music_Voice measure 5]                                   %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Percussion_I_Music_Voice measure 6]                                   %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Percussion_I_Music_Voice measure 7]                                   %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Percussion_I_Music_Voice measure 8]                                   %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Percussion_I_Music_Voice measure 9]                                   %! _comment_measure_numbers
    R1 * 2/4                                                                   %! _call_rhythm_commands

    % [A Percussion_I_Music_Voice measure 10]                                  %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Percussion_I_Music_Voice"                            %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Percussion_I_Music_Voice measure 11]                          %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Percussion_I_Rest_Voice"                             %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Percussion_I_Rest_Voice measure 11]                           %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


A_Percussion_I_Music_Staff = <<                                                %! abjad.Path.extern

    \context Voice = "Percussion_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__
    \A_Percussion_I_Music_Voice                                                %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


A_Percussion_II_Music_Voice = {                                                %! abjad.Path.extern

    % [A Percussion_II_Music_Voice measure 1]                                  %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! EXPLICIT_MARGIN_MARKUP:_set_status_tag:baca.margin_markup:-PARTS:IndicatorCommand
    \set Staff.instrumentName = \harmony-percussion-ii-markup                  %! baca.start_markup:baca_start_markup:-PARTS:IndicatorCommand
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \override DynamicLineSpanner.staff-padding = #6                            %! baca.dls_staff_padding:OverrideCommand(1)
    \clef "treble"                                                             %! DEFAULT_CLEF:_set_status_tag:abjad.ScoreTemplate.attach_defaults
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:_set_status_tag:_treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:_attach_color_literal(2)
    r1                                                                         %! harmony.upbeat_attack
    ^ \baca-default-indicator-markup "(“Percussion”)"                          %! DEFAULT_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    ^ \baca-explicit-indicator-markup "[“Perc. II”]"                           %! EXPLICIT_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:_attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! REDRAWN_EXPLICIT_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):baca.margin_markup:-PARTS:IndicatorCommand

    \override Stem.direction = #down                                           %! baca.stem_down:OverrideCommand(1)
    a'4 * 3/4                                                                  %! harmony.upbeat_attack
    - \tweak parent-alignment-X #0                                             %! baca.markup:IndicatorCommand
    - \tweak self-alignment-X #0                                               %! baca.markup:IndicatorCommand
    ^ \baca-bd-superball-markup                                                %! baca.markup:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    a'4 * 1/4                                                                  %! harmony.upbeat_attack
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)
    \breathe                                                                   %! baca.breathe:IndicatorCommand

    <<                                                                         %! _make_multimeasure_rest_container

        \context Voice = "Percussion_II_Music_Voice"                           %! _make_multimeasure_rest_container
        {                                                                      %! _make_multimeasure_rest_container

            % [A Percussion_II_Music_Voice measure 2]                          %! _comment_measure_numbers
            \baca-invisible-music                                              %! _make_multimeasure_rest_container
            c'1 * 1/4                                                          %! _make_multimeasure_rest_container

        }                                                                      %! _make_multimeasure_rest_container

        \context Voice = "Percussion_II_Rest_Voice"                            %! _make_multimeasure_rest_container
        {                                                                      %! _make_multimeasure_rest_container

            % [A Percussion_II_Rest_Voice measure 2]                           %! _comment_measure_numbers
            R1 * 1/4                                                           %! _make_multimeasure_rest_container

        }                                                                      %! _make_multimeasure_rest_container

    >>                                                                         %! _make_multimeasure_rest_container

    % [A Percussion_II_Music_Voice measure 3]                                  %! _comment_measure_numbers
    a'4 * 3/4                                                                  %! harmony.begin_end_rhythm
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    a'4 * 1/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)

    r4                                                                         %! harmony.begin_end_rhythm

    a'4 * 3/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    a'4 * 1/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)
    \breathe                                                                   %! baca.breathe:IndicatorCommand

    % [A Percussion_II_Music_Voice measure 4]                                  %! _comment_measure_numbers
    a'4 * 3/4                                                                  %! harmony.begin_end_rhythm
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    a'4 * 1/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)

    r2                                                                         %! harmony.begin_end_rhythm

    a'4 * 3/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    a'4 * 1/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)
    \breathe                                                                   %! baca.breathe:IndicatorCommand

    % [A Percussion_II_Music_Voice measure 5]                                  %! _comment_measure_numbers
    a'4 * 3/4                                                                  %! harmony.begin_end_rhythm
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    a'4 * 1/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)

    r4                                                                         %! harmony.begin_end_rhythm

    a'4 * 3/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    a'4 * 1/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)
    \breathe                                                                   %! baca.breathe:IndicatorCommand

    % [A Percussion_II_Music_Voice measure 6]                                  %! _comment_measure_numbers
    r1                                                                         %! harmony.begin_end_rhythm

    % [A Percussion_II_Music_Voice measure 7]                                  %! _comment_measure_numbers
    a'4 * 3/4                                                                  %! harmony.begin_end_rhythm
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    a'4 * 1/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)

    r4                                                                         %! harmony.begin_end_rhythm

    a'4 * 3/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    a'4 * 1/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)
    \breathe                                                                   %! baca.breathe:IndicatorCommand

    % [A Percussion_II_Music_Voice measure 8]                                  %! _comment_measure_numbers
    a'4 * 3/4                                                                  %! harmony.begin_end_rhythm
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    a'4 * 1/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)

    r2                                                                         %! harmony.begin_end_rhythm

    a'4 * 3/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    a'4 * 1/4                                                                  %! harmony.begin_end_rhythm
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)
    \breathe                                                                   %! baca.breathe:IndicatorCommand

    <<                                                                         %! _make_multimeasure_rest_container

        \context Voice = "Percussion_II_Music_Voice"                           %! _make_multimeasure_rest_container
        {                                                                      %! _make_multimeasure_rest_container

            % [A Percussion_II_Music_Voice measure 9]                          %! _comment_measure_numbers
            \baca-invisible-music                                              %! _make_multimeasure_rest_container
            c'1 * 1/2                                                          %! _make_multimeasure_rest_container
            \revert Stem.direction                                             %! baca.stem_down:OverrideCommand(2)

        }                                                                      %! _make_multimeasure_rest_container

        \context Voice = "Percussion_II_Rest_Voice"                            %! _make_multimeasure_rest_container
        {                                                                      %! _make_multimeasure_rest_container

            % [A Percussion_II_Rest_Voice measure 9]                           %! _comment_measure_numbers
            R1 * 1/2                                                           %! _make_multimeasure_rest_container

        }                                                                      %! _make_multimeasure_rest_container

    >>                                                                         %! _make_multimeasure_rest_container

    % [A Percussion_II_Music_Voice measure 10]                                 %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _make_measure_silences
    \revert DynamicLineSpanner.staff-padding                                   %! baca.dls_staff_padding:OverrideCommand(2)

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Percussion_II_Music_Voice"                           %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Percussion_II_Music_Voice measure 11]                         %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Percussion_II_Rest_Voice"                            %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Percussion_II_Rest_Voice measure 11]                          %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


A_Percussion_II_Music_Staff = <<                                               %! abjad.Path.extern

    \context Voice = "Percussion_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__
    \A_Percussion_II_Music_Voice                                               %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


A_Harp_Music_Voice = {                                                         %! abjad.Path.extern

    % [A Harp_Music_Voice measure 1]                                           %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! EXPLICIT_MARGIN_MARKUP:_set_status_tag:baca.margin_markup:-PARTS:IndicatorCommand
    \set Staff.instrumentName = \harmony-harp-markup                           %! baca.start_markup:baca_start_markup:-PARTS:IndicatorCommand
    \clef "treble"                                                             %! DEFAULT_CLEF:_set_status_tag:abjad.ScoreTemplate.attach_defaults
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:_set_status_tag:_treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    R1 * 5/4                                                                   %! _call_rhythm_commands
    ^ \baca-default-indicator-markup "(“Harp”)"                                %! DEFAULT_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    ^ \baca-explicit-indicator-markup "[“Hp.”]"                                %! EXPLICIT_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:_attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! REDRAWN_EXPLICIT_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):baca.margin_markup:-PARTS:IndicatorCommand

    % [A Harp_Music_Voice measure 2]                                           %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [A Harp_Music_Voice measure 3]                                           %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Harp_Music_Voice measure 4]                                           %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Harp_Music_Voice measure 5]                                           %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Harp_Music_Voice measure 6]                                           %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Harp_Music_Voice measure 7]                                           %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Harp_Music_Voice measure 8]                                           %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Harp_Music_Voice measure 9]                                           %! _comment_measure_numbers
    R1 * 2/4                                                                   %! _call_rhythm_commands

    % [A Harp_Music_Voice measure 10]                                          %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Harp_Music_Voice"                                    %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Harp_Music_Voice measure 11]                                  %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Harp_Rest_Voice"                                     %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Harp_Rest_Voice measure 11]                                   %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


A_Harp_Music_Staff = <<                                                        %! abjad.Path.extern

    \context Voice = "Harp_Music_Voice"                                        %! harmony.ScoreTemplate.__call__
    \A_Harp_Music_Voice                                                        %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


A_Viola_Music_Voice = {                                                        %! abjad.Path.extern

    % [A Viola_Music_Voice measure 1]                                          %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! EXPLICIT_MARGIN_MARKUP:_set_status_tag:baca.margin_markup:-PARTS:IndicatorCommand
    \set Staff.instrumentName = \harmony-viola-markup                          %! baca.start_markup:baca_start_markup:-PARTS:IndicatorCommand
    \clef "alto"                                                               %! DEFAULT_CLEF:_set_status_tag:abjad.ScoreTemplate.attach_defaults
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:_set_status_tag:_treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    R1 * 5/4                                                                   %! _call_rhythm_commands
    ^ \baca-default-indicator-markup "(“Viola”)"                               %! DEFAULT_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    ^ \baca-explicit-indicator-markup "[“Va.”]"                                %! EXPLICIT_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:_attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! REDRAWN_EXPLICIT_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):baca.margin_markup:-PARTS:IndicatorCommand

    % [A Viola_Music_Voice measure 2]                                          %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [A Viola_Music_Voice measure 3]                                          %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Viola_Music_Voice measure 4]                                          %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Viola_Music_Voice measure 5]                                          %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Viola_Music_Voice measure 6]                                          %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Viola_Music_Voice measure 7]                                          %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Viola_Music_Voice measure 8]                                          %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Viola_Music_Voice measure 9]                                          %! _comment_measure_numbers
    R1 * 2/4                                                                   %! _call_rhythm_commands

    % [A Viola_Music_Voice measure 10]                                         %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Viola_Music_Voice"                                   %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Viola_Music_Voice measure 11]                                 %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Viola_Rest_Voice"                                    %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Viola_Rest_Voice measure 11]                                  %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


A_Viola_Music_Staff = <<                                                       %! abjad.Path.extern

    \context Voice = "Viola_Music_Voice"                                       %! harmony.ScoreTemplate.__call__
    \A_Viola_Music_Voice                                                       %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


A_Cello_I_Music_Voice = {                                                      %! abjad.Path.extern

    % [A Cello_I_Music_Voice measure 1]                                        %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! EXPLICIT_MARGIN_MARKUP:_set_status_tag:baca.margin_markup:-PARTS:IndicatorCommand
    \set Staff.instrumentName = \harmony-cello-i-markup                        %! baca.start_markup:baca_start_markup:-PARTS:IndicatorCommand
    \clef "bass"                                                               %! DEFAULT_CLEF:_set_status_tag:abjad.ScoreTemplate.attach_defaults
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:_set_status_tag:_treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    R1 * 5/4                                                                   %! _call_rhythm_commands
    ^ \baca-default-indicator-markup "(“Cello”)"                               %! DEFAULT_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    ^ \baca-explicit-indicator-markup "[“Vc. I”]"                              %! EXPLICIT_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:_attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! REDRAWN_EXPLICIT_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):baca.margin_markup:-PARTS:IndicatorCommand

    % [A Cello_I_Music_Voice measure 2]                                        %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [A Cello_I_Music_Voice measure 3]                                        %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Cello_I_Music_Voice measure 4]                                        %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Cello_I_Music_Voice measure 5]                                        %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Cello_I_Music_Voice measure 6]                                        %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Cello_I_Music_Voice measure 7]                                        %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Cello_I_Music_Voice measure 8]                                        %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Cello_I_Music_Voice measure 9]                                        %! _comment_measure_numbers
    R1 * 2/4                                                                   %! _call_rhythm_commands

    % [A Cello_I_Music_Voice measure 10]                                       %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Cello_I_Music_Voice"                                 %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Cello_I_Music_Voice measure 11]                               %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Cello_I_Rest_Voice"                                  %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Cello_I_Rest_Voice measure 11]                                %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


A_Cello_I_Music_Staff = <<                                                     %! abjad.Path.extern

    \context Voice = "Cello_I_Music_Voice"                                     %! harmony.ScoreTemplate.__call__
    \A_Cello_I_Music_Voice                                                     %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


A_Cello_II_Music_Voice = {                                                     %! abjad.Path.extern

    % [A Cello_II_Music_Voice measure 1]                                       %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! EXPLICIT_MARGIN_MARKUP:_set_status_tag:baca.margin_markup:-PARTS:IndicatorCommand
    \set Staff.instrumentName = \harmony-cello-ii-markup                       %! baca.start_markup:baca_start_markup:-PARTS:IndicatorCommand
    \clef "bass"                                                               %! DEFAULT_CLEF:_set_status_tag:abjad.ScoreTemplate.attach_defaults
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:_set_status_tag:_treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    R1 * 5/4                                                                   %! _call_rhythm_commands
    ^ \baca-default-indicator-markup "(“Cello”)"                               %! DEFAULT_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    ^ \baca-explicit-indicator-markup "[“Vc. II”]"                             %! EXPLICIT_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:_attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! REDRAWN_EXPLICIT_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):baca.margin_markup:-PARTS:IndicatorCommand

    % [A Cello_II_Music_Voice measure 2]                                       %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [A Cello_II_Music_Voice measure 3]                                       %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Cello_II_Music_Voice measure 4]                                       %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Cello_II_Music_Voice measure 5]                                       %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Cello_II_Music_Voice measure 6]                                       %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Cello_II_Music_Voice measure 7]                                       %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Cello_II_Music_Voice measure 8]                                       %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Cello_II_Music_Voice measure 9]                                       %! _comment_measure_numbers
    R1 * 2/4                                                                   %! _call_rhythm_commands

    % [A Cello_II_Music_Voice measure 10]                                      %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Cello_II_Music_Voice"                                %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Cello_II_Music_Voice measure 11]                              %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Cello_II_Rest_Voice"                                 %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Cello_II_Rest_Voice measure 11]                               %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


A_Cello_II_Music_Staff = <<                                                    %! abjad.Path.extern

    \context Voice = "Cello_II_Music_Voice"                                    %! harmony.ScoreTemplate.__call__
    \A_Cello_II_Music_Voice                                                    %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


A_Contrabass_I_Music_Voice = {                                                 %! abjad.Path.extern

    % [A Contrabass_I_Music_Voice measure 1]                                   %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! EXPLICIT_MARGIN_MARKUP:_set_status_tag:baca.margin_markup:-PARTS:IndicatorCommand
    \set Staff.instrumentName = \harmony-contrabass-i-markup                   %! baca.start_markup:baca_start_markup:-PARTS:IndicatorCommand
    \clef "bass"                                                               %! DEFAULT_CLEF:_set_status_tag:abjad.ScoreTemplate.attach_defaults
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:_set_status_tag:_treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    R1 * 5/4                                                                   %! _call_rhythm_commands
    ^ \baca-default-indicator-markup "(“Contrabass”)"                          %! DEFAULT_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    ^ \baca-explicit-indicator-markup "[“Cb. I”]"                              %! EXPLICIT_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:_attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! REDRAWN_EXPLICIT_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):baca.margin_markup:-PARTS:IndicatorCommand

    % [A Contrabass_I_Music_Voice measure 2]                                   %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_I_Music_Voice measure 3]                                   %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_I_Music_Voice measure 4]                                   %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_I_Music_Voice measure 5]                                   %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_I_Music_Voice measure 6]                                   %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_I_Music_Voice measure 7]                                   %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_I_Music_Voice measure 8]                                   %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_I_Music_Voice measure 9]                                   %! _comment_measure_numbers
    R1 * 2/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_I_Music_Voice measure 10]                                  %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Contrabass_I_Music_Voice"                            %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Contrabass_I_Music_Voice measure 11]                          %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Contrabass_I_Rest_Voice"                             %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Contrabass_I_Rest_Voice measure 11]                           %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


A_Contrabass_I_Music_Staff = <<                                                %! abjad.Path.extern

    \context Voice = "Contrabass_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__
    \A_Contrabass_I_Music_Voice                                                %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


A_Contrabass_II_Music_Voice = {                                                %! abjad.Path.extern

    % [A Contrabass_II_Music_Voice measure 1]                                  %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! EXPLICIT_MARGIN_MARKUP:_set_status_tag:baca.margin_markup:-PARTS:IndicatorCommand
    \set Staff.instrumentName = \harmony-contrabass-ii-markup                  %! baca.start_markup:baca_start_markup:-PARTS:IndicatorCommand
    \clef "bass"                                                               %! DEFAULT_CLEF:_set_status_tag:abjad.ScoreTemplate.attach_defaults
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:_set_status_tag:_treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    R1 * 5/4                                                                   %! _call_rhythm_commands
    ^ \baca-default-indicator-markup "(“Contrabass”)"                          %! DEFAULT_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    ^ \baca-explicit-indicator-markup "[“Cb. II”]"                             %! EXPLICIT_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:_attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! REDRAWN_EXPLICIT_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):baca.margin_markup:-PARTS:IndicatorCommand

    % [A Contrabass_II_Music_Voice measure 2]                                  %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_II_Music_Voice measure 3]                                  %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_II_Music_Voice measure 4]                                  %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_II_Music_Voice measure 5]                                  %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_II_Music_Voice measure 6]                                  %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_II_Music_Voice measure 7]                                  %! _comment_measure_numbers
    R1 * 3/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_II_Music_Voice measure 8]                                  %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_II_Music_Voice measure 9]                                  %! _comment_measure_numbers
    R1 * 2/4                                                                   %! _call_rhythm_commands

    % [A Contrabass_II_Music_Voice measure 10]                                 %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Contrabass_II_Music_Voice"                           %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Contrabass_II_Music_Voice measure 11]                         %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Contrabass_II_Rest_Voice"                            %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [A Contrabass_II_Rest_Voice measure 11]                          %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


A_Contrabass_II_Music_Staff = <<                                               %! abjad.Path.extern

    \context Voice = "Contrabass_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__
    \A_Contrabass_II_Music_Voice                                               %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern
