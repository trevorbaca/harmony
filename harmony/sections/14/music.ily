\version "2.25.16"

number.14.Skips = {

    % [Skips measure 1]
      %! RED_START_BAR
    %@% \baca-thick-red-bar-line
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
      %! RED_START_BAR
    %@% \tweak break-visibility ##(#t #t #f)
      %! RED_START_BAR
    %@% \tweak color #red
      %! RED_START_BAR
    %@% \mark \markup \with-dimensions-from \null "14"
    s1 * 4/4
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text-mixed-number 2 0 1 "57" "3" "5"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[6'52'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "1"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "120"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-left-only "[N.1-2]"
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 2]
    s1 * 4/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[6'56'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "2"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "121"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 3]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/4
    s1 * 1/4
      %! -PARTS
    - \tweak extra-offset #'(4 . -30)
      %! -PARTS
    ^ \harmony-text-fourteen
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
    - \baca-start-lmn-left-only "3"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "122"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 4]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4
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
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1) #blue
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
    %@% - \baca-start-ct-left-only "[7'02'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "4"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "123"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-colored-left-only "[>O.1]" #darkgreen
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 5]
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
    %@% - \baca-start-ct-left-only "[7'04'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "5"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "124"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-colored-left-only "[<M.1]" #darkgreen
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 6]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4
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
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(1 . 1) #blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text-mixed-number 2 0 1 "57" "3" "5"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[7'06'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "6"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "125"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-left-only "[N.3-6]"
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 7]
    s1 * 4/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[7'11'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "7"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "126"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 8]
    s1 * 4/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[7'15'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "8"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "127"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 9]
    s1 * 4/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[7'19'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "9"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "128"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 10]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/4
    s1 * 1/4
      %! -PARTS
    - \tweak extra-offset #'(4 . -30)
      %! -PARTS
    ^ \harmony-text-fifteen
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only-fermata "1''"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "10"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "129"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 11]
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
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1) #blue
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
    %@% - \baca-start-ct-both "[7'24'']" "[7'26'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "11"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "130"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-colored-left-only "[>P.1]" #darkgreen
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

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


number.14.Rests = {

    % [Rests measure 1]
    R1 * 4/4

    % [Rests measure 2]
    R1 * 4/4

    % [Rests measure 3]
    \baca-fermata-measure
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    R1 * 1/4
    ^ \baca-fermata-markup
      %! FERMATA_MEASURE
      %! MEASURE_122
%%% \once \override Score.BarLine.transparent = ##t
      %! FERMATA_MEASURE
      %! MEASURE_122
%%% \once \override Score.SpanBar.transparent = ##t

    % [Rests measure 4]
    R1 * 4/4

    % [Rests measure 5]
    R1 * 5/4

    % [Rests measure 6]
    R1 * 4/4

    % [Rests measure 7]
    R1 * 4/4

    % [Rests measure 8]
    R1 * 4/4

    % [Rests measure 9]
    R1 * 4/4

    % [Rests measure 10]
    \baca-fermata-measure
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    R1 * 1/4
    ^ \baca-short-fermata-markup
      %! FERMATA_MEASURE
      %! MEASURE_129
%%% \once \override Score.BarLine.transparent = ##t
      %! FERMATA_MEASURE
      %! MEASURE_129
%%% \once \override Score.SpanBar.transparent = ##t

    % [Rests measure 11]
    R1 * 3/4

}


number.14.BassFlute.Music = {

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
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-bfl-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-bfl-markup
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! EXPLICIT_STAFF_LINES
    \startStaff
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“BassFlute”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-bfl-markup %@%

    % [BassFlute.Music measure 2]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9
    {

        r32

        \override Accidental.X-offset = 0
        \override Accidental.Y-offset = -2
        \override Accidental.font-size = -3
        \override NoteHead.font-size = -3
        g'32
        [
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
          %! SPANNER_START
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
          %! SPANNER_START
        \startTrillSpan

        gs'!32

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mp
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \>

        b'32

        bf'!32

        a'32

        af'!32

        g'32

        gs'!32

        a'32

        as'!32

        b'32
          %! SPANNER_STOP
        \!
        ]
        \revert Accidental.X-offset
        \revert Accidental.Y-offset
        \revert Accidental.font-size
        \revert NoteHead.font-size

    }

    <<

        \context Voice = "BassFlute.Music"
        {

            % [BassFlute.Music measure 3]
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
            b'1 * 1/4
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
              %! SPANNER_STOP
            \stopTrillSpan
              %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(0 . 0)

        }

        \context Voice = "BassFlute.Rests"
        {

            % [BassFlute.Rests measure 3]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 1/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        }

    >>

    % [BassFlute.Music measure 4]
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    r16

    e'8.
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-covered-markup
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-parenthesized-cov-markup
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanCovered

    e'4
    - \accent

    r4

    e'4
    - \accent

    % [BassFlute.Music measure 5]
    b''4 * 1/2
    :32
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! SPANNER_STOP
    \bacaStopTextSpanCovered
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
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
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
    \>
    - \tweak stencil ##f
    ~

    b''4
    :32
    \repeatTie

    r2.
      %! SPANNER_STOP
    \!

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9
    {

        % [BassFlute.Music measure 6]
        r32

        \override Accidental.X-offset = 0
        \override Accidental.Y-offset = -2
        \override Accidental.font-size = -3
        \override NoteHead.font-size = -3
        gs'!32
        [
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
          %! SPANNER_START
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
          %! SPANNER_START
        \startTrillSpan

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32

        b'32
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mp
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \>

        bf'!32

        a'32

        af'!32

        g'32

        gs'!32

        a'32

        as'!32

        b'32

        c''32
          %! SPANNER_STOP
        \!
        ]

    }

    r2
      %! SPANNER_STOP
    \stopTrillSpan

    % [BassFlute.Music measure 7]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [BassFlute.Music measure 8]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [BassFlute.Music measure 9]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9
    {

        r32

        a'32
        [
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
          %! SPANNER_START
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
          %! SPANNER_START
        \startTrillSpan

        as'!32

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mp
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak circled-tip ##t
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \>

        a'32

        af'!32

        g'32

        gs'!32

        a'32

        as'!32

        b'32

        c''32

        cs''!32
          %! SPANNER_STOP
        \!
        ]
        \revert Accidental.X-offset
        \revert Accidental.Y-offset
        \revert Accidental.font-size
        \revert NoteHead.font-size

    }

    <<

        \context Voice = "BassFlute.Music"
        {

            % [BassFlute.Music measure 10]
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
            b'1 * 1/4
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
              %! SPANNER_STOP
            \stopTrillSpan
              %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(0 . 0)

        }

        \context Voice = "BassFlute.Rests"
        {

            % [BassFlute.Rests measure 10]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 1/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        }

    >>

    % [BassFlute.Music measure 11]
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    d'''8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \startTextSpan

    r16
      %! SPANNER_STOP
    \stopTextSpan

    d'''2
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \startTextSpan
    \revert DynamicLineSpanner.staff-padding

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
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! ANCHOR_NOTE
      %! SPANNER_STOP
    \stopTextSpan

}


number.14.BassFlute.Staff = <<

    \context GlobalRests = "Rests"
    { \number.14.Rests }

    \context Voice = "BassFlute.Music"
    { \number.14.BassFlute.Music }

>>


number.14.Percussion.1.Music.item.1 = {

    \voiceTwo
    r4.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    - \tweak staff-padding 5
    ^ \baca-boxed-purpleheart-markup

}


number.14.Percussion.1.Music.item.2 = {

    \once \override Dots.X-extent = ##f
    \once \override Dots.extra-offset = #'(2 . 0)
    \once \override Rest.X-extent = #'(0 . 0)
    \voiceTwo
    r2..
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

}


number.14.Percussion.1.Music = {

    % [Percussion.1.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "percussion"
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 6
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \override Stem.direction = #up
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-perc-i-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    c'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \baca-f-ancora
    - \tweak staff-padding 6
    ^ \baca-boxed-brake-drum-markup
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Percussion”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-i-markup %@%

    r8

    r2.

    % [Percussion.1.Music measure 2]
    r2.

    r8

    c'8
    \revert Stem.direction

    % [Percussion.1.Music measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    % [Percussion.1.Music measure 4]
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \override TupletBracket.direction = #up
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    r16

    \override Stem.direction = #down
    d'8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-boxed-slate-scrape-markup

    d'4

    r4

    d'4
    \revert DynamicLineSpanner.staff-padding
    \revert Stem.direction
    \revert TupletBracket.direction

    <<

        \context Voice = "On_Beat_Grace_Container"
        {

            % [Percussion.1.Music measure 5]
              %! EXPLICIT_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #blue
              %! -PARTS
              %! EXPLICIT_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 1)
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

            a8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]

        }

        \context Voice = "Percussion.1.Music"
        { \number.14.Percussion.1.Music.item.1 }

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
        { \number.14.Percussion.1.Music.item.2 }

    >>

    % [Percussion.1.Music measure 6]
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \once \override Stem.direction = #up
      %! ONE_VOICE_COMMAND
    \oneVoice
    \override DynamicLineSpanner.staff-padding = 6
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    c'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \baca-f-ancora
    - \tweak staff-padding 6
    ^ \baca-boxed-brake-drum-markup
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    r8

    r2.

    % [Percussion.1.Music measure 7]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [Percussion.1.Music measure 8]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [Percussion.1.Music measure 9]
    r2.

    r8

    \once \override Stem.direction = #up
    c'8

    % [Percussion.1.Music measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    % [Percussion.1.Music measure 11]
    \once \override Stem.direction = #up
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    c'2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    - \tweak staff-padding 6
    ^ \baca-boxed-brake-drum-paper-towel-markup
    \revert DynamicLineSpanner.staff-padding

}


number.14.Percussion.1.Staff = <<

    \context Voice = "Percussion.1.Music"
    { \number.14.Percussion.1.Music }

>>


number.14.Percussion.2.Music.item.1 = {

    \voiceTwo
    r4.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    - \tweak staff-padding 5
    ^ \baca-boxed-purpleheart-markup

}


number.14.Percussion.2.Music.item.2 = {

    \once \override Dots.X-extent = ##f
    \once \override Dots.extra-offset = #'(2 . 0)
    \once \override Rest.X-extent = #'(0 . 0)
    \voiceTwo
    r2..
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

}


number.14.Percussion.2.Music = {

    % [Percussion.2.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "percussion"
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 6
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \override TupletBracket.direction = #up
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-perc-ii-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    r2.
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \f
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Percussion”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup %@%

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        \override Stem.direction = #down
        d'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \baca-effort-ff
        - \tweak self-alignment-X 0.75
        - \tweak staff-padding 6
        ^ \baca-boxed-slate-brush-markup

        r16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Percussion.2.Music measure 2]
        r8

        d'16
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-effort-ff
        \revert Stem.direction

        r8.

    }

    r2.
    \revert TupletBracket.direction

    % [Percussion.2.Music measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [Percussion.2.Music measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "On_Beat_Grace_Container"
        {

            % [Percussion.2.Music measure 5]
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
        { \number.14.Percussion.2.Music.item.1 }

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
        { \number.14.Percussion.2.Music.item.2 }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Percussion.2.Music measure 6]
          %! EXPLICIT_STAFF_LINES_COLOR
        \once \override Staff.StaffSymbol.color = #blue
          %! ONE_VOICE_COMMAND
        \oneVoice
        \override DynamicLineSpanner.staff-padding = 6
        \override Stem.direction = #down
        \override TupletBracket.direction = #up
          %! EXPLICIT_STAFF_LINES
        \stopStaff
          %! EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 1
          %! EXPLICIT_STAFF_LINES
        \startStaff
        d'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        - \tweak self-alignment-X -0.9
          %! EXPLICIT_DYNAMIC
        \baca-effort-ff
        - \tweak staff-padding 6
        ^ \baca-boxed-slate-brush-markup

        r8.

        d'16
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-effort-ff

        r16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        d'16
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-effort-ff

        r16

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        d'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \baca-effort-f

        r4

        r16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Percussion.2.Music measure 7]
        r4

        d'16
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-effort-f

        r16

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        d'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mf

        r16

    }

    r4

    % [Percussion.2.Music measure 8]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        d'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mp

        r4

        r16

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        d'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \p

        r16

    }

    % [Percussion.2.Music measure 9]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        d'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \pp
        \revert Stem.direction

        r16

    }

    r4
    \revert TupletBracket.direction

    % [Percussion.2.Music measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [Percussion.2.Music measure 11]
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    c'2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \baca-pp-ancora
    - \tweak staff-padding 6
    ^ \baca-boxed-tam-tam-markup
    \revert DynamicLineSpanner.staff-padding

}


number.14.Percussion.2.Staff = <<

    \context Voice = "Percussion.2.Music"
    { \number.14.Percussion.2.Music }

>>


number.14.Harp.Music = {

    % [Harp.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_120
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_120
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 7
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-hp-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-hp-markup
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! EXPLICIT_STAFF_LINES
    \startStaff
    e,,1
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Harp”)"
    - \tweak stencil ##f
    ~
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-hp-markup %@%

    % [Harp.Music measure 2]
    e,,4
    - \tweak stencil ##f
    ~
    \repeatTie

    e,,8
    \repeatTie

    r8
    - \baca-damp

    r2
    \revert DynamicLineSpanner.staff-padding

    % [Harp.Music measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 2)

    % [Harp.Music measure 4]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_123
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_123
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \override DynamicLineSpanner.staff-padding = 4
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    r2.
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        <b' c''>4
        - \baca-double-flageolet
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \baca-f-ancora
        - \tweak padding 1.5
        ^ \baca-lv-markup

    }

    % [Harp.Music measure 5]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_124
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_124
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

    <b, c df!>2
    :32
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
    \>

    r4
      %! SPANNER_STOP
    \!
    \revert DynamicLineSpanner.staff-padding

    % [Harp.Music measure 6]
    \override DynamicLineSpanner.staff-padding = 7
    e,,1
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    - \tweak stencil ##f
    ~

    % [Harp.Music measure 7]
    e,,1
    - \tweak stencil ##f
    ~
    \repeatTie

    % [Harp.Music measure 8]
    e,,1
    - \tweak stencil ##f
    ~
    \repeatTie

    % [Harp.Music measure 9]
    e,,4
    - \tweak stencil ##f
    ~
    \repeatTie

    e,,8
    \repeatTie

    r8
    - \baca-damp

    r2

    % [Harp.Music measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 2)

    % [Harp.Music measure 11]
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    f,,2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    \revert DynamicLineSpanner.staff-padding

}


number.14.Harp.Staff = <<

    \context Voice = "Harp.Music"
    { \number.14.Harp.Music }

>>


number.14.Viola.Music.item.1 = {

    \voiceTwo
    df!2.
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation

}


number.14.Viola.Music = {

    % [Viola.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "alto"
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 4
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-va-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-va-markup
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! EXPLICIT_STAFF_LINES
    \startStaff
    r2
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Viola”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-va-markup %@%

    \override NoteHead.style = #'harmonic
    \afterGrace
    ds!4
    :32
    _ \baca-string-iv-markup
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mp
          %! SPANNER_STOP
        \bacaStopTextSpanSCP
        \revert NoteHead.style

    }


    r4

    % [Viola.Music measure 2]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [Viola.Music measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    % [Viola.Music measure 4]
    \override NoteHead.style = #'harmonic-black
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        df!4
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \f
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
        - \baca-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
        - \tweak staff-padding 5.5
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
        \>

        df!4
        - \accent

    }

    % [Viola.Music measure 5]
    df!4
    - \accent

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
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola.Music"
        { \number.14.Viola.Music.item.1 }

    >>

      %! ONE_VOICE_COMMAND
    \oneVoice
    r4
      %! SPANNER_STOP
    \!
    \revert NoteHead.style

    % [Viola.Music measure 6]
    \override NoteHead.style = #'harmonic
    \afterGrace
    ds!1
    :32
    _ \baca-string-iv-markup
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mp
          %! SPANNER_STOP
        \bacaStopTextSpanSCP

    }


    % [Viola.Music measure 7]
    r2.

    \afterGrace
    ds!4
    :32
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mf
          %! SPANNER_STOP
        \bacaStopTextSpanSCP

    }


    % [Viola.Music measure 8]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [Viola.Music measure 9]
    \afterGrace
    ds!4
    :32
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \f
          %! SPANNER_STOP
        \bacaStopTextSpanSCP

    }


    r2

    \afterGrace
    ds!4
    :32
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \ff
          %! SPANNER_STOP
        \bacaStopTextSpanSCP
        \revert NoteHead.style

    }


    % [Viola.Music measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    % [Viola.Music measure 11]
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    d'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \ppp
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "½ clt"
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
      %! SPANNER_START
    - \tweak staff-padding 8
      %! SPANNER_START
    \bacaStartTextSpanHalfCLT
    \glissando

    ef'!16
    ]

    r16

    d'4
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    ef'!8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    d'16
    ]

    r16
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
      %! SPANNER_STOP
    \bacaStopTextSpanHalfCLT

}


number.14.Viola.Staff = <<

    \context Voice = "Viola.Music"
    { \number.14.Viola.Music }

>>


number.14.Cello.1.Music.item.1 = {

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
    \>

}


number.14.Cello.1.Music = {

    % [Cello.1.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "percussion"
      %! MEASURE_120
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_120
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 6
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \override TupletBracket.direction = #up
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-vc-i-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    r2.
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \p
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Cello”)"
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-i-markup %@%

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r16

        \override Stem.direction = #down
        c'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \baca-effort-ff

        r8.

    }

    % [Cello.1.Music measure 2]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8.

        c'16
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-effort-ff
        \revert Stem.direction

        r16

    }

    r4
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    % [Cello.1.Music measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [Cello.1.Music measure 4]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_123
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_123
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 4
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
    a,8.
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
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16
    - \baca-stop-on-string
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    r4

    a,4
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
    - \tweak stencil ##f
    ~

    a,8.
    \repeatTie

    r16
    - \baca-stop-on-string
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    % [Cello.1.Music measure 5]
    \override NoteHead.style = #'harmonic-black
    r4

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
        { \number.14.Cello.1.Music.item.1 }

    >>

      %! ONE_VOICE_COMMAND
    \oneVoice
    r4
      %! SPANNER_STOP
    \!
    \revert DynamicLineSpanner.staff-padding
    \revert NoteHead.style

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello.1.Music measure 6]
          %! EXPLICIT_CLEF
        \clef "percussion"
          %! MEASURE_125
          %! SHIFTED_CLEF
    %%% \once \override Staff.Clef.X-extent = ##f
          %! EXPLICIT_CLEF_COLOR
        \once \override Staff.Clef.color = #blue
          %! MEASURE_125
          %! SHIFTED_CLEF
    %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
          %! EXPLICIT_STAFF_LINES_COLOR
        \once \override Staff.StaffSymbol.color = #blue
        \override DynamicLineSpanner.staff-padding = 6
          %! EXPLICIT_CLEF_COLOR_CANCELLATION
        %@% \override Staff.Clef.color = ##f
        \override Stem.direction = #down
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 3
          %! EXPLICIT_CLEF
        \set Staff.forceClef = ##t
          %! EXPLICIT_STAFF_LINES
        \stopStaff
          %! EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 1
          %! EXPLICIT_STAFF_LINES
        \startStaff
        c'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \baca-effort-ff
          %! EXPLICIT_CLEF_REDRAW_COLOR
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        r8.

        c'16
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-effort-ff

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \baca-effort-f

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8.

        c'16
        :32
        - \accent
          %! REDUNDANT_DYNAMIC_COLOR
          %! REDUNDANT_DYNAMIC
        - \tweak color #(x11-color 'DeepPink1)
          %! REDUNDANT_DYNAMIC
        \baca-effort-f

        r16

    }

    % [Cello.1.Music measure 7]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8.

        c'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mf

        r16

    }

    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello.1.Music measure 8]
        c'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mp

        r4

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r4

        c'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \p
        \revert Stem.direction

    }

    r4
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

    % [Cello.1.Music measure 9]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_128
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_128
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 4
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
    r4
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    ds!8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanDamp

    r16
      %! SPANNER_STOP
    \bacaStopTextSpanDamp

    ds!8.
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanDamp

    r16
      %! SPANNER_STOP
    \bacaStopTextSpanDamp

    r4

    % [Cello.1.Music measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [Cello.1.Music measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    ds!8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \baca-pp-ancora
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanDamp

    r16
      %! SPANNER_STOP
    \bacaStopTextSpanDamp

    ds!4
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    ds8.
    \repeatTie

    r16
      %! SPANNER_STOP
    \bacaStopTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

}


number.14.Cello.1.Staff = <<

    \context Voice = "Cello.1.Music"
    { \number.14.Cello.1.Music }

>>


number.14.Cello.2.Music = {

    % [Cello.2.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "percussion"
      %! MEASURE_120
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_120
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 6
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \override TupletBracket.direction = #up
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-vc-ii-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    r2
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \p
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Cello”)"
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup %@%

    r16

    \override Stem.direction = #down
    c'16
    :32
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-ff

    r8

    r4

    % [Cello.2.Music measure 2]
    r4

    r16

    c'16
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-effort-ff

    r8

    r16

    c'16
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-effort-ff
    \revert Stem.direction

    r8

    r4
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    % [Cello.2.Music measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [Cello.2.Music measure 4]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_123
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_123
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 4
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
    g,8.
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
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16
    - \baca-stop-on-string
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    r4

    g,4
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
    - \tweak stencil ##f
    ~

    g,8.
    \repeatTie

    r16
    - \baca-stop-on-string
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Cello.2.Music measure 5]
        \override DynamicLineSpanner.staff-padding = 6
        \override TupletBracket.direction = #up
        r2

          %! EXPLICIT_CLEF
        \clef "percussion"
          %! EXPLICIT_CLEF_COLOR
        \once \override Staff.Clef.color = #blue
          %! EXPLICIT_STAFF_LINES_COLOR
        \once \override Staff.StaffSymbol.color = #blue
        \once \override Stem.direction = #down
        \once \override TupletBracket.direction = #up
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
        c'8
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \baca-effort-ff
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
          %! EXPLICIT_CLEF_REDRAW_COLOR
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        r4.
        \revert TupletBracket.direction

    }

    % [Cello.2.Music measure 6]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    c'16
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-effort-ff

    r8.

    c'16
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-effort-ff

    r8.

    r8
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation

    c'16
    :32
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f

    r16

    r4

    % [Cello.2.Music measure 7]
    r8

    c'16
    :32
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf

    r16

    r2

    c'16
    :32
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp

    r8.

    % [Cello.2.Music measure 8]
    r2

    c'16
    :32
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p

    r8.

    r4

    % [Cello.2.Music measure 9]
    r4

    r8

    c'16
    :32
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
    \revert Stem.direction

    r16

    r2
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    % [Cello.2.Music measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [Cello.2.Music measure 11]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_130
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_130
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 4
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
    cs!8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \baca-pp-ancora
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanDamp
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16
      %! SPANNER_STOP
    \bacaStopTextSpanDamp

    cs!4
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    cs8.
    \repeatTie

    r16
      %! SPANNER_STOP
    \bacaStopTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

}


number.14.Cello.2.Staff = <<

    \context Voice = "Cello.2.Music"
    { \number.14.Cello.2.Music }

>>


number.14.Contrabass.1.Music.item.1 = {

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
    \>

}


number.14.Contrabass.1.Music = {

    % [Contrabass.1.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "bass"
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 4
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-cb-i-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! EXPLICIT_STAFF_LINES
    \startStaff
    r2
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \p
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Contrabass”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-cb-i-markup %@%

    \override NoteHead.style = #'harmonic
    \afterGrace
    f4
    :32
    _ \baca-string-iv-markup
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mp
          %! SPANNER_STOP
        \bacaStopTextSpanSCP
        \revert NoteHead.style

    }


    r4

    % [Contrabass.1.Music measure 2]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [Contrabass.1.Music measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [Contrabass.1.Music measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    gs,!8.
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

    r16
    - \baca-stop-on-string
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    r4

    gs,!4
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
    - \tweak stencil ##f
    ~

    gs,8.
    \repeatTie

    r16
    - \baca-stop-on-string
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    % [Contrabass.1.Music measure 5]
    \override NoteHead.style = #'harmonic-black
    r4

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
        { \number.14.Contrabass.1.Music.item.1 }

    >>

      %! ONE_VOICE_COMMAND
    \oneVoice
    r4
      %! SPANNER_STOP
    \!
    \revert NoteHead.style

    % [Contrabass.1.Music measure 6]
    \override NoteHead.style = #'harmonic
    \afterGrace
    f1
    :32
    _ \baca-string-iv-markup
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mp
          %! SPANNER_STOP
        \bacaStopTextSpanSCP

    }


    % [Contrabass.1.Music measure 7]
    r2

    \afterGrace
    f4
    :32
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mf
          %! SPANNER_STOP
        \bacaStopTextSpanSCP

    }


    r4

    % [Contrabass.1.Music measure 8]
    r2.

    \afterGrace
    f4
    :32
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \f
          %! SPANNER_STOP
        \bacaStopTextSpanSCP

    }


    % [Contrabass.1.Music measure 9]
    r2.

    \afterGrace
    f4
    :32
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \ff
          %! SPANNER_STOP
        \bacaStopTextSpanSCP
        \revert NoteHead.style

    }


    % [Contrabass.1.Music measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [Contrabass.1.Music measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    e'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \ppp
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "½ clt"
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
      %! SPANNER_START
    - \tweak staff-padding 8
      %! SPANNER_START
    \bacaStartTextSpanHalfCLT
    \glissando

    ds'!16
    ]

    r16

    e'4
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    ds'!8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    e'16
    ]

    r16
    \revert DynamicLineSpanner.staff-padding

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
      %! SPANNER_STOP
    \bacaStopTextSpanHalfCLT

}


number.14.Contrabass.1.Staff = <<

    \context Voice = "Contrabass.1.Music"
    { \number.14.Contrabass.1.Music }

>>


number.14.Contrabass.2.Music = {

    % [Contrabass.2.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "bass"
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 4
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-cb-ii-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! EXPLICIT_STAFF_LINES
    \startStaff
    r2
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \p
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Contrabass”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup %@%

    \override NoteHead.style = #'harmonic
    \afterGrace
    ds!4
    :32
    _ \baca-string-iv-markup
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mp
          %! SPANNER_STOP
        \bacaStopTextSpanSCP
        \revert NoteHead.style

    }


    r4

    % [Contrabass.2.Music measure 2]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [Contrabass.2.Music measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 2)

    % [Contrabass.2.Music measure 4]
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    fs,!8.
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

    r16
    - \baca-stop-on-string
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    r4

    fs,!4
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
    - \tweak stencil ##f
    ~

    fs,8.
    \repeatTie

    r16
    - \baca-stop-on-string
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    % [Contrabass.2.Music measure 5]
    r2

    b2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-damp-markup
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanDamp

    % [Contrabass.2.Music measure 6]
    \override NoteHead.style = #'harmonic
    \afterGrace
    ds!1
    :32
    _ \baca-string-iv-markup
      %! SPANNER_STOP
    \bacaStopTextSpanDamp
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mp
          %! SPANNER_STOP
        \bacaStopTextSpanSCP

    }


    % [Contrabass.2.Music measure 7]
    r2.

    \afterGrace
    ds!4
    :32
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mf
          %! SPANNER_STOP
        \bacaStopTextSpanSCP

    }


    % [Contrabass.2.Music measure 8]
    r2

    \afterGrace
    ds!4
    :32
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \f
          %! SPANNER_STOP
        \bacaStopTextSpanSCP

    }


    r4

    % [Contrabass.2.Music measure 9]
    r2.

    \afterGrace
    ds!4
    :32
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 3
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
    \<
    \glissando
    {

        e8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \ff
          %! SPANNER_STOP
        \bacaStopTextSpanSCP
        \revert NoteHead.style

    }


    % [Contrabass.2.Music measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 2)

    % [Contrabass.2.Music measure 11]
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    cs'!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \ppp
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "½ clt"
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
      %! SPANNER_START
    - \tweak staff-padding 8
      %! SPANNER_START
    \bacaStartTextSpanHalfCLT
    \glissando

    d'16
    ]

    r16

    cs'!4
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    d'8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    cs'!16
    ]

    r16
    \revert DynamicLineSpanner.staff-padding

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
      %! SPANNER_STOP
    \bacaStopTextSpanHalfCLT

}


number.14.Contrabass.2.Staff = <<

    \context Voice = "Contrabass.2.Music"
    { \number.14.Contrabass.2.Music }

>>
