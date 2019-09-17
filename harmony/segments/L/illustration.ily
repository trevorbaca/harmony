L_Global_Skips = {                                                             %! abjad.Path.extern

    % [L Global_Skips measure 99 / measure 1]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \bar ""                                                                    %! baca.SegmentMaker._make_global_skips(4):+SEGMENT:EMPTY_START_BAR
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    - \tweak extra-offset #'(0 . 18)                                           %! baca.rehearsal_mark:IndicatorCommand
    - \baca-rehearsal-mark-markup "L"                                          %! baca.rehearsal_mark:IndicatorCommand
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "99"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-left-only "[L.1]"                                        %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #2 #3 #2 #0 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[5'37'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [L Global_Skips measure 100 / measure 2]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "100"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-colored-left-only "[▶M.1]" #darkgreen                    %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[5'38'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [L Global_Skips measure 101 / measure 3]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "101"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-left-only "[L.2-3]"                                      %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1)   %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[5'40'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [L Global_Skips measure 102 / measure 4]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "102"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[5'42'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [L Global_Skips measure 103 / measure 5]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "103"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[5'45'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [L Global_Skips measure 104 / measure 6]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "104"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[5'47'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [L Global_Skips measure 105 / measure 7]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "105"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[5'50'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [L Global_Skips measure 106 / measure 8]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "106"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only "[5'52'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [L Global_Skips measure 107 / measure 9]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \time 1/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 1/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "107"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \baca-start-ct-left-only-fermata "2''"                                   %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [L Global_Skips measure 108 / measure 10]                                %! baca.SegmentMaker._comment_measure_numbers()
    \time 6/4                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 3/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "108"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-snm-colored-left-only "[◀J.6]" #darkgreen                    %! STAGE_NUMBER
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #1 #0 #2 #0 #'(1 . 1)   %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #0 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[5'57'']"                                      %! CLOCK_TIME
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    \repeat volta 2
    {

        % [L Global_Skips measure 109 / measure 11]                            %! baca.SegmentMaker._comment_measure_numbers()
        \once \override Score.BarLine.X-extent = #'(-1 . 3)                    %! baca.bar_line_x_extent:OverrideCommand(1)
        \time 3/4                                                              %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
        \baca-time-signature-color #'blue                                      %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
        s1 * 3/4                                                               %! baca.SegmentMaker._make_global_skips(1)
        \bacaStopTextSpanLMN                                                   %! LOCAL_MEASURE_NUMBER
    %@% \bacaStopTextSpanMN                                                    %! MEASURE_NUMBER
        \bacaStopTextSpanSNM                                                   %! STAGE_NUMBER
        \bacaStopTextSpanMM                                                    %! baca.SegmentMaker._attach_metronome_marks(1)
    %@% \bacaStopTextSpanCT                                                    %! CLOCK_TIME
        - \baca-start-lmn-left-only "11"                                       %! LOCAL_MEASURE_NUMBER
        \bacaStartTextSpanLMN                                                  %! LOCAL_MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "109"                                       %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN                                                   %! MEASURE_NUMBER
        - \baca-start-snm-left-only "[L.4-5]"                                  %! STAGE_NUMBER
        \bacaStartTextSpanSNM                                                  %! STAGE_NUMBER
    %@% - \abjad-invisible-line                                                %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"96" #3 #0 #2 #0 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
    %@% \bacaStartTextSpanMM                                                   %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
        - \abjad-invisible-line                                                %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
        - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #3 #0 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
        \bacaStartTextSpanMM                                                   %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    %@% - \baca-start-ct-left-only "[6'05'']"                                  %! CLOCK_TIME
    %@% \bacaStartTextSpanCT                                                   %! CLOCK_TIME

        % [L Global_Skips measure 110 / measure 12]                            %! baca.SegmentMaker._comment_measure_numbers()
        \time 4/4                                                              %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
        \baca-time-signature-color #'blue                                      %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
        s1 * 1                                                                 %! baca.SegmentMaker._make_global_skips(1)
        \bacaStopTextSpanLMN                                                   %! LOCAL_MEASURE_NUMBER
    %@% \bacaStopTextSpanMN                                                    %! MEASURE_NUMBER
    %@% \bacaStopTextSpanCT                                                    %! CLOCK_TIME
        - \baca-start-lmn-left-only "12"                                       %! LOCAL_MEASURE_NUMBER
        \bacaStartTextSpanLMN                                                  %! LOCAL_MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "110"                                       %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN                                                   %! MEASURE_NUMBER
    %@% - \baca-start-ct-left-only "[6'07'']"                                  %! CLOCK_TIME
    %@% \bacaStartTextSpanCT                                                   %! CLOCK_TIME
        \once \override Score.BarLine.X-extent = #'(-2 . 2)                    %! baca.bar_line_x_extent:OverrideCommand(1)

    }

    \repeat volta 2
    {

        % [L Global_Skips measure 111 / measure 13]                            %! baca.SegmentMaker._comment_measure_numbers()
        \once \override Score.BarLine.X-extent = #'(-1 . 3)                    %! baca.bar_line_x_extent:OverrideCommand(1)
        \time 3/4                                                              %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
        \baca-time-signature-color #'blue                                      %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
        s1 * 3/4                                                               %! baca.SegmentMaker._make_global_skips(1)
        \bacaStopTextSpanLMN                                                   %! LOCAL_MEASURE_NUMBER
    %@% \bacaStopTextSpanMN                                                    %! MEASURE_NUMBER
        \bacaStopTextSpanSNM                                                   %! STAGE_NUMBER
    %@% \bacaStopTextSpanCT                                                    %! CLOCK_TIME
        - \baca-start-lmn-left-only "13"                                       %! LOCAL_MEASURE_NUMBER
        \bacaStartTextSpanLMN                                                  %! LOCAL_MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "111"                                       %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN                                                   %! MEASURE_NUMBER
        - \baca-start-snm-left-only "[L.6-8]"                                  %! STAGE_NUMBER
        \bacaStartTextSpanSNM                                                  %! STAGE_NUMBER
    %@% - \baca-start-ct-left-only "[6'09'']"                                  %! CLOCK_TIME
    %@% \bacaStartTextSpanCT                                                   %! CLOCK_TIME

        % [L Global_Skips measure 112 / measure 14]                            %! baca.SegmentMaker._comment_measure_numbers()
        s1 * 3/4                                                               %! baca.SegmentMaker._make_global_skips(1)
        \bacaStopTextSpanLMN                                                   %! LOCAL_MEASURE_NUMBER
    %@% \bacaStopTextSpanMN                                                    %! MEASURE_NUMBER
    %@% \bacaStopTextSpanCT                                                    %! CLOCK_TIME
        - \baca-start-lmn-left-only "14"                                       %! LOCAL_MEASURE_NUMBER
        \bacaStartTextSpanLMN                                                  %! LOCAL_MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "112"                                       %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN                                                   %! MEASURE_NUMBER
    %@% - \baca-start-ct-left-only "[6'11'']"                                  %! CLOCK_TIME
    %@% \bacaStartTextSpanCT                                                   %! CLOCK_TIME

        % [L Global_Skips measure 113 / measure 15]                            %! baca.SegmentMaker._comment_measure_numbers()
        \time 4/4                                                              %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
        \baca-time-signature-color #'blue                                      %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
        s1 * 1                                                                 %! baca.SegmentMaker._make_global_skips(1)
        \bacaStopTextSpanLMN                                                   %! LOCAL_MEASURE_NUMBER
    %@% \bacaStopTextSpanMN                                                    %! MEASURE_NUMBER
    %@% \bacaStopTextSpanCT                                                    %! CLOCK_TIME
        - \baca-start-lmn-left-only "15"                                       %! LOCAL_MEASURE_NUMBER
        \bacaStartTextSpanLMN                                                  %! LOCAL_MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "113"                                       %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN                                                   %! MEASURE_NUMBER
    %@% - \baca-start-ct-both "[6'13'']" "[6'16'']"                            %! CLOCK_TIME
    %@% \bacaStartTextSpanCT                                                   %! CLOCK_TIME
    %%% \once \override Score.BarLine.X-extent = #'(-2 . 2)                    %! +SCORE:baca.bar_line_x_extent:OverrideCommand(1)
        \baca-bar-line-visible                                                 %! baca.SegmentMaker._attach_final_bar_line()
        \bar "|"                                                               %! baca.SegmentMaker._attach_final_bar_line()

    }

    % [L Global_Skips measure 114 / measure 16]                                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):baca.SegmentMaker._comment_measure_numbers()
    \time 1/4                                                                  %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(3)
    \baca-time-signature-transparent                                           %! PHANTOM:baca.SegmentMaker._style_phantom_measures(2)
    s1 * 1/4                                                                   %! PHANTOM:baca.SegmentMaker._make_global_skips(3)
    \bacaStopTextSpanLMN                                                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):MEASURE_NUMBER
    \bacaStopTextSpanSNM                                                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):STAGE_NUMBER
    \bacaStopTextSpanMM                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):SEGMENT_FINAL_STOP_MM_SPANNER:baca.SegmentMaker._attach_metronome_marks(4)
%@% \bacaStopTextSpanCT                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):CLOCK_TIME
    \once \override Score.BarLine.transparent = ##t                            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(3)
    \once \override Score.SpanBar.transparent = ##t                            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(3)

}                                                                              %! abjad.Path.extern


L_Global_Rests = {                                                             %! abjad.Path.extern

    % [L Global_Rests measure 99 / measure 1]                                  %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 100 / measure 2]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 101 / measure 3]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 102 / measure 4]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 103 / measure 5]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 104 / measure 6]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 105 / measure 7]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 106 / measure 8]                                 %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 107 / measure 9]                                 %! baca.SegmentMaker._comment_measure_numbers()
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure                                                      %! baca.global_fermata:GlobalFermataCommand(2)
    R1 * 1/4                                                                   %! baca.SegmentMaker._make_global_rests(1)
    ^ \baca-fermata-markup                                                     %! baca.global_fermata:GlobalFermataCommand(1)

    % [L Global_Rests measure 108 / measure 10]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 109 / measure 11]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 110 / measure 12]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 111 / measure 13]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 112 / measure 14]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 113 / measure 15]                                %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 1                                                                     %! baca.SegmentMaker._make_global_rests(1)

    % [L Global_Rests measure 114 / measure 16]                                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(4):baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/4                                                                   %! PHANTOM:baca.SegmentMaker._make_global_rests(2)

}                                                                              %! abjad.Path.extern


L_Bass_Flute_Music_Voice = {                                                   %! abjad.Path.extern

    % [L Bass_Flute_Music_Voice measure 99 / measure 1]                        %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:_set_status_tag:REAPPLIED_BAR_EXTENT:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-bfl-markup                            %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "treble"                                                             %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''2                                                                       %! harmony.durata()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \baca-mp-ancora                                                            %! REAPPLIED_DYNAMIC:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Bfl.”]"                              %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“BassFlute”)"                         %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "multiphonic"                               %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    r4                                                                         %! harmony.durata()
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(3)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Bass_Flute_Music_Voice measure 100 / measure 2]               %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 5/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Bass_Flute_Rest_Voice measure 100 / measure 2]                %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Bass_Flute_Music_Voice measure 101 / measure 3]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''2.                                                                      %! harmony.durata()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "multiphonic"                               %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner:PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    % [L Bass_Flute_Music_Voice measure 102 / measure 4]                       %! baca.SegmentMaker._comment_measure_numbers()
    r1                                                                         %! harmony.durata()
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(3)

    r4                                                                         %! harmony.durata()

    % [L Bass_Flute_Music_Voice measure 103 / measure 5]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''2.                                                                      %! harmony.durata()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "multiphonic"                               %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner:PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    % [L Bass_Flute_Music_Voice measure 104 / measure 6]                       %! baca.SegmentMaker._comment_measure_numbers()
    r1                                                                         %! harmony.durata()
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(3)

    r4                                                                         %! harmony.durata()

    % [L Bass_Flute_Music_Voice measure 105 / measure 7]                       %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''2.                                                                      %! harmony.durata()
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "multiphonic"                               %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner:PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    % [L Bass_Flute_Music_Voice measure 106 / measure 8]                       %! baca.SegmentMaker._comment_measure_numbers()
    r1                                                                         %! harmony.durata()
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(3)

    r4                                                                         %! harmony.durata()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Bass_Flute_Music_Voice measure 107 / measure 9]               %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 1/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()
            \override Staff.BarLine.bar-extent = #'(0 . 0)                     %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Bass_Flute_Rest_Voice measure 107 / measure 9]                %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Bass_Flute_Music_Voice measure 108 / measure 10]                      %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    \once \override Score.BarLine.transparent = ##t                            %! baca.SegmentMaker._style_fermata_measures(4):EOL_FERMATA:MEASURE_107
    \once \override Score.SpanBar.transparent = ##t                            %! baca.SegmentMaker._style_fermata_measures(4):EOL_FERMATA:MEASURE_107
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [L Bass_Flute_Music_Voice measure 109 / measure 11]                      %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''4                                                                       %! harmony.durata()
    - \abjad-solid-line-with-arrow                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "T"                                         %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''2                                                                       %! harmony.durata()
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner:PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)
    \breathe                                                                   %! baca.breathe:IndicatorCommand

    % [L Bass_Flute_Music_Voice measure 110 / measure 12]                      %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''4                                                                       %! harmony.durata()
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(3)
    - \abjad-solid-line-with-arrow                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "T"                                         %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''2.                                                                      %! harmony.durata()
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner:PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)
    \breathe                                                                   %! baca.breathe:IndicatorCommand

    % [L Bass_Flute_Music_Voice measure 111 / measure 13]                      %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''4
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(3)
    - \abjad-solid-line-with-arrow                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "T"                                         %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''8
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''8
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner:PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''4
    \repeatTie
    \breathe                                                                   %! baca.breathe:IndicatorCommand

    % [L Bass_Flute_Music_Voice measure 112 / measure 14]                      %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''4
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(3)
    - \abjad-solid-line-with-arrow                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "T"                                         %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''8
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''8
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! baca.text_spanner:PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''4
    \repeatTie
    \breathe                                                                   %! baca.breathe:IndicatorCommand

    % [L Bass_Flute_Music_Voice measure 113 / measure 15]                      %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''4
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(3)
    - \abjad-solid-line-with-arrow                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "T"                                         %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''8
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''8
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \abjad-dashed-line-with-hook                                             %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "A"                                         %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.5                                  %! baca.text_spanner:PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c''2
    \repeatTie
    \breathe                                                                   %! baca.breathe:IndicatorCommand

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Music_Voice"                              %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Bass_Flute_Music_Voice measure 114 / measure 16]              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 1/4                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
            \stopTextSpan                                                      %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.text_spanner:PiecewiseCommand(3)

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Rest_Voice"                               %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Bass_Flute_Rest_Voice measure 114 / measure 16]               %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


L_Bass_Flute_Music_Staff = <<                                                  %! abjad.Path.extern

    \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context
    \L_Global_Rests                                                            %! abjad.Path.extern

    \context Voice = "Bass_Flute_Music_Voice"                                  %! harmony.ScoreTemplate.__call__
    \L_Bass_Flute_Music_Voice                                                  %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


L_Percussion_I_Music_Voice = {                                                 %! abjad.Path.extern

    % [L Percussion_I_Music_Voice measure 99 / measure 1]                      %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:_set_status_tag:-PARTS:IndicatorCommand
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \set Staff.instrumentName = \harmony-perc-i-markup                         %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "percussion"                                                         %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'2                                                                        %! harmony.durata()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente")) %! REAPPLIED_DYNAMIC:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Perc. I”]"                           %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding #5.5                                                %! baca.markup:IndicatorCommand
    ^ \baca-glockenspiel-markup                                                %! baca.markup:IndicatorCommand
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    r4                                                                         %! harmony.durata()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_I_Music_Voice measure 100 / measure 2]             %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
            \once \override Staff.StaffSymbol.line-count = 3                   %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
            \startStaff                                                        %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()
            \override Staff.BarLine.bar-extent = #'(-2 . 1)                    %! EXPLICIT_BAR_EXTENT:_set_status_tag:-PARTS:IndicatorCommand

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_I_Rest_Voice measure 100 / measure 2]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Percussion_I_Music_Voice measure 101 / measure 3]                     %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:_set_status_tag:-PARTS:IndicatorCommand
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'2.                                                                       %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    % [L Percussion_I_Music_Voice measure 102 / measure 4]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'1                                                                        %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    r4                                                                         %! harmony.durata()

    % [L Percussion_I_Music_Voice measure 103 / measure 5]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'2.                                                                       %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    % [L Percussion_I_Music_Voice measure 104 / measure 6]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'1                                                                        %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    r4                                                                         %! harmony.durata()

    % [L Percussion_I_Music_Voice measure 105 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'2.                                                                       %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    % [L Percussion_I_Music_Voice measure 106 / measure 8]                     %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'1                                                                        %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    r4                                                                         %! harmony.durata()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_I_Music_Voice measure 107 / measure 9]             %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_I_Rest_Voice measure 107 / measure 9]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Percussion_I_Music_Voice measure 108 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! EXPLICIT_BAR_EXTENT:_set_status_tag:-PARTS:IndicatorCommand
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [L Percussion_I_Music_Voice measure 109 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #down                                           %! baca.stem_down:OverrideCommand(1)
    b4 * 3/4                                                                   %! harmony.begin_quarter_notes()
    - \tweak staff-padding #5.5                                                %! baca.markup:IndicatorCommand
    ^ \baca-bd-superball-markup                                                %! baca.markup:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    b4 * 1/4                                                                   %! harmony.begin_quarter_notes()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)

    r2                                                                         %! harmony.begin_quarter_notes()

    % [L Percussion_I_Music_Voice measure 110 / measure 12]                    %! baca.SegmentMaker._comment_measure_numbers()
    b4 * 3/4                                                                   %! harmony.begin_quarter_notes()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    b4 * 1/4                                                                   %! harmony.begin_quarter_notes()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)
    \revert Stem.direction                                                     %! baca.stem_down:OverrideCommand(2)

    r2.                                                                        %! harmony.begin_quarter_notes()

    % [L Percussion_I_Music_Voice measure 111 / measure 13]                    %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #down                                           %! baca.stem_down:OverrideCommand(1)
    b4 * 3/4                                                                   %! harmony.begin_quarter_notes()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    b4 * 1/4                                                                   %! harmony.begin_quarter_notes()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)
    \revert Stem.direction                                                     %! baca.stem_down:OverrideCommand(2)

    r2                                                                         %! harmony.begin_quarter_notes()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_I_Music_Voice measure 112 / measure 14]            %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_I_Rest_Voice measure 112 / measure 14]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Percussion_I_Music_Voice measure 113 / measure 15]                    %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #down                                           %! baca.stem_down:OverrideCommand(1)
    b4 * 3/4                                                                   %! harmony.begin_quarter_notes()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)

    \baca-invisible-music                                                      %! baca.invisible_music:IndicatorCommand
    b4 * 1/4                                                                   %! harmony.begin_quarter_notes()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(2)
    \revert Stem.direction                                                     %! baca.stem_down:OverrideCommand(2)

    r2.                                                                        %! harmony.begin_quarter_notes()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Music_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_I_Music_Voice measure 114 / measure 16]            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Rest_Voice"                             %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_I_Rest_Voice measure 114 / measure 16]             %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


L_Percussion_I_Music_Staff = <<                                                %! abjad.Path.extern

    \context Voice = "Percussion_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__
    \L_Percussion_I_Music_Voice                                                %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


L_Percussion_II_Music_Voice = {                                                %! abjad.Path.extern

    % [L Percussion_II_Music_Voice measure 99 / measure 1]                     %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 1                           %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-perc-ii-markup                        %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \once \override Stem.direction = #down                                     %! baca.stem_down:OverrideCommand(1)
    \clef "percussion"                                                         %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    c'2                                                                        %! harmony.durata()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! REAPPLIED_DYNAMIC:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "[“Perc. II”]"                          %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Percussion”)"                        %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding #5.5                                                %! baca.markup:IndicatorCommand
    ^ \baca-tam-tam-markup                                                     %! baca.markup:IndicatorCommand
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    r4                                                                         %! harmony.durata()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_II_Music_Voice measure 100 / measure 2]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
            \once \override Staff.StaffSymbol.line-count = 3                   %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
            \startStaff                                                        %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_II_Rest_Voice measure 100 / measure 2]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Percussion_II_Music_Voice measure 101 / measure 3]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca.staff_lines:IndicatorCommand
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    r2.                                                                        %! harmony.durata()

    % [L Percussion_II_Music_Voice measure 102 / measure 4]                    %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #down                                           %! baca.stem_down:OverrideCommand(1)
    \override LaissezVibrerTie.direction = #up                                 %! baca.laissez_vibrer_tie_up:OverrideCommand(1)
    c'1                                                                        %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand
    - \tweak staff-padding #5.5                                                %! baca.markup:IndicatorCommand
    ^ \baca-tam-tam-markup                                                     %! baca.markup:IndicatorCommand

    r4                                                                         %! harmony.durata()

    % [L Percussion_II_Music_Voice measure 103 / measure 5]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.durata()

    % [L Percussion_II_Music_Voice measure 104 / measure 6]                    %! baca.SegmentMaker._comment_measure_numbers()
    c'1                                                                        %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    r4                                                                         %! harmony.durata()

    % [L Percussion_II_Music_Voice measure 105 / measure 7]                    %! baca.SegmentMaker._comment_measure_numbers()
    r2.                                                                        %! harmony.durata()

    % [L Percussion_II_Music_Voice measure 106 / measure 8]                    %! baca.SegmentMaker._comment_measure_numbers()
    c'1                                                                        %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand
    \revert Stem.direction                                                     %! baca.stem_down:OverrideCommand(2)
    \revert LaissezVibrerTie.direction                                         %! baca.laissez_vibrer_tie_up:OverrideCommand(2)

    r4                                                                         %! harmony.durata()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_II_Music_Voice measure 107 / measure 9]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_II_Rest_Voice measure 107 / measure 9]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Percussion_II_Music_Voice measure 108 / measure 10]                   %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 1                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [L Percussion_II_Music_Voice measure 109 / measure 11]                   %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #up                                             %! baca.stem_up:OverrideCommand(1)
    c'8                                                                        %! harmony.durata()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.dynamic:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand
    ^ \baca-brake-drum-markup                                                  %! baca.markup:IndicatorCommand

    r8                                                                         %! harmony.durata()

    c'8                                                                        %! harmony.durata()
    - \accent                                                                  %! baca.accent:IndicatorCommand

    r8                                                                         %! harmony.durata()

    c'8                                                                        %! harmony.durata()
    - \accent                                                                  %! baca.accent:IndicatorCommand

    r8                                                                         %! harmony.durata()

    % [L Percussion_II_Music_Voice measure 110 / measure 12]                   %! baca.SegmentMaker._comment_measure_numbers()
    c'8                                                                        %! harmony.durata()
    - \accent                                                                  %! baca.accent:IndicatorCommand

    r8                                                                         %! harmony.durata()

    c'8                                                                        %! harmony.durata()
    - \accent                                                                  %! baca.accent:IndicatorCommand

    r8                                                                         %! harmony.durata()

    c'8                                                                        %! harmony.durata()
    - \accent                                                                  %! baca.accent:IndicatorCommand

    r8                                                                         %! harmony.durata()

    c'8                                                                        %! harmony.durata()
    - \accent                                                                  %! baca.accent:IndicatorCommand
    \revert Stem.direction                                                     %! baca.stem_up:OverrideCommand(2)

    r8                                                                         %! harmony.durata()

    % [L Percussion_II_Music_Voice measure 111 / measure 13]                   %! baca.SegmentMaker._comment_measure_numbers()
    \override Stem.direction = #down                                           %! baca.stem_down:OverrideCommand(1)
    d'4
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.dynamic:IndicatorCommand
    ^ \baca-slate-scrape-markup                                                %! baca.markup:IndicatorCommand

    d'8
    \repeatTie

    r8

    r4

    % [L Percussion_II_Music_Voice measure 112 / measure 14]                   %! baca.SegmentMaker._comment_measure_numbers()
    d'4

    d'8
    \repeatTie

    r8

    r4

    % [L Percussion_II_Music_Voice measure 113 / measure 15]                   %! baca.SegmentMaker._comment_measure_numbers()
    d'4

    d'8
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down:OverrideCommand(2)

    r8

    r2

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Music_Voice"                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_II_Music_Voice measure 114 / measure 16]           %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Rest_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Percussion_II_Rest_Voice measure 114 / measure 16]            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


L_Percussion_II_Music_Staff = <<                                               %! abjad.Path.extern

    \context Voice = "Percussion_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__
    \L_Percussion_II_Music_Voice                                               %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


L_Harp_Music_Voice = {                                                         %! abjad.Path.extern

    % [L Harp_Music_Voice measure 99 / measure 1]                              %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:_set_status_tag:REAPPLIED_BAR_EXTENT:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.line-count = 5                           %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \set Staff.instrumentName = \harmony-hp-markup                             %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
    \clef "bass"                                                               %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'green4)          %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)             %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'2                                                                        %! harmony.durata()
    - \tweak color #(x11-color 'green4)                                        %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! REAPPLIED_DYNAMIC:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    ^ \baca-reapplied-indicator-markup "(“Harp”)"                              %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "[“Hp.”]"                               %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding #5.5                                                %! baca.markup:IndicatorCommand
    ^ \baca-sons-xylophoniques-markup                                          %! baca.markup:IndicatorCommand
    \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)             %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    r4                                                                         %! harmony.durata()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Harp_Music_Voice measure 100 / measure 2]                     %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 5/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Harp_Rest_Voice measure 100 / measure 2]                      %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 5/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Harp_Music_Voice measure 101 / measure 3]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'2.                                                                       %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    % [L Harp_Music_Voice measure 102 / measure 4]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'1                                                                        %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    r4                                                                         %! harmony.durata()

    % [L Harp_Music_Voice measure 103 / measure 5]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'2.                                                                       %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    % [L Harp_Music_Voice measure 104 / measure 6]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'1                                                                        %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    r4                                                                         %! harmony.durata()

    % [L Harp_Music_Voice measure 105 / measure 7]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'2.                                                                       %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    % [L Harp_Music_Voice measure 106 / measure 8]                             %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'1                                                                        %! harmony.durata()
    - \laissezVibrer                                                           %! baca.laissez_vibrer:IndicatorCommand

    r4                                                                         %! harmony.durata()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Harp_Music_Voice measure 107 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Harp_Rest_Voice measure 107 / measure 9]                      %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Harp_Music_Voice measure 108 / measure 10]                            %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [L Harp_Music_Voice measure 109 / measure 11]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.durata()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.dynamic:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand
    ^ \baca-soundboard-pizz-markup                                             %! baca.markup:IndicatorCommand

    r8                                                                         %! harmony.durata()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.durata()
    - \accent                                                                  %! baca.accent:IndicatorCommand

    r8                                                                         %! harmony.durata()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.durata()
    - \accent                                                                  %! baca.accent:IndicatorCommand

    r8                                                                         %! harmony.durata()

    % [L Harp_Music_Voice measure 110 / measure 12]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.durata()
    - \accent                                                                  %! baca.accent:IndicatorCommand

    r8                                                                         %! harmony.durata()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.durata()
    - \accent                                                                  %! baca.accent:IndicatorCommand

    r8                                                                         %! harmony.durata()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.durata()
    - \accent                                                                  %! baca.accent:IndicatorCommand

    r8                                                                         %! harmony.durata()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.durata()
    - \accent                                                                  %! baca.accent:IndicatorCommand

    r8                                                                         %! harmony.durata()

    % [L Harp_Music_Voice measure 111 / measure 13]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.dynamic:IndicatorCommand
    ^ \baca-whisk-markup                                                       %! baca.markup:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8
    \repeatTie

    r8

    r4

    % [L Harp_Music_Voice measure 112 / measure 14]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8
    \repeatTie

    r8

    r4

    % [L Harp_Music_Voice measure 113 / measure 15]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8
    \repeatTie

    r8

    r2

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Music_Voice"                                    %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Harp_Music_Voice measure 114 / measure 16]                    %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Rest_Voice"                                     %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Harp_Rest_Voice measure 114 / measure 16]                     %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


L_Harp_Music_Staff = <<                                                        %! abjad.Path.extern

    \context Voice = "Harp_Music_Voice"                                        %! harmony.ScoreTemplate.__call__
    \L_Harp_Music_Voice                                                        %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


L_Viola_Music_Voice = {                                                        %! abjad.Path.extern

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Viola_Music_Voice measure 99 / measure 1]                     %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-va-markup                %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \override Staff.BarLine.bar-extent = #'(-2 . 2)                    %! EXPLICIT_BAR_EXTENT:_set_status_tag:REAPPLIED_BAR_EXTENT:baca.SegmentMaker._reapply_persistent_indicators(3)
            \stopStaff                                                         %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.line-count = 5                   %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \startStaff                                                        %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \set Staff.instrumentName = \harmony-va-markup                     %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "alto"                                                       %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
        %@% \override Staff.Clef.color = ##f                                   %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
            \set Staff.forceClef = ##t                                         %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente")) %! REAPPLIED_DYNAMIC:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            ^ \baca-reapplied-indicator-markup "[“Va.”]"                       %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Viola”)"                     %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \set Staff.shortInstrumentName = \harmony-va-markup                %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Viola_Rest_Voice measure 99 / measure 1]                      %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Viola_Music_Voice measure 100 / measure 2]                            %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [L Viola_Music_Voice measure 101 / measure 3]                            %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.rimbalzandi()

    r4                                                                         %! harmony.rimbalzandi()

    r4                                                                         %! harmony.rimbalzandi()

    % [L Viola_Music_Voice measure 102 / measure 4]                            %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.rimbalzandi()

    r4                                                                         %! harmony.rimbalzandi()

    r4                                                                         %! harmony.rimbalzandi()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.rimbalzandi()
    - \baca-staccati #3                                                        %! baca.triple_staccato:IndicatorCommand

    r4                                                                         %! harmony.rimbalzandi()

    % [L Viola_Music_Voice measure 103 / measure 5]                            %! baca.SegmentMaker._comment_measure_numbers()
    r4                                                                         %! harmony.rimbalzandi()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.rimbalzandi()
    - \baca-staccati #3                                                        %! baca.triple_staccato:IndicatorCommand

    r4                                                                         %! harmony.rimbalzandi()

    % [L Viola_Music_Voice measure 104 / measure 6]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.rimbalzandi()
    - \baca-staccati #3                                                        %! baca.triple_staccato:IndicatorCommand

    r4                                                                         %! harmony.rimbalzandi()

    r4                                                                         %! harmony.rimbalzandi()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.rimbalzandi()
    - \baca-staccati #3                                                        %! baca.triple_staccato:IndicatorCommand

    r4                                                                         %! harmony.rimbalzandi()

    % [L Viola_Music_Voice measure 105 / measure 7]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.rimbalzandi()
    - \baca-staccati #3                                                        %! baca.triple_staccato:IndicatorCommand

    r4                                                                         %! harmony.rimbalzandi()

    r4                                                                         %! harmony.rimbalzandi()

    % [L Viola_Music_Voice measure 106 / measure 8]                            %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.rimbalzandi()
    - \baca-staccati #3                                                        %! baca.triple_staccato:IndicatorCommand

    r4                                                                         %! harmony.rimbalzandi()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.rimbalzandi()
    - \baca-staccati #3                                                        %! baca.triple_staccato:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.rimbalzandi()
    - \baca-staccati #3                                                        %! baca.triple_staccato:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.rimbalzandi()
    - \baca-staccati #3                                                        %! baca.triple_staccato:IndicatorCommand

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Viola_Music_Voice measure 107 / measure 9]                    %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Viola_Rest_Voice measure 107 / measure 9]                     %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Viola_Music_Voice measure 108 / measure 10]                           %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [L Viola_Music_Voice measure 109 / measure 11]                           %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.dynamic:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    % [L Viola_Music_Voice measure 110 / measure 12]                           %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    % [L Viola_Music_Voice measure 111 / measure 13]                           %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'2                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8.                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'16                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand
    ~
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    % [L Viola_Music_Voice measure 112 / measure 14]                           %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'16                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8.                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    \repeatTie

    % [L Viola_Music_Voice measure 113 / measure 15]                           %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'16                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8.                                                                       %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'8                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    \repeatTie

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Music_Voice"                                   %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Viola_Music_Voice measure 114 / measure 16]                   %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Rest_Voice"                                    %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Viola_Rest_Voice measure 114 / measure 16]                    %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


L_Viola_Music_Staff = <<                                                       %! abjad.Path.extern

    \context Voice = "Viola_Music_Voice"                                       %! harmony.ScoreTemplate.__call__
    \L_Viola_Music_Voice                                                       %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


L_Cello_I_Music_Voice = {                                                      %! abjad.Path.extern

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Cello_I_Music_Voice measure 99 / measure 1]                   %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-vc-i-markup              %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \stopStaff                                                         %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.line-count = 5                   %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \startStaff                                                        %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \set Staff.instrumentName = \harmony-vc-i-markup                   %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "bass"                                                       %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
        %@% \override Staff.Clef.color = ##f                                   %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
            \set Staff.forceClef = ##t                                         %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente")) %! REAPPLIED_DYNAMIC:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            ^ \baca-reapplied-indicator-markup "[“Vc. I”]"                     %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Cello”)"                     %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \set Staff.shortInstrumentName = \harmony-vc-i-markup              %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Cello_I_Rest_Voice measure 99 / measure 1]                    %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Cello_I_Music_Voice measure 100 / measure 2]                          %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.rimbalzandi()
    \times 8/9 {                                                               %! harmony.rimbalzandi()

        % [L Cello_I_Music_Voice measure 101 / measure 3]                      %! baca.SegmentMaker._comment_measure_numbers()
        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

    }                                                                          %! harmony.rimbalzandi()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.rimbalzandi()
    \times 8/9 {                                                               %! harmony.rimbalzandi()

        % [L Cello_I_Music_Voice measure 103 / measure 5]                      %! baca.SegmentMaker._comment_measure_numbers()
        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

    }                                                                          %! harmony.rimbalzandi()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.rimbalzandi()
    \times 8/9 {                                                               %! harmony.rimbalzandi()

        % [L Cello_I_Music_Voice measure 105 / measure 7]                      %! baca.SegmentMaker._comment_measure_numbers()
        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

    }                                                                          %! harmony.rimbalzandi()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Cello_I_Music_Voice measure 107 / measure 9]                  %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Cello_I_Rest_Voice measure 107 / measure 9]                   %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Cello_I_Music_Voice measure 108 / measure 10]                         %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [L Cello_I_Music_Voice measure 109 / measure 11]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.dynamic:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    % [L Cello_I_Music_Voice measure 110 / measure 12]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    % [L Cello_I_Music_Voice measure 111 / measure 13]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'2                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        % [L Cello_I_Music_Voice measure 112 / measure 14]                     %! baca.SegmentMaker._comment_measure_numbers()
        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand
        ~

    }                                                                          %! harmony.sixteenths()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    % [L Cello_I_Music_Voice measure 113 / measure 15]                         %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    \repeatTie

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand
        ~

    }                                                                          %! harmony.sixteenths()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Music_Voice"                                 %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Cello_I_Music_Voice measure 114 / measure 16]                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Rest_Voice"                                  %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Cello_I_Rest_Voice measure 114 / measure 16]                  %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


L_Cello_I_Music_Staff = <<                                                     %! abjad.Path.extern

    \context Voice = "Cello_I_Music_Voice"                                     %! harmony.ScoreTemplate.__call__
    \L_Cello_I_Music_Voice                                                     %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


L_Cello_II_Music_Voice = {                                                     %! abjad.Path.extern

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Cello_II_Music_Voice measure 99 / measure 1]                  %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-vc-ii-markup             %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \stopStaff                                                         %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.line-count = 5                   %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \startStaff                                                        %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \set Staff.instrumentName = \harmony-vc-ii-markup                  %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "bass"                                                       %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
        %@% \override Staff.Clef.color = ##f                                   %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
            \set Staff.forceClef = ##t                                         %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c'1 * 3/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente")) %! REAPPLIED_DYNAMIC:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            ^ \baca-reapplied-indicator-markup "[“Vc. II”]"                    %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Cello”)"                     %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \set Staff.shortInstrumentName = \harmony-vc-ii-markup             %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Cello_II_Rest_Voice measure 99 / measure 1]                   %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Cello_II_Music_Voice measure 100 / measure 2]                         %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.rimbalzandi()
    \times 8/10 {                                                              %! harmony.rimbalzandi()

        % [L Cello_II_Music_Voice measure 101 / measure 3]                     %! baca.SegmentMaker._comment_measure_numbers()
        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

    }                                                                          %! harmony.rimbalzandi()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.rimbalzandi()
    \times 8/10 {                                                              %! harmony.rimbalzandi()

        % [L Cello_II_Music_Voice measure 103 / measure 5]                     %! baca.SegmentMaker._comment_measure_numbers()
        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

    }                                                                          %! harmony.rimbalzandi()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.rimbalzandi()
    \times 8/10 {                                                              %! harmony.rimbalzandi()

        % [L Cello_II_Music_Voice measure 105 / measure 7]                     %! baca.SegmentMaker._comment_measure_numbers()
        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

    }                                                                          %! harmony.rimbalzandi()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Cello_II_Music_Voice measure 107 / measure 9]                 %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Cello_II_Rest_Voice measure 107 / measure 9]                  %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Cello_II_Music_Voice measure 108 / measure 10]                        %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [L Cello_II_Music_Voice measure 109 / measure 11]                        %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.dynamic:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    % [L Cello_II_Music_Voice measure 110 / measure 12]                        %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    % [L Cello_II_Music_Voice measure 111 / measure 13]                        %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand
        ~

    }                                                                          %! harmony.sixteenths()

    % [L Cello_II_Music_Voice measure 112 / measure 14]                        %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'2                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'4                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        % [L Cello_II_Music_Voice measure 113 / measure 15]                    %! baca.SegmentMaker._comment_measure_numbers()
        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/6 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'4                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        c'8                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand
        ~

    }                                                                          %! harmony.sixteenths()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    c'2                                                                        %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Music_Voice"                                %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Cello_II_Music_Voice measure 114 / measure 16]                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 1/4                                                          %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Rest_Voice"                                 %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Cello_II_Rest_Voice measure 114 / measure 16]                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


L_Cello_II_Music_Staff = <<                                                    %! abjad.Path.extern

    \context Voice = "Cello_II_Music_Voice"                                    %! harmony.ScoreTemplate.__call__
    \L_Cello_II_Music_Voice                                                    %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


L_Contrabass_I_Music_Voice = {                                                 %! abjad.Path.extern

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Contrabass_I_Music_Voice measure 99 / measure 1]              %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-cb-i-markup              %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \stopStaff                                                         %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.line-count = 5                   %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \startStaff                                                        %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \set Staff.instrumentName = \harmony-cb-i-markup                   %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "bass"                                                       %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
        %@% \override Staff.Clef.color = ##f                                   %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
            \set Staff.forceClef = ##t                                         %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c''1 * 3/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente")) %! REAPPLIED_DYNAMIC:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            ^ \baca-reapplied-indicator-markup "[“Cb. I”]"                     %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \set Staff.shortInstrumentName = \harmony-cb-i-markup              %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Contrabass_I_Rest_Voice measure 99 / measure 1]               %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Contrabass_I_Music_Voice measure 100 / measure 2]                     %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.rimbalzandi()
    \times 8/11 {                                                              %! harmony.rimbalzandi()

        % [L Contrabass_I_Music_Voice measure 101 / measure 3]                 %! baca.SegmentMaker._comment_measure_numbers()
        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

    }                                                                          %! harmony.rimbalzandi()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.rimbalzandi()
    \times 8/11 {                                                              %! harmony.rimbalzandi()

        % [L Contrabass_I_Music_Voice measure 103 / measure 5]                 %! baca.SegmentMaker._comment_measure_numbers()
        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

    }                                                                          %! harmony.rimbalzandi()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.rimbalzandi()
    \times 8/11 {                                                              %! harmony.rimbalzandi()

        % [L Contrabass_I_Music_Voice measure 105 / measure 7]                 %! baca.SegmentMaker._comment_measure_numbers()
        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

    }                                                                          %! harmony.rimbalzandi()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Contrabass_I_Music_Voice measure 107 / measure 9]             %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 1/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Contrabass_I_Rest_Voice measure 107 / measure 9]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Contrabass_I_Music_Voice measure 108 / measure 10]                    %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [L Contrabass_I_Music_Voice measure 109 / measure 11]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.dynamic:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    % [L Contrabass_I_Music_Voice measure 110 / measure 12]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    % [L Contrabass_I_Music_Voice measure 111 / measure 13]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d2                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d8                                                                     %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie
        [                                                                      %! rmakers.RewriteMeterCommand.__call__

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d8.                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand
        ]                                                                      %! rmakers.RewriteMeterCommand.__call__

    }                                                                          %! harmony.sixteenths()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        % [L Contrabass_I_Music_Voice measure 112 / measure 14]                %! baca.SegmentMaker._comment_measure_numbers()
        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d16                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand
        ~

    }                                                                          %! harmony.sixteenths()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d8                                                                     %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie
        [                                                                      %! rmakers.RewriteMeterCommand.__call__

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d8.                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand
        ]                                                                      %! rmakers.RewriteMeterCommand.__call__

    }                                                                          %! harmony.sixteenths()

    % [L Contrabass_I_Music_Voice measure 113 / measure 15]                    %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    \repeatTie

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d16                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand
        ~

    }                                                                          %! harmony.sixteenths()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d16                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand

    }                                                                          %! harmony.sixteenths()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Music_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Contrabass_I_Music_Voice measure 114 / measure 16]            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 1/4                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Rest_Voice"                             %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Contrabass_I_Rest_Voice measure 114 / measure 16]             %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


L_Contrabass_I_Music_Staff = <<                                                %! abjad.Path.extern

    \context Voice = "Contrabass_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__
    \L_Contrabass_I_Music_Voice                                                %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern


L_Contrabass_II_Music_Voice = {                                                %! abjad.Path.extern

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Contrabass_II_Music_Voice measure 99 / measure 1]             %! baca.SegmentMaker._comment_measure_numbers()
            \set Staff.shortInstrumentName = \harmony-cb-ii-markup             %! REAPPLIED_MARGIN_MARKUP:_set_status_tag:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \override Staff.BarLine.bar-extent = #'(-2 . 2)                    %! EXPLICIT_BAR_EXTENT:_set_status_tag:REAPPLIED_BAR_EXTENT:baca.SegmentMaker._reapply_persistent_indicators(3)
            \stopStaff                                                         %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.line-count = 5                   %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \startStaff                                                        %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \set Staff.instrumentName = \harmony-cb-ii-markup                  %! baca.SegmentMaker._clone_segment_initial_short_instrument_name()
            \clef "bass"                                                       %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.InstrumentName.color = #(x11-color 'green4)  %! REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \once \override Staff.Clef.color = #(x11-color 'green4)            %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
        %@% \override Staff.Clef.color = ##f                                   %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
            \set Staff.forceClef = ##t                                         %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)     %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c''1 * 3/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()
            - \tweak color #(x11-color 'green4)                                %! REAPPLIED_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente")) %! REAPPLIED_DYNAMIC:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
            ^ \baca-reapplied-indicator-markup "[“Cb. II”]"                    %! REAPPLIED_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            ^ \baca-reapplied-indicator-markup "(“Contrabass”)"                %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
            \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)     %! REDRAWN_REAPPLIED_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
            \set Staff.shortInstrumentName = \harmony-cb-ii-markup             %! REDRAWN_REAPPLIED_MARGIN_MARKUP:_set_status_tag:baca.SegmentMaker._treat_persistent_wrapper(3):-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
            \override Staff.Clef.color = #(x11-color 'OliveDrab)               %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Contrabass_II_Rest_Voice measure 99 / measure 1]              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Contrabass_II_Music_Voice measure 100 / measure 2]                    %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_measure_silences()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.rimbalzandi()
    \times 8/12 {                                                              %! harmony.rimbalzandi()

        % [L Contrabass_II_Music_Voice measure 101 / measure 3]                %! baca.SegmentMaker._comment_measure_numbers()
        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

    }                                                                          %! harmony.rimbalzandi()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.rimbalzandi()
    \times 8/12 {                                                              %! harmony.rimbalzandi()

        % [L Contrabass_II_Music_Voice measure 103 / measure 5]                %! baca.SegmentMaker._comment_measure_numbers()
        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

    }                                                                          %! harmony.rimbalzandi()

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.rimbalzandi()
    \times 8/12 {                                                              %! harmony.rimbalzandi()

        % [L Contrabass_II_Music_Voice measure 105 / measure 7]                %! baca.SegmentMaker._comment_measure_numbers()
        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        r4                                                                     %! harmony.rimbalzandi()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d4                                                                     %! harmony.rimbalzandi()
        - \baca-staccati #3                                                    %! baca.triple_staccato:IndicatorCommand

    }                                                                          %! harmony.rimbalzandi()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Contrabass_II_Music_Voice measure 107 / measure 9]            %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! baca.SegmentMaker._style_fermata_measures(1)
            \once \override Staff.StaffSymbol.line-count = 0                   %! baca.SegmentMaker._style_fermata_measures(1)
            \startStaff                                                        %! baca.SegmentMaker._style_fermata_measures(1)
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 1/4                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()
            \override Staff.BarLine.bar-extent = #'(0 . 2)                     %! baca.SegmentMaker._style_fermata_measures(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Contrabass_II_Rest_Voice measure 107 / measure 9]             %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 1/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    % [L Contrabass_II_Music_Voice measure 108 / measure 10]                   %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! baca.SegmentMaker._style_fermata_measures(2)
    \once \override Staff.StaffSymbol.line-count = 5                           %! baca.SegmentMaker._style_fermata_measures(2)
    \startStaff                                                                %! baca.SegmentMaker._style_fermata_measures(2)
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! baca.SegmentMaker._style_fermata_measures(2.5)
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_measure_silences()

    % [L Contrabass_II_Music_Voice measure 109 / measure 11]                   %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.dynamic:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    % [L Contrabass_II_Music_Voice measure 110 / measure 12]                   %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.durata()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    % [L Contrabass_II_Music_Voice measure 111 / measure 13]                   %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d8.                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie
        [                                                                      %! rmakers.RewriteMeterCommand.__call__

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d8                                                                     %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand
        ~
        ]                                                                      %! rmakers.RewriteMeterCommand.__call__

    }                                                                          %! harmony.sixteenths()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand

    % [L Contrabass_II_Music_Voice measure 112 / measure 14]                   %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d2                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d8                                                                     %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie
        [                                                                      %! rmakers.RewriteMeterCommand.__call__

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d8.                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand
        ]                                                                      %! rmakers.RewriteMeterCommand.__call__

    }                                                                          %! harmony.sixteenths()

    % [L Contrabass_II_Music_Voice measure 113 / measure 15]                   %! baca.SegmentMaker._comment_measure_numbers()
    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    \repeatTie

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \accent                                                                  %! baca.accent:IndicatorCommand

    \tweak text #tuplet-number::calc-fraction-text                             %! harmony.sixteenths()
    \times 4/5 {                                                               %! harmony.sixteenths()

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d8                                                                     %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        \repeatTie
        [                                                                      %! rmakers.RewriteMeterCommand.__call__

        \baca-unpitched-music-warning                                          %! baca.SegmentMaker._color_unpitched_notes()
        d8.                                                                    %! harmony.sixteenths()
        :32                                                                    %! baca.stem_tremolo:IndicatorCommand
        - \accent                                                              %! baca.accent:IndicatorCommand
        ]                                                                      %! rmakers.RewriteMeterCommand.__call__

    }                                                                          %! harmony.sixteenths()

    \baca-unpitched-music-warning                                              %! baca.SegmentMaker._color_unpitched_notes()
    d4                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    \repeatTie

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Music_Voice"                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Contrabass_II_Music_Voice measure 114 / measure 16]           %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 1/4                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Rest_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [L Contrabass_II_Rest_Voice measure 114 / measure 16]            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern


L_Contrabass_II_Music_Staff = <<                                               %! abjad.Path.extern

    \context Voice = "Contrabass_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__
    \L_Contrabass_II_Music_Voice                                               %! abjad.Path.extern

>>                                                                             %! abjad.Path.extern
