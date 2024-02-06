number.12.Skips = {

    % [Skips measure 1]
      %! RED_START_BAR
    %@% \baca-thick-red-bar-line
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
      %! RED_START_BAR
    %@% \tweak break-visibility ##(#t #t #f)
      %! RED_START_BAR
    %@% \tweak color #red
      %! RED_START_BAR
    %@% \mark \markup \with-dimensions-from \null "12"
    s1 * 3/4
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #2 #3 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #2 #3 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #2 #3 #2 #0 #'(1 . 1) #blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "96"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[5'56'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "1"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "99"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-left-only "[L.1]"
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 2]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    s1 * 5/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! STAGE_NUMBER
    \bacaStopTextSpanSNM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(1 . 1) #blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "144"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[5'57'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "2"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "100"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-colored-left-only "[>M.1]" #darkgreen
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 3]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! STAGE_NUMBER
    \bacaStopTextSpanSNM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1) #blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "96"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[5'59'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "3"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "101"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-left-only "[L.2-3]"
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 4]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    s1 * 5/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[6'01'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "4"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "102"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 5]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[6'04'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "5"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "103"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 6]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    s1 * 5/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[6'06'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "6"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "104"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 7]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[6'09'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "7"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "105"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 8]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    s1 * 5/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[6'11'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "8"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "106"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 9]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/4
    s1 * 1/4
      %! -PARTS
    - \tweak extra-offset #'(4 . -30)
      %! -PARTS
    ^ \harmony-text-eleven
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only-fermata "2''"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "9"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "107"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 10]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 6/4
    s1 * 6/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! STAGE_NUMBER
    \bacaStopTextSpanSNM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #1 #0 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #1 #0 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #0 #2 #0 #'(1 . 1) #blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "48"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[6'16'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "10"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "108"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-colored-left-only "[<J.6]" #darkgreen
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 11]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
    \bar ".|:"
      %! MEASURE_109
      %! NOT_MOL
%%% \once \override Score.BarLine.X-extent = #'(0 . 2)
      %! MEASURE_109
      %! ONLY_MOL
    \once \override Score.BarLine.X-extent = #'(0 . 3)
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! STAGE_NUMBER
    \bacaStopTextSpanSNM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"96" #3 #0 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"96" #3 #0 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #3 #0 #2 #0 #'(1 . 1) #blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "96"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[6'24'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "11"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "109"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-left-only "[L.4-5]"
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 12]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[6'26'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "12"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "110"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 13]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
    \bar ":.|.:"
      %! MEASURE_111
      %! NOT_MOL
%%% \once \override Score.BarLine.X-extent = #'(0 . 3)
      %! MEASURE_111
      %! ONLY_MOL
    \once \override Score.BarLine.X-extent = #'(0 . 4)
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! STAGE_NUMBER
    \bacaStopTextSpanSNM
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[6'28'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "13"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "111"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-left-only "[L.6-8]"
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 14]
    s1 * 3/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[6'30'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "14"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "112"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 15]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
    \bar ":|."
      %! MEASURE_113
      %! ONLY_MOL
    \once \override Score.BarLine.X-extent = #'(0 . 1.5)
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-both "[6'32'']" "[6'35'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "15"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "113"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

      %! ANCHOR_SKIP
    % [anchor skip]
      %! ANCHOR_SKIP
    \baca-time-signature-transparent
      %! ANCHOR_SKIP
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/4
      %! ANCHOR_SKIP
    s1 * 1/4
      %! ANCHOR_SKIP
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! ANCHOR_SKIP
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! ANCHOR_SKIP
      %! EOS_STOP_MM_SPANNER
    \bacaStopTextSpanMM
      %! ANCHOR_SKIP
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! ANCHOR_SKIP
      %! STAGE_NUMBER
    \bacaStopTextSpanSNM
      %! ANCHOR_SKIP
    \once \override Score.BarLine.transparent = ##t
      %! ANCHOR_SKIP
    \once \override Score.SpanBar.transparent = ##t

}


number.12.Rests = {

    % [Rests measure 1]
    R1 * 3/4

    % [Rests measure 2]
    R1 * 5/4

    % [Rests measure 3]
    R1 * 3/4

    % [Rests measure 4]
    R1 * 5/4

    % [Rests measure 5]
    R1 * 3/4

    % [Rests measure 6]
    R1 * 5/4

    % [Rests measure 7]
    R1 * 3/4

    % [Rests measure 8]
    R1 * 5/4

    % [Rests measure 9]
    \baca-fermata-measure
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    R1 * 1/4
    ^ \baca-fermata-markup
      %! FERMATA_MEASURE
      %! MEASURE_107
    \once \override Score.BarLine.transparent = ##t
      %! FERMATA_MEASURE
      %! MEASURE_107
    \once \override Score.SpanBar.transparent = ##t

    % [Rests measure 10]
    R1 * 6/4

    % [Rests measure 11]
    R1 * 3/4

    % [Rests measure 12]
    R1 * 4/4

    % [Rests measure 13]
    R1 * 3/4

    % [Rests measure 14]
    R1 * 3/4

    % [Rests measure 15]
    R1 * 4/4

}


number.12.BassFlute.Music.item.1 = {

    \voiceTwo
    a'8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_START
    - \baca-dashed-line-with-up-hook
      %! SPANNER_START
    - \baca-text-spanner-left-markup \harmony-a-sounds-ottava-higher-markup
      %! SPANNER_START
    - \tweak bound-details.right.padding 5
      %! SPANNER_START
    - \tweak direction #down
      %! SPANNER_START
    - \tweak staff-padding 8
      %! SPANNER_START
    \startTextSpan
    - \tweak stencil ##f
    ~

    a'1
    - \tweak stencil ##f
    ~
    \repeatTie

    a'4
    \repeatTie

}


number.12.BassFlute.Music = {

    % [BassFlute.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "treble"
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 4
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-bfl-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-bfl-markup
      %! REAPPLIED_STAFF_LINES
    \stopStaff
      %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
    \startStaff
    <ef'! ef''! bf''!>2. * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“BassFlute”)"
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "MM"
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 8
      %! LEFT_BROKEN
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanMetricModulation
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-bfl-markup %@%

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <ef'! ef''! bf''!>2. * 1/2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \mf
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    % [BassFlute.Music measure 2]
    b''4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \!
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    b''4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \f
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    - \tweak stencil ##f
    ~

    b''4
    :32
    \repeatTie

    r2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \!

    % [BassFlute.Music measure 3]
    <ef'! ef''! bf''!>2. * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <ef'! ef''! bf''!>2. * 1/2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \mp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    <<

        \context Voice = "BassFlute.Music"
        {

            % [BassFlute.Music measure 4]
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
            \abjad-invisible-music-coloring
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
            b'1 * 5/4
              %! EXPLICIT_DYNAMIC_COLOR
              %! EXPLICIT_DYNAMIC
              %! SPANNER_STOP
            - \tweak color #blue
              %! EXPLICIT_DYNAMIC
              %! SPANNER_STOP
            \!
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"5" #"4"

        }

        \context Voice = "BassFlute.Rests"
        {

            % [BassFlute.Rests measure 4]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 5/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"5" #"4"

        }

    >>

    % [BassFlute.Music measure 5]
    <ef'! ef''! bf''!>2. * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <ef'! ef''! bf''!>2. * 1/2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \p
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    <<

        \context Voice = "BassFlute.Music"
        {

            % [BassFlute.Music measure 6]
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
            \abjad-invisible-music-coloring
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
            b'1 * 5/4
              %! EXPLICIT_DYNAMIC_COLOR
              %! EXPLICIT_DYNAMIC
              %! SPANNER_STOP
            - \tweak color #blue
              %! EXPLICIT_DYNAMIC
              %! SPANNER_STOP
            \!
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"5" #"4"

        }

        \context Voice = "BassFlute.Rests"
        {

            % [BassFlute.Rests measure 6]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 5/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"5" #"4"

        }

    >>

    % [BassFlute.Music measure 7]
    <ef'! ef''! bf''!>2. * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <ef'! ef''! bf''!>2. * 1/2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \pp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    <<

        \context Voice = "BassFlute.Music"
        {

            % [BassFlute.Music measure 8]
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
            \abjad-invisible-music-coloring
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
            b'1 * 5/4
              %! EXPLICIT_DYNAMIC_COLOR
              %! EXPLICIT_DYNAMIC
              %! SPANNER_STOP
            - \tweak color #blue
              %! EXPLICIT_DYNAMIC
              %! SPANNER_STOP
            \!
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"5" #"4"

        }

        \context Voice = "BassFlute.Rests"
        {

            % [BassFlute.Rests measure 8]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 5/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"5" #"4"

        }

    >>

    % [BassFlute.Music measure 9]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 0)

    % [BassFlute.Music measure 10]
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    r16

    <<

        \context Voice = "On_Beat_Grace_Container"
        {

            \set fontSize = #-3
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                a'
                cs'''!
            >8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            ctqs'''!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            d'''8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            dqs'''!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs'''!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            d'''8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            as''!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            b''8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            bqs''!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "BassFlute.Music"
        { \number.12.BassFlute.Music.item.1 }

    >>

    % [BassFlute.Music measure 11]
      %! ONE_VOICE_COMMAND
    \oneVoice
    dtqf'''!4
    - \tweak staff-padding 8
    ^ \baca-seven-e-flat
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \startTextSpan
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    dtqf'''!2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \baca-effort-f
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \startTextSpan
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    \breathe

    % [BassFlute.Music measure 12]
    dtqf'''!4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \startTextSpan
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    dtqf'''!2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \p
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \startTextSpan
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    \breathe

    % [BassFlute.Music measure 13]
    dtqf'''!4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \startTextSpan
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<
    - \tweak stencil ##f
    ~

    dtqf'''8
    [
    \repeatTie

    dtqf'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \baca-effort-f
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \startTextSpan
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    - \tweak stencil ##f
    ~

    dtqf'''4
    \repeatTie
    \breathe

    % [BassFlute.Music measure 14]
    dtqf'''!4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \startTextSpan
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<
    - \tweak stencil ##f
    ~

    dtqf'''8
    [
    \repeatTie

    dtqf'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \p
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \startTextSpan
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    - \tweak stencil ##f
    ~

    dtqf'''4
    \repeatTie
    \breathe

    % [BassFlute.Music measure 15]
    dtqf'''!4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \startTextSpan
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<
    - \tweak stencil ##f
    ~

    dtqf'''8
    [
    \repeatTie

    dtqf'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \baca-effort-f
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \startTextSpan
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    - \tweak stencil ##f
    ~

    dtqf'''4
    - \tweak stencil ##f
    ~
    \repeatTie

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        dtqf'''8
        \repeatTie

        b''4 * 1/2
        :32
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
        \!
          %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"1" #"2"
          %! SPANNER_STOP
        \stopTextSpan
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
        - \baca-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
        - \tweak staff-padding 8
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
        \bacaStartTextSpanMetricModulation
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \<

          %! INVISIBLE_MUSIC_COMMAND
        %@% \abjad-invisible-music
          %! INVISIBLE_MUSIC_COLORING
        \abjad-invisible-music-coloring
        \once \override DynamicText.X-offset = -0.75
        b''4 * 1/2
        :32
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_STOP
        \f
          %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"1" #"2"
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \>
        \revert DynamicLineSpanner.staff-padding

    }

      %! ANCHOR_NOTE
    % [BassFlute.Music anchor note]
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COMMAND
      %! NOTE
    %@% \abjad-invisible-music
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COLORING
      %! NOTE
    \abjad-invisible-music-coloring
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
      %! ANCHOR_NOTE
    \once \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
    \stopStaff
      %! ANCHOR_NOTE
    \once \override Staff.StaffSymbol.transparent = ##t
      %! ANCHOR_NOTE
    \startStaff
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
    b'1 * 1/4
      %! EXPLICIT_DYNAMIC_COLOR
      %! ANCHOR_NOTE
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! ANCHOR_NOTE
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \!
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! ANCHOR_NOTE
      %! METRIC_MODULATION_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation

}


number.12.BassFlute.Staff = <<

    \context GlobalRests = "Rests"
    { \number.12.Rests }

    \context Voice = "BassFlute.Music"
    { \number.12.BassFlute.Music }

>>


number.12.Percussion.1.Music.item.1 = {

    \voiceTwo
    r4.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

}


number.12.Percussion.1.Music.item.2 = {

    \once \override Dots.X-extent = ##f
    \once \override Dots.extra-offset = #'(1 . 0)
    \once \override Rest.X-extent = #'(0 . 0)
    \voiceTwo
    r2..
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

}


number.12.Percussion.1.Music = {

    % [Percussion.1.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "treble"
    \once \override DynamicLineSpanner.staff-padding = 4
      %! MEASURE_99
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_99
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-perc-i-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! EXPLICIT_STAFF_LINES
    \startStaff
    ef'!2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Percussion”)"
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-i-markup %@%

    <<

        \context Voice = "On_Beat_Grace_Container"
        {

            % [Percussion.1.Music measure 2]
              %! EXPLICIT_CLEF
            \clef "percussion"
              %! MEASURE_100
              %! SHIFTED_CLEF
            \once \override Staff.Clef.X-extent = ##f
              %! EXPLICIT_CLEF_COLOR
            \once \override Staff.Clef.color = #blue
              %! MEASURE_100
              %! SHIFTED_CLEF
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
              %! EXPLICIT_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #blue
              %! EXPLICIT_CLEF_COLOR_CANCELLATION
            %@% \override Staff.Clef.color = ##f
              %! EXPLICIT_CLEF
            \set Staff.forceClef = ##t
            \set fontSize = #-3
            \slash
              %! EXPLICIT_STAFF_LINES
            \stopStaff
              %! EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 3
              %! EXPLICIT_STAFF_LINES
            \startStaff
            \voiceOne
            a8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (
              %! -PARTS
              %! EXPLICIT_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 1)
              %! EXPLICIT_CLEF_REDRAW_COLOR
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            a8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion.1.Music"
        { \number.12.Percussion.1.Music.item.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {

            \set fontSize = #-3
            \slash
            \voiceOne
            c'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            c'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion.1.Music"
        { \number.12.Percussion.1.Music.item.2 }

    >>

    % [Percussion.1.Music measure 3]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_101
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_101
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
      %! ONE_VOICE_COMMAND
    \oneVoice
    \override DynamicLineSpanner.staff-padding = 4
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! EXPLICIT_STAFF_LINES
    \startStaff
    ef'!2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Percussion.1.Music measure 4]
        ef'!1
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \mp
        \laissezVibrer

    }

    % [Percussion.1.Music measure 5]
    ef'!2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    \laissezVibrer

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Percussion.1.Music measure 6]
        ef'!1
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \p
        \laissezVibrer

    }

    % [Percussion.1.Music measure 7]
    ef'!2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
    \laissezVibrer

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Percussion.1.Music measure 8]
        ef'!1
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \pp
        \laissezVibrer
        \revert DynamicLineSpanner.staff-padding

    }

    % [Percussion.1.Music measure 9]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    % [Percussion.1.Music measure 10]
      %! EXPLICIT_CLEF
    \clef "percussion"
      %! MEASURE_108
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_108
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 6
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    R1 * 6/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"6" #"4"
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [Percussion.1.Music measure 11]
    \override Stem.direction = #up
    c'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup

    r8

    c'8

    r8

    c'8

    r8

    % [Percussion.1.Music measure 12]
    c'8

    r8

    c'8

    r8

    c'8

    r8

    c'8
    \revert Stem.direction

    r8

    % [Percussion.1.Music measure 13]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    b4 * 3/4
    - \tweak staff-padding 6
    ^ \baca-bd-superball-markup
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    b4 * 1/4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    \revert Stem.direction

    r2
    \revert TupletBracket.direction

    % [Percussion.1.Music measure 14]
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"

    % [Percussion.1.Music measure 15]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    b4 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak stencil #abjad-flared-hairpin
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    b4 * 1/4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
    \revert Stem.direction

    r2.
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

}


number.12.Percussion.1.Staff = <<

    \context Voice = "Percussion.1.Music"
    { \number.12.Percussion.1.Music }

>>


number.12.Percussion.2.Music.item.1 = {

    \voiceTwo
    r4.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

}


number.12.Percussion.2.Music.item.2 = {

    \once \override Dots.X-extent = ##f
    \once \override Dots.extra-offset = #'(1 . 0)
    \once \override Rest.X-extent = #'(0 . 0)
    \voiceTwo
    r2..
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

}


number.12.Percussion.2.Music = {

    % [Percussion.2.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "percussion"
    \once \override DynamicLineSpanner.staff-padding = 6
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-perc-ii-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
      %! REAPPLIED_STAFF_LINES
    \stopStaff
      %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! REAPPLIED_STAFF_LINES
    \startStaff
    c'2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Percussion”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup %@%

    <<

        \context Voice = "On_Beat_Grace_Container"
        {

            % [Percussion.2.Music measure 2]
              %! EXPLICIT_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #blue
            \set fontSize = #-3
            \slash
              %! EXPLICIT_STAFF_LINES
            \stopStaff
              %! EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 3
              %! EXPLICIT_STAFF_LINES
            \startStaff
            \voiceOne
            a8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            a8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            a8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion.2.Music"
        { \number.12.Percussion.2.Music.item.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {

            \set fontSize = #-3
            \slash
            \voiceOne
            c'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            c'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion.2.Music"
        { \number.12.Percussion.2.Music.item.2 }

    >>

    % [Percussion.2.Music measure 3]
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
      %! ONE_VOICE_COMMAND
    \oneVoice
    \override DynamicLineSpanner.staff-padding = 6
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override TupletBracket.direction = #up
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    c'2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \baca-pp-sempre
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Percussion.2.Music measure 4]
        \once \override LaissezVibrerTie.direction = #up
        c'1
        \laissezVibrer

    }

    % [Percussion.2.Music measure 5]
    c'2.
    \laissezVibrer

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Percussion.2.Music measure 6]
        \once \override LaissezVibrerTie.direction = #up
        c'1
        \laissezVibrer

    }

    % [Percussion.2.Music measure 7]
    c'2.
    \laissezVibrer

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Percussion.2.Music measure 8]
        \once \override LaissezVibrerTie.direction = #up
        c'1
        \laissezVibrer
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.direction

    }

    % [Percussion.2.Music measure 9]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [Percussion.2.Music measure 10]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    b1.
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    - \tweak staff-padding 6
    ^ \baca-bd-fingertips-markup
    \glissando

    % [Percussion.2.Music measure 11]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    b2.

    % [Percussion.2.Music measure 12]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    \revert Dots.transparent
    \revert Stem.transparent
    b1
    :32
    \revert Stem.direction
    \revert TupletBracket.direction

    % [Percussion.2.Music measure 13]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup
    - \tweak stencil ##f
    ~

    d'8
    \repeatTie

    r8

    r4

    % [Percussion.2.Music measure 14]
    d'4
    - \tweak stencil ##f
    ~

    d'8
    \repeatTie

    r8

    r4

    % [Percussion.2.Music measure 15]
    d'4
    - \tweak stencil ##f
    ~

    d'8
    \repeatTie
    \revert Stem.direction

    r8

    r2
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

}


number.12.Percussion.2.Staff = <<

    \context Voice = "Percussion.2.Music"
    { \number.12.Percussion.2.Music }

>>


number.12.Harp.Music = {

    % [Harp.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_99
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_99
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 4
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-hp-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-hp-markup
      %! REAPPLIED_STAFF_LINES
    \stopStaff
      %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
    \startStaff
    ef'!2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-sons-xylophoniques-markup
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Harp”)"
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-hp-markup %@%

    % [Harp.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_100
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_100
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    r4
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <b, c df!>4
    :32
    - \tweak staff-padding 4
    ^ \baca-bisb-markup
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    <b, c df!>2.
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
    \mf
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    % [Harp.Music measure 3]
    <b, c df!>2.
    :32

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Harp.Music measure 4]
        <b, c df!>1
        :32

    }

    % [Harp.Music measure 5]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_103
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_103
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    ef'!2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-sons-xylophoniques-markup
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Harp.Music measure 6]
        ef'!1
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \p
        \laissezVibrer

    }

    % [Harp.Music measure 7]
    ef'!2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
    \laissezVibrer

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Harp.Music measure 8]
        ef'!1
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \pp
        \laissezVibrer

    }

    % [Harp.Music measure 9]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 2)

    % [Harp.Music measure 10]
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    R1 * 6/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"6" #"4"

    % [Harp.Music measure 11]
    e'8
    - \snappizzicato
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    r8

    e'8
    - \snappizzicato

    r8

    e'8
    - \snappizzicato

    r8

    % [Harp.Music measure 12]
    e'8
    - \snappizzicato

    r8

    e'8
    - \snappizzicato

    r8

    e'8
    - \snappizzicato

    r8

    e'8
    - \snappizzicato

    r8
    \revert DynamicLineSpanner.staff-padding

    % [Harp.Music measure 13]
      %! EXPLICIT_CLEF
    \clef "percussion"
      %! MEASURE_111
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_111
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 6
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    c'4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-whisk-markup
    - \tweak stencil ##f
    ~
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 2)
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    c'8
    \repeatTie

    r8

    r4

    % [Harp.Music measure 14]
    c'4
    - \tweak stencil ##f
    ~

    c'8
    \repeatTie

    r8

    r4

    % [Harp.Music measure 15]
    c'4
    - \tweak stencil ##f
    ~

    c'8
    \repeatTie
    \revert Stem.direction

    r8

    r2
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

}


number.12.Harp.Staff = <<

    \context Voice = "Harp.Music"
    { \number.12.Harp.Music }

>>


number.12.Viola.Music.item.1 = {

    \voiceTwo
    df!1
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    - \tweak stencil ##f
    ~

}


number.12.Viola.Music = {

    % [Viola.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "treble"
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \hide NoteHead
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override Accidental.stencil = ##f
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override NoteHead.no-ledgers = ##t
    \once \override DynamicLineSpanner.staff-padding = 4
    \once \override NoteHead.style = #'harmonic
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-va-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-va-markup
      %! REAPPLIED_STAFF_LINES
    \stopStaff
      %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
    \startStaff
    a''2.
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Viola”)"
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    \>
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak bound-details.right.padding 2
      %! LEFT_BROKEN
      %! SPANNER_START
    \startTrillSpan
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-va-markup %@%

    % [Viola.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "alto"
      %! MEASURE_100
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_100
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \override DynamicLineSpanner.staff-padding = 6
    \override NoteHead.style = #'harmonic-black
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    r4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \!
      %! SPANNER_STOP
    \stopTrillSpan
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {

            \override NoteHead.style = #'harmonic-black
            \set fontSize = #-3
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                df
                f
            >8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            fs!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            d8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ds!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            dtqs!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            e8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            eqs!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola.Music"
        { \number.12.Viola.Music.item.1 }

    >>

    % [Viola.Music measure 3]
      %! ONE_VOICE_COMMAND
    \oneVoice
    df2.
    - \tweak stencil ##f
    ~
    \repeatTie

    % [Viola.Music measure 4]
    df1
    - \tweak stencil ##f
    ~
    \repeatTie

    df4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding
    \revert NoteHead.style

    % [Viola.Music measure 5]
    \override DynamicLineSpanner.staff-padding = 4
    r4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \!

    bf!4
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "P4"
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-right-text "T4"
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SCP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanSCP
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    r4

    % [Viola.Music measure 6]
    bf!4
    - \baca-staccati #3

    r4

    r4

    bf!4
    - \baca-staccati #3

    r4

    % [Viola.Music measure 7]
    bf!4
    - \baca-staccati #3

    r4

    r4

    % [Viola.Music measure 8]
    bf!4
    - \baca-staccati #3

    r4

    bf!4
    - \baca-staccati #3

    bf!4
    - \baca-staccati #3

    bf!4
    - \baca-staccati #3
      %! SCP_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Viola.Music"
        {

            % [Viola.Music measure 9]
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
            \abjad-invisible-music-coloring
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
            c'1 * 1/4
              %! EXPLICIT_DYNAMIC_COLOR
              %! EXPLICIT_DYNAMIC
            - \tweak color #blue
              %! EXPLICIT_DYNAMIC
            \!
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
              %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola.Rests"
        {

            % [Viola.Rests measure 9]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 1/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        }

    >>

    % [Viola.Music measure 10]
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    d1.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanSCP
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    % [Viola.Music measure 11]
    bf!4
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \p
      %! SCP_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-right-text "O"
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanSCP

    bf!4
    :32
    - \accent

    bf!4
    :32
    - \accent

    % [Viola.Music measure 12]
    bf!4
    :32
    - \accent

    bf!4
    :32
    - \accent

    bf!4
    :32
    - \accent

    bf!4
    :32
    - \accent

    % [Viola.Music measure 13]
    bf!2
    :32
    - \accent
      %! SCP_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanSCP

    bf!8.
    :32
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-sffp
    [

    bf!16
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-sffp
    ]
    ~

    % [Viola.Music measure 14]
    bf4
    :32
    - \tweak stencil ##f
    ~

    bf16
    :32
    [
    \repeatTie

    bf!8.
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-sffp
    ]
    - \tweak stencil ##f
    ~

    bf4
    :32
    - \tweak stencil ##f
    ~
    \repeatTie

    % [Viola.Music measure 15]
    bf16
    :32
    [
    \repeatTie

    bf!8.
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-sffp
    ]

    bf!4
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-sffp
    - \tweak stencil ##f
    ~

    bf8
    :32
    [
    \repeatTie

    bf!8
    :32
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! RIGHT_BROKEN
      %! SPANNER_STOP
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! RIGHT_BROKEN
      %! SPANNER_STOP
    \baca-sffp
    ]
      %! EXPLICIT_DYNAMIC
      %! RIGHT_BROKEN
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! RIGHT_BROKEN
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! RIGHT_BROKEN
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! RIGHT_BROKEN
      %! SPANNER_START
    \>
    - \tweak stencil ##f
    ~

    bf4
    :32
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

      %! ANCHOR_NOTE
    % [Viola.Music anchor note]
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COMMAND
      %! NOTE
    %@% \abjad-invisible-music
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COLORING
      %! NOTE
    \abjad-invisible-music-coloring
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
      %! ANCHOR_NOTE
    \once \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
    \stopStaff
      %! ANCHOR_NOTE
    \once \override Staff.StaffSymbol.transparent = ##t
      %! ANCHOR_NOTE
    \startStaff
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
    c'1 * 1/4
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! ANCHOR_NOTE
      %! RIGHT_BROKEN
    \!

}


number.12.Viola.Staff = <<

    \context Voice = "Viola.Music"
    { \number.12.Viola.Music }

>>


number.12.Cello.1.Music.item.1 = {

    \voiceTwo
    c2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

}


number.12.Cello.1.Music = {

    % [Cello.1.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "treble"
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \hide NoteHead
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override Accidental.stencil = ##f
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override NoteHead.no-ledgers = ##t
    \once \override NoteHead.style = #'harmonic
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 4
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-vc-i-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
      %! REAPPLIED_STAFF_LINES
    \stopStaff
      %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
    \startStaff
    gqs'''!2.
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Cello”)"
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    \>
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak bound-details.right.padding 2
      %! LEFT_BROKEN
      %! SPANNER_START
    \startTrillSpan
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-i-markup %@%

    % [Cello.1.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_100
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_100
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \override NoteHead.style = #'harmonic-black
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    r4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \!
      %! SPANNER_STOP
    \stopTrillSpan
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {

            \override NoteHead.style = #'harmonic-black
            \set fontSize = #-3
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                c
                e
            >8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            f8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            d8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            dqs!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ds!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello.1.Music"
        { \number.12.Cello.1.Music.item.1 }

    >>

      %! ONE_VOICE_COMMAND
    \oneVoice
    r4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \!
    \revert DynamicLineSpanner.staff-padding
    \revert NoteHead.style

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9
    {

        % [Cello.1.Music measure 3]
        \override DynamicLineSpanner.staff-padding = 6
        r4

        r4

        r4

        r4

        r4

        r4

        aqf!4
        - \baca-staccati #3
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \f
        - \tweak extra-offset #'(-2 . 0)
        - \tweak self-alignment-X 1
        ^ \baca-eleven-e-flat
          %! SCP_SPANNER
          %! SPANNER_START
        - \baca-solid-line-with-arrow
          %! SCP_SPANNER
          %! SPANNER_START
        - \baca-text-spanner-left-text "P4"
          %! SCP_SPANNER
          %! SPANNER_START
        - \baca-text-spanner-right-text "T4"
          %! SCP_SPANNER
          %! SPANNER_START
        - \tweak bound-details.right.padding 0.5
          %! SCP_SPANNER
          %! SPANNER_START
        - \tweak bound-details.right.stencil-align-dir-y #center
          %! SCP_SPANNER
          %! SPANNER_START
        - \tweak staff-padding 5.5
          %! SCP_SPANNER
          %! SPANNER_START
        \bacaStartTextSpanSCP
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \>

        aqf!4
        - \baca-staccati #3

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9
    {

        % [Cello.1.Music measure 5]
        r4

        r4

        aqf!4
        - \baca-staccati #3

        r4

        r4

        aqf!4
        - \baca-staccati #3

        aqf!4
        - \baca-staccati #3

        r4

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9
    {

        % [Cello.1.Music measure 7]
        r4

        aqf!4
        - \baca-staccati #3

        r4

        aqf!4
        - \baca-staccati #3

        aqf!4
        - \baca-staccati #3

        r4

        aqf!4
        - \baca-staccati #3

        aqf!4
        - \baca-staccati #3

        aqf!4
        - \baca-staccati #3
          %! SCP_SPANNER
          %! SPANNER_STOP
        \bacaStopTextSpanSCP
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Cello.1.Music"
        {

            % [Cello.1.Music measure 9]
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
            \abjad-invisible-music-coloring
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
            d1 * 1/4
              %! EXPLICIT_DYNAMIC_COLOR
              %! EXPLICIT_DYNAMIC
            - \tweak color #blue
              %! EXPLICIT_DYNAMIC
            \!
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        }

        \context Voice = "Cello.1.Rests"
        {

            % [Cello.1.Rests measure 9]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 1/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        }

    >>

    % [Cello.1.Music measure 10]
    \override DynamicLineSpanner.staff-padding = 4
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    d,1.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanSCP
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    % [Cello.1.Music measure 11]
    aqf!4
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \p
    - \tweak X-offset 3
    - \tweak padding 1
    ^ \baca-eleven-e-flat
      %! SCP_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-right-text "O"
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanSCP

    aqf!4
    :32
    - \accent

    aqf!4
    :32
    - \accent

    % [Cello.1.Music measure 12]
    aqf!4
    :32
    - \accent

    aqf!4
    :32
    - \accent

    aqf!4
    :32
    - \accent

    aqf!4
    :32
    - \accent

    % [Cello.1.Music measure 13]
    \override TupletBracket.direction = #up
    aqf!2
    :32
    - \accent
      %! SCP_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        aqf8
        :32
        \repeatTie

        aqf!4
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \baca-sffp
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Cello.1.Music measure 14]
        aqf4
        :32
        \repeatTie

        aqf!8
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-sffp
        ~

    }

    aqf4
    :32

    aqf!4
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-sffp
    - \tweak stencil ##f
    ~

    % [Cello.1.Music measure 15]
    aqf4
    :32
    - \tweak stencil ##f
    ~
    \repeatTie

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        aqf8
        :32
        \repeatTie

        aqf!4
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-sffp
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        aqf4
        :32
        \repeatTie

        aqf!8
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_STOP
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_STOP
        \baca-sffp
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        \>
        ~

    }

    aqf4
    :32
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

      %! ANCHOR_NOTE
    % [Cello.1.Music anchor note]
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COMMAND
      %! NOTE
    %@% \abjad-invisible-music
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COLORING
      %! NOTE
    \abjad-invisible-music-coloring
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
      %! ANCHOR_NOTE
    \once \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
    \stopStaff
      %! ANCHOR_NOTE
    \once \override Staff.StaffSymbol.transparent = ##t
      %! ANCHOR_NOTE
    \startStaff
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
    d1 * 1/4
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! ANCHOR_NOTE
      %! RIGHT_BROKEN
    \!

}


number.12.Cello.1.Staff = <<

    \context Voice = "Cello.1.Music"
    { \number.12.Cello.1.Music }

>>


number.12.Cello.2.Music = {

    % [Cello.2.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "treble"
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \hide NoteHead
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override Accidental.stencil = ##f
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override NoteHead.no-ledgers = ##t
    \once \override NoteHead.style = #'harmonic
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 4
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-vc-ii-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
      %! REAPPLIED_STAFF_LINES
    \stopStaff
      %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
    \startStaff
    fs''!2.
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Cello”)"
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    \>
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak bound-details.right.padding 2
      %! LEFT_BROKEN
      %! SPANNER_START
    \startTrillSpan
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup %@%

    % [Cello.2.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_100
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_100
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    r2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \!
      %! SPANNER_STOP
    \stopTrillSpan
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    c2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
      %! DAMP_SPANNER
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! DAMP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! DAMP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! DAMP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 3
      %! DAMP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/10
    {

        % [Cello.2.Music measure 3]
        \override DynamicLineSpanner.staff-padding = 6
        f4
        - \baca-staccati #3
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \f
          %! DAMP_SPANNER
          %! SPANNER_STOP
        \bacaStopTextSpanDamp
          %! SCP_SPANNER
          %! SPANNER_START
        - \baca-solid-line-with-arrow
          %! SCP_SPANNER
          %! SPANNER_START
        - \baca-text-spanner-left-text "P4"
          %! SCP_SPANNER
          %! SPANNER_START
        - \baca-text-spanner-right-text "T4"
          %! SCP_SPANNER
          %! SPANNER_START
        - \tweak bound-details.right.padding 0.5
          %! SCP_SPANNER
          %! SPANNER_START
        - \tweak bound-details.right.stencil-align-dir-y #center
          %! SCP_SPANNER
          %! SPANNER_START
        - \tweak staff-padding 3
          %! SCP_SPANNER
          %! SPANNER_START
        \bacaStartTextSpanSCP
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \>

        r4

        r4

        r4

        r4

        r4

        f4
        - \baca-staccati #3

        r4

        r4

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/10
    {

        % [Cello.2.Music measure 5]
        f4
        - \baca-staccati #3

        f4
        - \baca-staccati #3

        r4

        r4

        f4
        - \baca-staccati #3

        r4

        f4
        - \baca-staccati #3

        r4

        r4

        f4
        - \baca-staccati #3

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/10
    {

        % [Cello.2.Music measure 7]
        r4

        f4
        - \baca-staccati #3

        f4
        - \baca-staccati #3

        f4
        - \baca-staccati #3

        r4

        f4
        - \baca-staccati #3

        r4

        f4
        - \baca-staccati #3

        f4
        - \baca-staccati #3

        f4
        - \baca-staccati #3
          %! SCP_SPANNER
          %! SPANNER_STOP
        \bacaStopTextSpanSCP
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Cello.2.Music"
        {

            % [Cello.2.Music measure 9]
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
            \abjad-invisible-music-coloring
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
            d1 * 1/4
              %! EXPLICIT_DYNAMIC_COLOR
              %! EXPLICIT_DYNAMIC
            - \tweak color #blue
              %! EXPLICIT_DYNAMIC
            \!
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        }

        \context Voice = "Cello.2.Rests"
        {

            % [Cello.2.Rests measure 9]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 1/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        }

    >>

    % [Cello.2.Music measure 10]
    \override DynamicLineSpanner.staff-padding = 4
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    d,1.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanSCP
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    % [Cello.2.Music measure 11]
    f4
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \p
      %! SCP_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-right-text "O"
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanSCP

    f4
    :32
    - \accent

    f4
    :32
    - \accent

    % [Cello.2.Music measure 12]
    f4
    :32
    - \accent

    f4
    :32
    - \accent

    f4
    :32
    - \accent

    f4
    :32
    - \accent

    % [Cello.2.Music measure 13]
    \override TupletBracket.direction = #up
    f4
    :32
    - \accent
      %! SCP_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        f8
        :32
        \repeatTie

        f4
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \baca-sffp
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        f4
        :32
        \repeatTie

        f8
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-sffp
        ~

    }

    % [Cello.2.Music measure 14]
    f2
    :32

    f4
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-sffp
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Cello.2.Music measure 15]
        f8
        :32
        \repeatTie

        f4
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-sffp
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        f4
        :32
        \repeatTie

        f8
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_STOP
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_STOP
        \baca-sffp
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        \>
        ~

    }

    f2
    :32
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

      %! ANCHOR_NOTE
    % [Cello.2.Music anchor note]
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COMMAND
      %! NOTE
    %@% \abjad-invisible-music
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COLORING
      %! NOTE
    \abjad-invisible-music-coloring
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
      %! ANCHOR_NOTE
    \once \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
    \stopStaff
      %! ANCHOR_NOTE
    \once \override Staff.StaffSymbol.transparent = ##t
      %! ANCHOR_NOTE
    \startStaff
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
    d1 * 1/4
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! ANCHOR_NOTE
      %! RIGHT_BROKEN
    \!

}


number.12.Cello.2.Staff = <<

    \context Voice = "Cello.2.Music"
    { \number.12.Cello.2.Music }

>>


number.12.Contrabass.1.Music.item.1 = {

    \voiceTwo
    b2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

}


number.12.Contrabass.1.Music = {

    % [Contrabass.1.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "treble"
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \hide NoteHead
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override Accidental.stencil = ##f
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override NoteHead.no-ledgers = ##t
    \once \override NoteHead.style = #'harmonic
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 4
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-cb-i-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
      %! REAPPLIED_STAFF_LINES
    \stopStaff
      %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
    \startStaff
    cs'''!2.
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Contrabass”)"
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    \>
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak bound-details.right.padding 2
      %! LEFT_BROKEN
      %! SPANNER_START
    \startTrillSpan
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-cb-i-markup %@%

    % [Contrabass.1.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_100
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_100
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \override NoteHead.style = #'harmonic-black
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    r4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \!
      %! SPANNER_STOP
    \stopTrillSpan
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {

            \override NoteHead.style = #'harmonic-black
            \set fontSize = #-3
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                b
                ds'!
            >8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            e'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            c'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            cs'!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            ctqs'!8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            d'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass.1.Music"
        { \number.12.Contrabass.1.Music.item.1 }

    >>

      %! ONE_VOICE_COMMAND
    \oneVoice
    r4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \!
    \revert DynamicLineSpanner.staff-padding
    \revert NoteHead.style

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/11
    {

        % [Contrabass.1.Music measure 3]
        \override DynamicLineSpanner.staff-padding = 6
        r4

        dtqf'!4
        - \baca-staccati #3
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \f
        - \tweak extra-offset #'(-2 . 0)
        - \tweak self-alignment-X 1
        ^ \baca-seven-e-flat
          %! SCP_SPANNER
          %! SPANNER_START
        - \baca-solid-line-with-arrow
          %! SCP_SPANNER
          %! SPANNER_START
        - \baca-text-spanner-left-text "P4"
          %! SCP_SPANNER
          %! SPANNER_START
        - \baca-text-spanner-right-text "T4"
          %! SCP_SPANNER
          %! SPANNER_START
        - \tweak bound-details.right.padding 0.5
          %! SCP_SPANNER
          %! SPANNER_START
        - \tweak bound-details.right.stencil-align-dir-y #center
          %! SCP_SPANNER
          %! SPANNER_START
        - \tweak staff-padding 5.5
          %! SCP_SPANNER
          %! SPANNER_START
        \bacaStartTextSpanSCP
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \>

        r4

        r4

        r4

        r4

        dtqf'!4
        - \baca-staccati #3

        r4

        r4

        dtqf'!4
        - \baca-staccati #3

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/11
    {

        % [Contrabass.1.Music measure 5]
        dtqf'!4
        - \baca-staccati #3

        r4

        r4

        dtqf'!4
        - \baca-staccati #3

        r4

        dtqf'!4
        - \baca-staccati #3

        r4

        r4

        dtqf'!4
        - \baca-staccati #3

        r4

        dtqf'!4
        - \baca-staccati #3

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/11
    {

        % [Contrabass.1.Music measure 7]
        dtqf'!4
        - \baca-staccati #3

        r4

        dtqf'!4
        - \baca-staccati #3

        dtqf'!4
        - \baca-staccati #3

        dtqf'!4
        - \baca-staccati #3

        r4

        dtqf'!4
        - \baca-staccati #3

        r4

        dtqf'!4
        - \baca-staccati #3

        dtqf'!4
        - \baca-staccati #3

        dtqf'!4
        - \baca-staccati #3
          %! SCP_SPANNER
          %! SPANNER_STOP
        \bacaStopTextSpanSCP
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Contrabass.1.Music"
        {

            % [Contrabass.1.Music measure 9]
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
            \abjad-invisible-music-coloring
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
            d1 * 1/4
              %! EXPLICIT_DYNAMIC_COLOR
              %! EXPLICIT_DYNAMIC
            - \tweak color #blue
              %! EXPLICIT_DYNAMIC
            \!
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        }

        \context Voice = "Contrabass.1.Rests"
        {

            % [Contrabass.1.Rests measure 9]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 1/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        }

    >>

    % [Contrabass.1.Music measure 10]
    \override DynamicLineSpanner.staff-padding = 4
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    d1.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanSCP
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    % [Contrabass.1.Music measure 11]
    dtqf'!4
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \p
    - \tweak X-offset 3
    - \tweak padding 1
    ^ \baca-seven-e-flat
      %! SCP_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "(T4)"
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-right-text "O"
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanSCP

    dtqf'!4
    :32
    - \accent

    dtqf'!4
    :32
    - \accent

    % [Contrabass.1.Music measure 12]
    dtqf'!4
    :32
    - \accent

    dtqf'!4
    :32
    - \accent

    dtqf'!4
    :32
    - \accent

    dtqf'!4
    :32
    - \accent

    % [Contrabass.1.Music measure 13]
    \override TupletBracket.direction = #up
    dtqf'!2
    :32
    - \accent
      %! SCP_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        dtqf'8
        :32
        [
        \repeatTie

        dtqf'!8.
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \baca-sffp
        ]
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Contrabass.1.Music measure 14]
        dtqf'4
        :32
        \repeatTie

        dtqf'!16
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-sffp
        ~

    }

    dtqf'4
    :32
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        dtqf'8
        :32
        [
        \repeatTie

        dtqf'!8.
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-sffp
        ]
        - \tweak stencil ##f
        ~

    }

    % [Contrabass.1.Music measure 15]
    dtqf'4
    :32
    - \tweak stencil ##f
    ~
    \repeatTie

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        dtqf'4
        :32
        \repeatTie

        dtqf'!16
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-sffp
        ~

    }

    dtqf'4
    :32
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        dtqf'16
        :32
        \repeatTie

        dtqf'!4
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_STOP
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_STOP
        \baca-sffp
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        \>
        \revert DynamicLineSpanner.staff-padding
        \revert TupletBracket.direction

    }

      %! ANCHOR_NOTE
    % [Contrabass.1.Music anchor note]
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COMMAND
      %! NOTE
    %@% \abjad-invisible-music
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COLORING
      %! NOTE
    \abjad-invisible-music-coloring
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
      %! ANCHOR_NOTE
    \once \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
    \stopStaff
      %! ANCHOR_NOTE
    \once \override Staff.StaffSymbol.transparent = ##t
      %! ANCHOR_NOTE
    \startStaff
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
    d1 * 1/4
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! ANCHOR_NOTE
      %! RIGHT_BROKEN
    \!

}


number.12.Contrabass.1.Staff = <<

    \context Voice = "Contrabass.1.Music"
    { \number.12.Contrabass.1.Music }

>>


number.12.Contrabass.2.Music = {

    % [Contrabass.2.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "treble"
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \hide NoteHead
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override Accidental.stencil = ##f
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override NoteHead.no-ledgers = ##t
    \once \override NoteHead.style = #'harmonic
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 4
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-cb-ii-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
      %! REAPPLIED_STAFF_LINES
    \stopStaff
      %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
    \startStaff
    cqf'''!2.
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Contrabass”)"
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! LEFT_BROKEN
      %! SPANNER_START
    \>
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak bound-details.right.padding 2
      %! LEFT_BROKEN
      %! SPANNER_START
    \startTrillSpan
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup %@%

    % [Contrabass.2.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_100
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_100
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    r2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \!
      %! SPANNER_STOP
    \stopTrillSpan
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    b2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
      %! DAMP_SPANNER
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! DAMP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! DAMP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! DAMP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 3
      %! DAMP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/12
    {

        % [Contrabass.2.Music measure 3]
        \override DynamicLineSpanner.staff-padding = 6
        r4
          %! DAMP_SPANNER
          %! SPANNER_STOP
        \bacaStopTextSpanDamp

        ef!4
        - \baca-staccati #3
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \f
          %! SCP_SPANNER
          %! SPANNER_START
        - \baca-solid-line-with-arrow
          %! SCP_SPANNER
          %! SPANNER_START
        - \baca-text-spanner-left-text "P4"
          %! SCP_SPANNER
          %! SPANNER_START
        - \baca-text-spanner-right-text "T4"
          %! SCP_SPANNER
          %! SPANNER_START
        - \tweak bound-details.right.padding 0.5
          %! SCP_SPANNER
          %! SPANNER_START
        - \tweak bound-details.right.stencil-align-dir-y #center
          %! SCP_SPANNER
          %! SPANNER_START
        - \tweak staff-padding 3
          %! SCP_SPANNER
          %! SPANNER_START
        \bacaStartTextSpanSCP
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \>

        r4

        r4

        r4

        r4

        r4

        r4

        r4

        ef!4
        - \baca-staccati #3

        r4

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/12
    {

        % [Contrabass.2.Music measure 5]
        r4

        r4

        r4

        r4

        ef!4
        - \baca-staccati #3

        r4

        r4

        r4

        r4

        r4

        ef!4
        - \baca-staccati #3

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/12
    {

        % [Contrabass.2.Music measure 7]
        r4

        r4

        r4

        ef!4
        - \baca-staccati #3

        r4

        ef!4
        - \baca-staccati #3

        r4

        ef!4
        - \baca-staccati #3

        r4

        ef!4
        - \baca-staccati #3

        ef!4
        - \baca-staccati #3

        ef!4
        - \baca-staccati #3
          %! SCP_SPANNER
          %! SPANNER_STOP
        \bacaStopTextSpanSCP
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Contrabass.2.Music"
        {

            % [Contrabass.2.Music measure 9]
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
            \abjad-invisible-music-coloring
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
            d1 * 1/4
              %! EXPLICIT_DYNAMIC_COLOR
              %! EXPLICIT_DYNAMIC
            - \tweak color #blue
              %! EXPLICIT_DYNAMIC
            \!
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
              %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass.2.Rests"
        {

            % [Contrabass.2.Rests measure 9]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 1/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        }

    >>

    % [Contrabass.2.Music measure 10]
    \override DynamicLineSpanner.staff-padding = 4
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    d1.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanSCP
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak circled-tip ##t
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    % [Contrabass.2.Music measure 11]
    ef!4
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \p
      %! SCP_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "(T4)"
      %! SCP_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-right-text "O"
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SCP_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SCP_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanSCP

    ef!4
    :32
    - \accent

    ef!4
    :32
    - \accent

    % [Contrabass.2.Music measure 12]
    ef!4
    :32
    - \accent

    ef!4
    :32
    - \accent

    ef!4
    :32
    - \accent

    ef!4
    :32
    - \accent

    % [Contrabass.2.Music measure 13]
    \override TupletBracket.direction = #up
    ef!4
    :32
    - \accent
      %! SCP_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        ef8.
        :32
        [
        \repeatTie

        ef!8
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \baca-sffp
        ]
        ~

    }

    ef4
    :32

    % [Contrabass.2.Music measure 14]
    ef!2
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-sffp
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        ef8
        :32
        [
        \repeatTie

        ef!8.
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-sffp
        ]
        - \tweak stencil ##f
        ~

    }

    % [Contrabass.2.Music measure 15]
    ef4
    :32
    \repeatTie

    ef!4
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-sffp
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        ef8
        :32
        [
        \repeatTie

        ef!8.
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_STOP
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_STOP
        \baca-sffp
        ]
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! RIGHT_BROKEN
          %! SPANNER_START
        \>
        - \tweak stencil ##f
        ~

    }

    ef4
    :32
    \repeatTie
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

      %! ANCHOR_NOTE
    % [Contrabass.2.Music anchor note]
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COMMAND
      %! NOTE
    %@% \abjad-invisible-music
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COLORING
      %! NOTE
    \abjad-invisible-music-coloring
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
      %! NOT_YET_PITCHED_COLORING
    \baca-not-yet-pitched-coloring
      %! ANCHOR_NOTE
    \once \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
    \stopStaff
      %! ANCHOR_NOTE
    \once \override Staff.StaffSymbol.transparent = ##t
      %! ANCHOR_NOTE
    \startStaff
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
    d1 * 1/4
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! ANCHOR_NOTE
      %! RIGHT_BROKEN
    \!

}


number.12.Contrabass.2.Staff = <<

    \context Voice = "Contrabass.2.Music"
    { \number.12.Contrabass.2.Music }

>>
