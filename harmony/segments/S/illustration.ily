S_Global_Skips = {                                                             %! abjad.Path.extern

    \repeat volta 2
    {

        % [S Global_Skips measure 168 / measure 1]                             %! _comment_measure_numbers
        \once \override Score.BarLine.X-extent = #'(-1 . 3)                    %! baca.bar_line_x_extent:OverrideCommand(1)
        \time 4/4                                                              %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
        \bar ""                                                                %! _make_global_skips(3):+SEGMENT:EMPTY_START_BAR
        \baca-time-signature-color #'blue                                      %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
        s1 * 1                                                                 %! _make_global_skips(1)
        - \tweak extra-offset #'(0 . 18)                                       %! baca.rehearsal_mark:IndicatorCommand
        - \baca-rehearsal-mark-markup "S"                                      %! baca.rehearsal_mark:IndicatorCommand
        - \baca-start-lmn-left-only "1"                                        %! LOCAL_MEASURE_NUMBER
        \bacaStartTextSpanLMN                                                  %! LOCAL_MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "168"                                       %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN                                                   %! MEASURE_NUMBER
        - \baca-start-snm-left-only "[S.1]"                                    %! STAGE_NUMBER
        \bacaStartTextSpanSNM                                                  %! STAGE_NUMBER
    %@% - \abjad-invisible-line                                                %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    %@% \bacaStartTextSpanMM                                                   %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
        - \abjad-invisible-line                                                %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
        - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
        \bacaStartTextSpanMM                                                   %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    %@% - \baca-start-ct-left-only "[8'58'']"                                  %! CLOCK_TIME
    %@% \bacaStartTextSpanCT                                                   %! CLOCK_TIME

    }

    % [S Global_Skips measure 169 / measure 2]                                 %! _comment_measure_numbers
    s1 * 1                                                                     %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "169"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-colored-left-only "[◀R.1]" #darkgreen                    %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #3 #2 #0 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #3 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[9'00'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [S Global_Skips measure 170 / measure 3]                                 %! _comment_measure_numbers
    \time 1/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/4                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "170"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only-fermata "2''"                                   %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [S Global_Skips measure 171 / measure 4]                                 %! _comment_measure_numbers
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 5/4                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "171"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-left-only "[S.2-3]"                                      %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[9'05'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [S Global_Skips measure 172 / measure 5]                                 %! _comment_measure_numbers
    \time 4/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1                                                                     %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "172"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[9'08'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [S Global_Skips measure 173 / measure 6]                                 %! _comment_measure_numbers
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 5/4                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "173"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[9'11'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [S Global_Skips measure 174 / measure 7]                                 %! _comment_measure_numbers
    \time 4/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1                                                                     %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "174"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[9'14'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [S Global_Skips measure 175 / measure 8]                                 %! _comment_measure_numbers
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 5/4                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "175"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[9'17'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [S Global_Skips measure 176 / measure 9]                                 %! _comment_measure_numbers
    \time 4/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1                                                                     %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "176"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[9'20'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [S Global_Skips measure 177 / measure 10]                                %! _comment_measure_numbers
    \time 1/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/4                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "177"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only-fermata "2''"                                   %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [S Global_Skips measure 178 / measure 11]                                %! _comment_measure_numbers
    \time 4/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1                                                                     %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "11"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "178"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-colored-left-only "[▶T.1]" #darkgreen                    %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[9'24'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [S Global_Skips measure 179 / measure 12]                                %! _comment_measure_numbers
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 5/4                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "12"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "179"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-left-only "[S.4]"                                        %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1)   %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[9'26'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [S Global_Skips measure 180 / measure 13]                                %! _comment_measure_numbers
    \time 4/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1                                                                     %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "13"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "180"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-colored-left-only "[▶T.1]" #darkgreen                    %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
%@% - \baca-start-ct-both "[9'29'']" "[9'31'']"                                %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME
    \baca-bar-line-visible                                                     %! _attach_final_bar_line
    \bar "|"                                                                   %! _attach_final_bar_line

    % [S Global_Skips measure 181 / measure 14]                                %! PHANTOM:_style_phantom_measures(1):_comment_measure_numbers
    \time 1/4                                                                  %! PHANTOM:_style_phantom_measures(1):EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(3)
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


S_Global_Rests = {                                                             %! abjad.Path.extern

    % [S Global_Rests measure 168 / measure 1]                                 %! _comment_measure_numbers
    R1 * 1                                                                     %! _make_global_rests(1)

    % [S Global_Rests measure 169 / measure 2]                                 %! _comment_measure_numbers
    R1 * 1                                                                     %! _make_global_rests(1)

    % [S Global_Rests measure 170 / measure 3]                                 %! _comment_measure_numbers
    \baca-fermata-measure                                                      %! baca.global_fermata:GlobalFermataCommand(2)
    R1 * 1/4                                                                   %! _make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata:GlobalFermataCommand(1)

    % [S Global_Rests measure 171 / measure 4]                                 %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _make_global_rests(1)

    % [S Global_Rests measure 172 / measure 5]                                 %! _comment_measure_numbers
    R1 * 1                                                                     %! _make_global_rests(1)

    % [S Global_Rests measure 173 / measure 6]                                 %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _make_global_rests(1)

    % [S Global_Rests measure 174 / measure 7]                                 %! _comment_measure_numbers
    R1 * 1                                                                     %! _make_global_rests(1)

    % [S Global_Rests measure 175 / measure 8]                                 %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _make_global_rests(1)

    % [S Global_Rests measure 176 / measure 9]                                 %! _comment_measure_numbers
    R1 * 1                                                                     %! _make_global_rests(1)

    % [S Global_Rests measure 177 / measure 10]                                %! _comment_measure_numbers
    \baca-fermata-measure                                                      %! baca.global_fermata:GlobalFermataCommand(2)
    R1 * 1/4                                                                   %! _make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata:GlobalFermataCommand(1)

    % [S Global_Rests measure 178 / measure 11]                                %! _comment_measure_numbers
    R1 * 1                                                                     %! _make_global_rests(1)

    % [S Global_Rests measure 179 / measure 12]                                %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _make_global_rests(1)

    % [S Global_Rests measure 180 / measure 13]                                %! _comment_measure_numbers
    R1 * 1                                                                     %! _make_global_rests(1)

    % [S Global_Rests measure 181 / measure 14]                                %! PHANTOM:_style_phantom_measures(4):_comment_measure_numbers
    R1 * 1/4                                                                   %! PHANTOM:_make_global_rests(2)

}                                                                              %! abjad.Path.extern


S_Bass_Flute_Music_Voice = {                                                   %! abjad.Path.extern

    % [S Bass_Flute_Music_Voice measure 168 / measure 1]                       %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:_reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-bfl-markup                            %! _clone_segment_initial_short_instrument_name
    \clef "treble"                                                             %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
    R1 * 4/4                                                                   %! _call_rhythm_commands
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! REAPPLIED_DYNAMIC:_set_status_tag:_reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Bfl.”]"                              %! REAPPLIED_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    ^ \baca-reapplied-indicator-markup "(“BassFlute”)"                         %! REAPPLIED_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):-PARTS:_reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    % [S Bass_Flute_Music_Voice measure 169 / measure 2]                       %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Bass_Flute_Music_Voice measure 170 / measure 3]                       %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Bass_Flute_Music_Voice measure 171 / measure 4]                       %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Bass_Flute_Music_Voice measure 172 / measure 5]                       %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Bass_Flute_Music_Voice measure 173 / measure 6]                       %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Bass_Flute_Music_Voice measure 174 / measure 7]                       %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Bass_Flute_Music_Voice measure 175 / measure 8]                       %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Bass_Flute_Music_Voice measure 176 / measure 9]                       %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Bass_Flute_Music_Voice measure 177 / measure 10]                      %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Bass_Flute_Music_Voice measure 178 / measure 11]                      %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Bass_Flute_Music_Voice measure 179 / measure 12]                      %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Bass_Flute_Music_Voice measure 180 / measure 13]                      %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Bass_Flute_Music_Voice"                              %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Bass_Flute_Music_Voice measure 181 / measure 14]              %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Bass_Flute_Rest_Voice"                               %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Bass_Flute_Rest_Voice measure 181 / measure 14]               %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


S_Bass_Flute_Music_Staff = <<                                                  %! abjad.Path.extern

    \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context
    \S_Global_Rests                                                            %! abjad.Path.extern

    \context Voice = "Bass_Flute_Music_Voice"                                  %! harmony.ScoreTemplate.__call__
    \S_Bass_Flute_Music_Voice                                                  %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


S_Percussion_I_Music_Voice = {                                                 %! abjad.Path.extern

    % [S Percussion_I_Music_Voice measure 168 / measure 1]                     %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:_reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 3                           %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-perc-i-markup                         %! _clone_segment_initial_short_instrument_name
    \clef "percussion"                                                         %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:_attach_color_literal(2)
    R1 * 4/4                                                                   %! _call_rhythm_commands
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! REAPPLIED_DYNAMIC:_set_status_tag:_reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Perc. I”]"                           %! REAPPLIED_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):-PARTS:_reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    % [S Percussion_I_Music_Voice measure 169 / measure 2]                     %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Percussion_I_Music_Voice measure 170 / measure 3]                     %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Percussion_I_Music_Voice measure 171 / measure 4]                     %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Percussion_I_Music_Voice measure 172 / measure 5]                     %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Percussion_I_Music_Voice measure 173 / measure 6]                     %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Percussion_I_Music_Voice measure 174 / measure 7]                     %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Percussion_I_Music_Voice measure 175 / measure 8]                     %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Percussion_I_Music_Voice measure 176 / measure 9]                     %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Percussion_I_Music_Voice measure 177 / measure 10]                    %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Percussion_I_Music_Voice measure 178 / measure 11]                    %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Percussion_I_Music_Voice measure 179 / measure 12]                    %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Percussion_I_Music_Voice measure 180 / measure 13]                    %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Percussion_I_Music_Voice"                            %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Percussion_I_Music_Voice measure 181 / measure 14]            %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Percussion_I_Rest_Voice"                             %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Percussion_I_Rest_Voice measure 181 / measure 14]             %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


S_Percussion_I_Music_Staff = <<                                                %! abjad.Path.extern

    \context Voice = "Percussion_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__
    \S_Percussion_I_Music_Voice                                                %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


S_Percussion_II_Music_Voice = {                                                %! abjad.Path.extern

    % [S Percussion_II_Music_Voice measure 168 / measure 1]                    %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:_reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 3                           %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-perc-ii-markup                        %! _clone_segment_initial_short_instrument_name
    \clef "percussion"                                                         %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:_attach_color_literal(2)
    R1 * 4/4                                                                   %! _call_rhythm_commands
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! REAPPLIED_DYNAMIC:_set_status_tag:_reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Perc. II”]"                          %! REAPPLIED_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):-PARTS:_reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    % [S Percussion_II_Music_Voice measure 169 / measure 2]                    %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Percussion_II_Music_Voice measure 170 / measure 3]                    %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Percussion_II_Music_Voice measure 171 / measure 4]                    %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Percussion_II_Music_Voice measure 172 / measure 5]                    %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Percussion_II_Music_Voice measure 173 / measure 6]                    %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Percussion_II_Music_Voice measure 174 / measure 7]                    %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Percussion_II_Music_Voice measure 175 / measure 8]                    %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Percussion_II_Music_Voice measure 176 / measure 9]                    %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Percussion_II_Music_Voice measure 177 / measure 10]                   %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Percussion_II_Music_Voice measure 178 / measure 11]                   %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Percussion_II_Music_Voice measure 179 / measure 12]                   %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Percussion_II_Music_Voice measure 180 / measure 13]                   %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Percussion_II_Music_Voice"                           %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Percussion_II_Music_Voice measure 181 / measure 14]           %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Percussion_II_Rest_Voice"                            %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Percussion_II_Rest_Voice measure 181 / measure 14]            %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


S_Percussion_II_Music_Staff = <<                                               %! abjad.Path.extern

    \context Voice = "Percussion_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__
    \S_Percussion_II_Music_Voice                                               %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


S_Harp_Music_Voice = {                                                         %! abjad.Path.extern

    % [S Harp_Music_Voice measure 168 / measure 1]                             %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:_reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-hp-markup                             %! _clone_segment_initial_short_instrument_name
    \clef "treble"                                                             %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:_attach_color_literal(2)
    R1 * 4/4                                                                   %! _call_rhythm_commands
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! REAPPLIED_DYNAMIC:_set_status_tag:_reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "(“Harp”)"                              %! REAPPLIED_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    ^ \baca-reapplied-indicator-markup "[“Hp.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):-PARTS:_reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    % [S Harp_Music_Voice measure 169 / measure 2]                             %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Harp_Music_Voice measure 170 / measure 3]                             %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Harp_Music_Voice measure 171 / measure 4]                             %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Harp_Music_Voice measure 172 / measure 5]                             %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Harp_Music_Voice measure 173 / measure 6]                             %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Harp_Music_Voice measure 174 / measure 7]                             %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Harp_Music_Voice measure 175 / measure 8]                             %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Harp_Music_Voice measure 176 / measure 9]                             %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Harp_Music_Voice measure 177 / measure 10]                            %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Harp_Music_Voice measure 178 / measure 11]                            %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Harp_Music_Voice measure 179 / measure 12]                            %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Harp_Music_Voice measure 180 / measure 13]                            %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Harp_Music_Voice"                                    %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Harp_Music_Voice measure 181 / measure 14]                    %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Harp_Rest_Voice"                                     %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Harp_Rest_Voice measure 181 / measure 14]                     %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


S_Harp_Music_Staff = <<                                                        %! abjad.Path.extern

    \context Voice = "Harp_Music_Voice"                                        %! harmony.ScoreTemplate.__call__
    \S_Harp_Music_Voice                                                        %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


S_Viola_Music_Voice = {                                                        %! abjad.Path.extern

    % [S Viola_Music_Voice measure 168 / measure 1]                            %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:_reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 1                           %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-va-markup                             %! _clone_segment_initial_short_instrument_name
    \clef "percussion"                                                         %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:_attach_color_literal(2)
    R1 * 4/4                                                                   %! _call_rhythm_commands
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \sfp                                                                       %! REAPPLIED_DYNAMIC:_set_status_tag:_reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Va.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    ^ \baca-reapplied-indicator-markup "(“Viola”)"                             %! REAPPLIED_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):-PARTS:_reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    % [S Viola_Music_Voice measure 169 / measure 2]                            %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Viola_Music_Voice measure 170 / measure 3]                            %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Viola_Music_Voice measure 171 / measure 4]                            %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Viola_Music_Voice measure 172 / measure 5]                            %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Viola_Music_Voice measure 173 / measure 6]                            %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Viola_Music_Voice measure 174 / measure 7]                            %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Viola_Music_Voice measure 175 / measure 8]                            %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Viola_Music_Voice measure 176 / measure 9]                            %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Viola_Music_Voice measure 177 / measure 10]                           %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Viola_Music_Voice measure 178 / measure 11]                           %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Viola_Music_Voice measure 179 / measure 12]                           %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Viola_Music_Voice measure 180 / measure 13]                           %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Viola_Music_Voice"                                   %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Viola_Music_Voice measure 181 / measure 14]                   %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Viola_Rest_Voice"                                    %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Viola_Rest_Voice measure 181 / measure 14]                    %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


S_Viola_Music_Staff = <<                                                       %! abjad.Path.extern

    \context Voice = "Viola_Music_Voice"                                       %! harmony.ScoreTemplate.__call__
    \S_Viola_Music_Voice                                                       %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


S_Cello_I_Music_Voice = {                                                      %! abjad.Path.extern

    % [S Cello_I_Music_Voice measure 168 / measure 1]                          %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:_reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 1                           %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-vc-i-markup                           %! _clone_segment_initial_short_instrument_name
    \clef "percussion"                                                         %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:_attach_color_literal(2)
    R1 * 4/4                                                                   %! _call_rhythm_commands
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \sfp                                                                       %! REAPPLIED_DYNAMIC:_set_status_tag:_reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Vc. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):-PARTS:_reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    % [S Cello_I_Music_Voice measure 169 / measure 2]                          %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Cello_I_Music_Voice measure 170 / measure 3]                          %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Cello_I_Music_Voice measure 171 / measure 4]                          %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Cello_I_Music_Voice measure 172 / measure 5]                          %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Cello_I_Music_Voice measure 173 / measure 6]                          %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Cello_I_Music_Voice measure 174 / measure 7]                          %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Cello_I_Music_Voice measure 175 / measure 8]                          %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Cello_I_Music_Voice measure 176 / measure 9]                          %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Cello_I_Music_Voice measure 177 / measure 10]                         %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Cello_I_Music_Voice measure 178 / measure 11]                         %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Cello_I_Music_Voice measure 179 / measure 12]                         %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Cello_I_Music_Voice measure 180 / measure 13]                         %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Cello_I_Music_Voice"                                 %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Cello_I_Music_Voice measure 181 / measure 14]                 %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Cello_I_Rest_Voice"                                  %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Cello_I_Rest_Voice measure 181 / measure 14]                  %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


S_Cello_I_Music_Staff = <<                                                     %! abjad.Path.extern

    \context Voice = "Cello_I_Music_Voice"                                     %! harmony.ScoreTemplate.__call__
    \S_Cello_I_Music_Voice                                                     %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


S_Cello_II_Music_Voice = {                                                     %! abjad.Path.extern

    % [S Cello_II_Music_Voice measure 168 / measure 1]                         %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:_reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-vc-ii-markup                          %! _clone_segment_initial_short_instrument_name
    \clef "bass"                                                               %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
    R1 * 4/4                                                                   %! _call_rhythm_commands
    ^ \baca-reapplied-indicator-markup "[“Vc. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):-PARTS:_reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    % [S Cello_II_Music_Voice measure 169 / measure 2]                         %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Cello_II_Music_Voice measure 170 / measure 3]                         %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Cello_II_Music_Voice measure 171 / measure 4]                         %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Cello_II_Music_Voice measure 172 / measure 5]                         %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Cello_II_Music_Voice measure 173 / measure 6]                         %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Cello_II_Music_Voice measure 174 / measure 7]                         %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Cello_II_Music_Voice measure 175 / measure 8]                         %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Cello_II_Music_Voice measure 176 / measure 9]                         %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Cello_II_Music_Voice measure 177 / measure 10]                        %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Cello_II_Music_Voice measure 178 / measure 11]                        %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Cello_II_Music_Voice measure 179 / measure 12]                        %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Cello_II_Music_Voice measure 180 / measure 13]                        %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Cello_II_Music_Voice"                                %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Cello_II_Music_Voice measure 181 / measure 14]                %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Cello_II_Rest_Voice"                                 %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Cello_II_Rest_Voice measure 181 / measure 14]                 %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


S_Cello_II_Music_Staff = <<                                                    %! abjad.Path.extern

    \context Voice = "Cello_II_Music_Voice"                                    %! harmony.ScoreTemplate.__call__
    \S_Cello_II_Music_Voice                                                    %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


S_Contrabass_I_Music_Voice = {                                                 %! abjad.Path.extern

    % [S Contrabass_I_Music_Voice measure 168 / measure 1]                     %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:_reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 1                           %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-cb-i-markup                           %! _clone_segment_initial_short_instrument_name
    \clef "percussion"                                                         %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:_attach_color_literal(2)
    R1 * 4/4                                                                   %! _call_rhythm_commands
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \sfp                                                                       %! REAPPLIED_DYNAMIC:_set_status_tag:_reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Cb. I”]"                             %! REAPPLIED_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):-PARTS:_reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    % [S Contrabass_I_Music_Voice measure 169 / measure 2]                     %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_I_Music_Voice measure 170 / measure 3]                     %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_I_Music_Voice measure 171 / measure 4]                     %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_I_Music_Voice measure 172 / measure 5]                     %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_I_Music_Voice measure 173 / measure 6]                     %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_I_Music_Voice measure 174 / measure 7]                     %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_I_Music_Voice measure 175 / measure 8]                     %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_I_Music_Voice measure 176 / measure 9]                     %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_I_Music_Voice measure 177 / measure 10]                    %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_I_Music_Voice measure 178 / measure 11]                    %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_I_Music_Voice measure 179 / measure 12]                    %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_I_Music_Voice measure 180 / measure 13]                    %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Contrabass_I_Music_Voice"                            %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Contrabass_I_Music_Voice measure 181 / measure 14]            %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Contrabass_I_Rest_Voice"                             %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Contrabass_I_Rest_Voice measure 181 / measure 14]             %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


S_Contrabass_I_Music_Staff = <<                                                %! abjad.Path.extern

    \context Voice = "Contrabass_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__
    \S_Contrabass_I_Music_Voice                                                %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


S_Contrabass_II_Music_Voice = {                                                %! abjad.Path.extern

    % [S Contrabass_II_Music_Voice measure 168 / measure 1]                    %! _comment_measure_numbers
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:_reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-cb-ii-markup                          %! _clone_segment_initial_short_instrument_name
    \clef "bass"                                                               %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
    R1 * 4/4                                                                   %! _call_rhythm_commands
    ^ \baca-reapplied-indicator-markup "[“Cb. II”]"                            %! REAPPLIED_MARGIN_MARKUP_ALERT:_attach_latent_indicator_alert
    ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                        %! REAPPLIED_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:_attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:_treat_persistent_wrapper(3):-PARTS:_reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    % [S Contrabass_II_Music_Voice measure 169 / measure 2]                    %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_II_Music_Voice measure 170 / measure 3]                    %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_II_Music_Voice measure 171 / measure 4]                    %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_II_Music_Voice measure 172 / measure 5]                    %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_II_Music_Voice measure 173 / measure 6]                    %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_II_Music_Voice measure 174 / measure 7]                    %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_II_Music_Voice measure 175 / measure 8]                    %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_II_Music_Voice measure 176 / measure 9]                    %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_II_Music_Voice measure 177 / measure 10]                   %! _comment_measure_numbers
    R1 * 1/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_II_Music_Voice measure 178 / measure 11]                   %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_II_Music_Voice measure 179 / measure 12]                   %! _comment_measure_numbers
    R1 * 5/4                                                                   %! _call_rhythm_commands

    % [S Contrabass_II_Music_Voice measure 180 / measure 13]                   %! _comment_measure_numbers
    R1 * 4/4                                                                   %! _call_rhythm_commands

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Contrabass_II_Music_Voice"                           %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Contrabass_II_Music_Voice measure 181 / measure 14]           %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Contrabass_II_Rest_Voice"                            %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [S Contrabass_II_Rest_Voice measure 181 / measure 14]            %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


S_Contrabass_II_Music_Staff = <<                                               %! abjad.Path.extern

    \context Voice = "Contrabass_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__
    \S_Contrabass_II_Music_Voice                                               %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern