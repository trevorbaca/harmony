\version "2.25.16"

number.24.Skips = {

    % [Skips measure 1]
      %! RED_START_BAR
    %@% \baca-thick-red-bar-line
      %! RED_START_BAR
    %@% \tweak break-visibility ##(#t #t #f)
      %! RED_START_BAR
    %@% \tweak color #red
      %! RED_START_BAR
    %@% \mark \markup \with-dimensions-from \null "24"
    s1 * 4/4
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #1 #1 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #1 #1 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #1 #2 #0 #'(1 . 1) #blue
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
    %@% - \baca-start-ct-left-only "[11'09'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "1"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "217"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-left-only "[X.1-3]"
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
    %@% - \baca-start-ct-left-only "[11'14'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "2"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "218"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 3]
    s1 * 4/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[11'19'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "3"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "219"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 4]
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
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #2 #3 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #2 #3 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #2 #3 #2 #0 #'(1 . 1) #blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "72"
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_STRIPPED
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[11'24'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "4"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "220"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-colored-left-only "[<V.6]" #darkgreen
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 5]
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
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #2 #1 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation #2 #0 #1 #"48" #2 #1 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #2 #1 #2 #0 #'(1 . 1) #blue
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
    %@% - \baca-start-ct-left-only "[11'26'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "5"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "221"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-left-only "[X.4-5]"
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 6]
    s1 * 4/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[11'31'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "6"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "222"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 7]
    s1 * 4/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! STAGE_NUMBER
    \bacaStopTextSpanSNM
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[11'36'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "7"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "223"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-left-only "[X.6-8]"
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 8]
    s1 * 4/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[11'41'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "8"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "224"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 9]
    s1 * 5/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-both "[11'46'']" "[11'52'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "9"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "225"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

      %! ANCHOR_SKIP
    % [anchor skip]
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


number.24.TimeSignatures = {

    % [TimeSignatures measure 1]
      %! REAPPLIED_TIME_SIGNATURE_COLOR
    \baca-time-signature-color  #(x11-color 'green4)
      %! REAPPLIED_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "1"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "217"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [TimeSignatures measure 2]
    s1 * 4/4
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "2"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "218"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [TimeSignatures measure 3]
    s1 * 4/4
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "3"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "219"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [TimeSignatures measure 4]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "4"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "220"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [TimeSignatures measure 5]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "5"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "221"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [TimeSignatures measure 6]
    s1 * 4/4
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "6"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "222"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [TimeSignatures measure 7]
    s1 * 4/4
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "7"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "223"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [TimeSignatures measure 8]
    s1 * 4/4
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "8"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "224"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [TimeSignatures measure 9]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    s1 * 5/4
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "9"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "225"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [anchor skip]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/4
      %! ANCHOR_SKIP
    s1 * 1/4
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN

}


number.24.Rests = {

    % [Rests measure 1]
    R1 * 4/4

    % [Rests measure 2]
    R1 * 4/4

    % [Rests measure 3]
    R1 * 4/4

    % [Rests measure 4]
    R1 * 3/4

    % [Rests measure 5]
    R1 * 4/4

    % [Rests measure 6]
    R1 * 4/4

    % [Rests measure 7]
    R1 * 4/4

    % [Rests measure 8]
    R1 * 4/4

    % [Rests measure 9]
    R1 * 5/4

}


number.24.BassFlute.Music = {

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
    f'''8
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“BassFlute”)"
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 9
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-bfl-markup %@%

    f'''8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 9
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
    \>
    - \tweak stencil ##f
    ~

    f'''16
    \repeatTie

    r8.
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    f'''8
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 9
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    f'''8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 9
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
    \>
    - \tweak stencil ##f
    ~

    f'''16
    \repeatTie

    r8.
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    % [BassFlute.Music measure 2]
    f'''8
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 9
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    f'''8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 9
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
    \>
    - \tweak stencil ##f
    ~

    f'''16
    \repeatTie

    r8.
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    f'''8
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 9
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    f'''8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 9
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
    \>
    - \tweak stencil ##f
    ~

    f'''16
    \repeatTie

    r8.
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    % [BassFlute.Music measure 3]
    f'''8
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 9
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    f'''8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 9
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
    \>
    - \tweak stencil ##f
    ~

    f'''16
    \repeatTie

    r8.
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    f'''8
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 9
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    f'''8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 9
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
    \>
    - \tweak stencil ##f
    ~

    f'''16
    \repeatTie

    r8.
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    % [BassFlute.Music measure 4]
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"

    % [BassFlute.Music measure 5]
    fs'''!8
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    fs'''!8
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    fs'''!8
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    % [BassFlute.Music measure 6]
    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    fs'''!8
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    fs'''!8
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    fs'''!8
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    % [BassFlute.Music measure 7]
    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    fs'''!8
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    fs'''!8
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    % [BassFlute.Music measure 8]
    fs'''!8
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    fs'''!8
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    fs'''!8
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    % [BassFlute.Music measure 9]
    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    fs'''!8
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    fs'''!8
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan

    fs'''!8
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! SPANNER_START
    - \tweak staff-padding 10
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan

    fs'''!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T"
      %! SPANNER_START
    - \baca-text-spanner-right-text "A"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 10
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
    \>

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_STOP
    \stopTrillSpan
    \revert DynamicLineSpanner.staff-padding

}


number.24.BassFlute.Staff = <<

    \context GlobalRests = "Rests"
    { \number.24.Rests }

    \context Voice = "BassFlute.Music"
    { \number.24.BassFlute.Music }

>>


number.24.Percussion.1.Music = {

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
      %! REAPPLIED_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-perc-i-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
      %! REAPPLIED_STAFF_LINES
    \stopStaff
      %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! REAPPLIED_STAFF_LINES
    \startStaff
    d'4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    - \tweak staff-padding 6
    ^ \baca-boxed-slate-scrape-markup
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Percussion”)"
    - \tweak stencil ##f
    ~
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-i-markup %@%

    d'16
    \repeatTie

    r8.

    d'4
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    % [Percussion.1.Music measure 2]
    d'4
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    d'4
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    % [Percussion.1.Music measure 3]
    d'4
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    d'4
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie
    \revert Stem.direction

    r8.
    \revert TupletBracket.direction

    % [Percussion.1.Music measure 4]
    \once \override Stem.direction = #up
    d'2.
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \baca-pp-ancora
    - \tweak staff-padding 6
    ^ \baca-boxed-triangle-markup

    % [Percussion.1.Music measure 5]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \baca-p-sempre
    - \tweak staff-padding 6
    ^ \baca-boxed-slate-scrape-markup

    r16

    r8

    d'8
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    d'8.

    r16

    % [Percussion.1.Music measure 6]
    r8

    d'8
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    d'8.

    r16

    r8

    d'8
    - \tweak stencil ##f
    ~

    % [Percussion.1.Music measure 7]
    d'16
    \repeatTie

    r8.

    d'8.

    r16

    r8

    d'8
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    % [Percussion.1.Music measure 8]
    d'8.

    r16

    r8

    d'8
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    d'8.

    r16

    % [Percussion.1.Music measure 9]
    r8

    d'8
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    d'8.

    r16

    r8

    d'8
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie
    \revert Stem.direction

    r8.
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

}


number.24.Percussion.1.Staff = <<

    \context Voice = "Percussion.1.Music"
    { \number.24.Percussion.1.Music }

>>


number.24.Percussion.2.Music = {

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
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
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
    b8
    - \tweak staff-padding 6
    ^ \baca-boxed-bd-superball-markup
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Percussion”)"
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
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup %@%

    r8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf

    r4

    r8

    b8
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

    r8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf

    b16
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
    ~

    % [Percussion.2.Music measure 2]
    b16

    r8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf

    r4

    r16

    b16
    [
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
    ~

    b16
    ]

    r16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf

    r4

    % [Percussion.2.Music measure 3]
    r8.

    b16
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
    ~

    b16

    r8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf

    b8
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
    \revert Stem.direction

    r8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf

    r4
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    % [Percussion.2.Music measure 4]
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"

    % [Percussion.2.Music measure 5]
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \once \override Stem.direction = #down
    \override DynamicLineSpanner.staff-padding = 5
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3
      %! EXPLICIT_STAFF_LINES
    \startStaff
    e'16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \ff
    - \tweak staff-padding 5
    ^ \baca-boxed-purpleheart-markup

    r8.

    r2.
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

    % [Percussion.2.Music measure 6]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [Percussion.2.Music measure 7]
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 6
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    c'1
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    - \tweak staff-padding 6
    ^ \baca-boxed-tam-tam-markup
    \glissando

    % [Percussion.2.Music measure 8]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    c'1

    % [Percussion.2.Music measure 9]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    c'1
    :32
    \revert DynamicLineSpanner.staff-padding
    \revert Stem.direction
    \revert TupletBracket.direction

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 3/2
    {

          %! EXPLICIT_STAFF_LINES_COLOR
        \once \override Staff.StaffSymbol.color = #blue
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 0.5
          %! EXPLICIT_STAFF_LINES
        \stopStaff
          %! EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 3
          %! EXPLICIT_STAFF_LINES
        \startStaff
        r4

        \once \override DynamicLineSpanner.staff-padding = 5
        \once \override Stem.direction = #down
        e'8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \ff
        - \tweak self-alignment-X 1
        - \tweak staff-padding 5
        ^ \baca-boxed-purpleheart-markup
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
        - \baca-dashed-line-with-hook
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
        - \baca-text-spanner-left-text "MM"
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
        - \tweak staff-padding 10.5
          %! METRIC_MODULATION_SPANNER
          %! SPANNER_START
        \bacaStartTextSpanMetricModulation
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding

    }

      %! ANCHOR_NOTE
    % [Percussion.2.Music anchor note]
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
      %! METRIC_MODULATION_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation

}


number.24.Percussion.2.Staff = <<

    \context Voice = "Percussion.2.Music"
    { \number.24.Percussion.2.Music }

>>


number.24.Harp.Music = {

    % [Harp.Music measure 1]
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
    a'16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-pdlt-markup
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Harp”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-hp-markup %@%

    r8.

    r4

    r8

    a'16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    \laissezVibrer

    r16

    r8.

    a'16
    \laissezVibrer

    % [Harp.Music measure 2]
    r2

    r16

    a'16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
    \laissezVibrer

    r8

    r4

    % [Harp.Music measure 3]
    r8.

    a'16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    \laissezVibrer

    r4

    a'16
    \laissezVibrer

    r8.

    r4
    \revert DynamicLineSpanner.staff-padding

    % [Harp.Music measure 4]
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"

    % [Harp.Music measure 5]
      %! EXPLICIT_CLEF
    \clef "percussion"
      %! MEASURE_221
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_221
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
    c'8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \baca-p-sempre
    - \tweak staff-padding 6
    ^ \baca-whisk-markup
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 2)
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16

    r8

    c'8
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r8.

    c'8.

    r16

    % [Harp.Music measure 6]
    r8

    c'8
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r8.

    c'8.

    r16

    r8

    c'8
    - \tweak stencil ##f
    ~

    % [Harp.Music measure 7]
    c'16
    \repeatTie

    r8.

    c'8.

    r16

    r8

    c'8
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r8.

    % [Harp.Music measure 8]
    c'8.

    r16

    r8

    c'8
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r8.

    c'8.

    r16

    % [Harp.Music measure 9]
    r8

    c'8
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r8.

    c'8.

    r16

    r8

    c'8
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie
    \revert Stem.direction

    r8.
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

}


number.24.Harp.Staff = <<

    \context Voice = "Harp.Music"
    { \number.24.Harp.Music }

>>


number.24.Viola.Music = {

    % [Viola.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "alto"
      %! MEASURE_217
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_217
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 4
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
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
      %! SPANNER_START
    \pitchedTrill
    f'4 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Viola”)"
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan g'
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-va-markup %@%

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    f'4 * 1/2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

    r2
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan

    r8

      %! SPANNER_START
    \pitchedTrill
    f'8
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan g'

    % [Viola.Music measure 2]
    f'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan

    r2

      %! SPANNER_START
    \pitchedTrill
    f'4 * 1/2
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
    \<
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan g'

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    f'4 * 1/2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

    % [Viola.Music measure 3]
    r2
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan

    r8

      %! SPANNER_START
    \pitchedTrill
    f'8
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan g'

    f'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan

    % [Viola.Music measure 4]
    \afterGrace
    d'2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T2"
      %! SPANNER_START
    - \baca-text-spanner-right-text "T4"
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
    \>
    \glissando
    {

        cs'!8
          %! SPANNER_STOP
        \!
          %! SPANNER_STOP
        \bacaStopTextSpanSCP

    }


    % [Viola.Music measure 5]
    fs!4
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \pp
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs!8
    :32
    [

    fs!8
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P4"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs!4
    :32

    fs!16
    :32
    [

    fs!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    % [Viola.Music measure 6]
    fs!4
    :32

    fs!16
    :32
    [

    fs!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P3"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs!2
    :32

    % [Viola.Music measure 7]
    fs!8
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-pp-parenthesized
    [
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    fs!8
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs!8.
    :32
    [

    fs!16
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs!2
    :32

    % [Viola.Music measure 8]
    fs!8.
    :32
    [

    fs!16
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "O"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs!2
    :32

    fs!4
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    % [Viola.Music measure 9]
    fs!4
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    fs!8
    :32
    [

    fs!8
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs!16
    :32
    [

    fs!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P3"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P2"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs!2
    :32
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

}


number.24.Viola.Staff = <<

    \context Voice = "Viola.Music"
    { \number.24.Viola.Music }

>>


number.24.Cello.1.Music = {

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 3/2
    {

        % [Cello.1.Music measure 1]
          %! EXPLICIT_CLEF
        \clef "treble"
          %! MEASURE_217
          %! SHIFTED_CLEF
    %%% \once \override Staff.Clef.X-extent = ##f
          %! EXPLICIT_CLEF_COLOR
        \once \override Staff.Clef.color = #blue
          %! MEASURE_217
          %! SHIFTED_CLEF
    %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
          %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
        %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
          %! EXPLICIT_STAFF_LINES_COLOR
        \once \override Staff.StaffSymbol.color = #blue
        \override DynamicLineSpanner.staff-padding = 4
          %! EXPLICIT_CLEF_COLOR_CANCELLATION
        %@% \override Staff.Clef.color = ##f
        \override TupletBracket.direction = #down
          %! EXPLICIT_CLEF
        \set Staff.forceClef = ##t
        \set Staff.instrumentName = \harmony-vc-i-markup
          %! -PARTS
          %! REAPPLIED_SHORT_INSTRUMENT_NAME
        \set Staff.shortInstrumentName = \harmony-vc-i-markup
          %! EXPLICIT_STAFF_LINES
        \stopStaff
          %! EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 5
          %! EXPLICIT_STAFF_LINES
        \startStaff
        f'4
        - \baca-staccati #3
          %! REAPPLIED_DYNAMIC_COLOR
          %! REAPPLIED_DYNAMIC
        - \tweak color #(x11-color 'green4)
          %! REAPPLIED_DYNAMIC
        \pp
          %! REAPPLIED_INSTRUMENT_ALERT
        %@% ^ \baca-reapplied-instrument-markup "(“Cello”)"
          %! SPANNER_START
        - \baca-dashed-line-with-hook
          %! SPANNER_START
        - \baca-text-spanner-left-text "P"
          %! SPANNER_START
        - \tweak staff-padding 3
          %! SPANNER_START
        \bacaStartTextSpanSCP
          %! EXPLICIT_CLEF_REDRAW_COLOR
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
          %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
        %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
          %! -PARTS
          %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
        \set Staff.shortInstrumentName = \harmony-vc-i-markup %@%

        f'4
        - \baca-staccati #3

        f'4
        - \baca-staccati #3

    }

    r4
      %! SPANNER_STOP
    \bacaStopTextSpanSCP

    r8

      %! SPANNER_START
    \pitchedTrill
    f'8
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan g'

    % [Cello.1.Music measure 2]
    f'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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
    \repeatTie

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan

    r2

      %! SPANNER_START
    \pitchedTrill
    f'4 * 1/2
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
    \<
    - \tweak stencil ##f
    ~
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan g'

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    f'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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
    \repeatTie

    % [Cello.1.Music measure 3]
    r2
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_STOP
    \stopTrillSpan

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 3/2
    {

        r4

        f'4
        - \baca-staccati #3
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
          %! SPANNER_START
        - \baca-dashed-line-with-hook
          %! SPANNER_START
        - \baca-text-spanner-left-text "P"
          %! SPANNER_START
        - \tweak staff-padding 3
          %! SPANNER_START
        \bacaStartTextSpanSCP

        f'4
        - \baca-staccati #3
        \revert TupletBracket.direction

    }

    % [Cello.1.Music measure 4]
    f'4
    - \baca-staccati #3

    r2
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation
      %! SPANNER_STOP
    \bacaStopTextSpanSCP

    % [Cello.1.Music measure 5]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_221
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_221
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    fs,!2.
    :32
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P3"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP
    \glissando
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs,!4
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    % [Cello.1.Music measure 6]
    fs,!4
    :32

    fs,!8.
    :32
    [

    fs,!16
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P4"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!8.
    :32
    [

    fs,!16
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    % [Cello.1.Music measure 7]
    fs,!2.
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-pp-parenthesized
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    fs,!4
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P3"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    % [Cello.1.Music measure 8]
    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    % [Cello.1.Music measure 9]
    fs,!4
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    fs,!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "O"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!16
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P3"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs,!4
    :32
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

}


number.24.Cello.1.Staff = <<

    \context Voice = "Cello.1.Music"
    { \number.24.Cello.1.Music }

>>


number.24.Cello.2.Music = {

    % [Cello.2.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_217
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_217
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 4
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-vc-ii-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! EXPLICIT_STAFF_LINES
    \startStaff
      %! SPANNER_START
    \pitchedTrill
    f'4 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Cello”)"
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan g'
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup %@%

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    f'4 * 1/2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

    r2
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan

    r8

      %! SPANNER_START
    \pitchedTrill
    f'8
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan g'

    % [Cello.2.Music measure 2]
    f'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan

    r2

      %! SPANNER_START
    \pitchedTrill
    f'4 * 1/2
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
    \<
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan g'

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    f'4 * 1/2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

    % [Cello.2.Music measure 3]
    r2
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan

    r8

      %! SPANNER_START
    \pitchedTrill
    f'8
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan g'

    f'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

      %! EXPLICIT_CLEF
    \clef "bass"
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [Cello.2.Music measure 4]
    \afterGrace
    d2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T2"
      %! SPANNER_START
    - \baca-text-spanner-right-text "T4"
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
    \>
    \glissando
    {

        cs!8
          %! SPANNER_STOP
        \!
          %! SPANNER_STOP
        \bacaStopTextSpanSCP

    }


    % [Cello.2.Music measure 5]
    fs,!2
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \pp
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P3"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    % [Cello.2.Music measure 6]
    fs,!2
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!2
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P4"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    % [Cello.2.Music measure 7]
    fs,!4
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-pp-parenthesized
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P3"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    % [Cello.2.Music measure 8]
    fs,!4
    :32

    fs,!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!16
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "O"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    % [Cello.2.Music measure 9]
    fs,!2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P1"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs,!2
    :32
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

}


number.24.Cello.2.Staff = <<

    \context Voice = "Cello.2.Music"
    { \number.24.Cello.2.Music }

>>


number.24.Contrabass.1.Music = {

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 3/2
    {

        % [Contrabass.1.Music measure 1]
          %! EXPLICIT_CLEF
        \clef "treble"
          %! MEASURE_217
          %! SHIFTED_CLEF
    %%% \once \override Staff.Clef.X-extent = ##f
          %! EXPLICIT_CLEF_COLOR
        \once \override Staff.Clef.color = #blue
          %! MEASURE_217
          %! SHIFTED_CLEF
    %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
          %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
        %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
          %! EXPLICIT_STAFF_LINES_COLOR
        \once \override Staff.StaffSymbol.color = #blue
        \override DynamicLineSpanner.staff-padding = 4
          %! EXPLICIT_CLEF_COLOR_CANCELLATION
        %@% \override Staff.Clef.color = ##f
        \override TupletBracket.direction = #down
          %! EXPLICIT_CLEF
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
        e'4
        - \baca-staccati #3
          %! REAPPLIED_DYNAMIC_COLOR
          %! REAPPLIED_DYNAMIC
        - \tweak color #(x11-color 'green4)
          %! REAPPLIED_DYNAMIC
        \pp
          %! REAPPLIED_INSTRUMENT_ALERT
        %@% ^ \baca-reapplied-instrument-markup "(“Contrabass”)"
          %! SPANNER_START
        - \baca-dashed-line-with-hook
          %! SPANNER_START
        - \baca-text-spanner-left-text "P"
          %! SPANNER_START
        - \tweak staff-padding 3
          %! SPANNER_START
        \bacaStartTextSpanSCP
          %! EXPLICIT_CLEF_REDRAW_COLOR
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
          %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
        %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
          %! -PARTS
          %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
        \set Staff.shortInstrumentName = \harmony-cb-i-markup %@%

        e'4
        - \baca-staccati #3

        e'4
        - \baca-staccati #3

    }

    r4
      %! SPANNER_STOP
    \bacaStopTextSpanSCP

    r8

      %! SPANNER_START
    \pitchedTrill
    e'8
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan f'

    % [Contrabass.1.Music measure 2]
    e'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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
    \repeatTie

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan

    r2

      %! SPANNER_START
    \pitchedTrill
    e'4 * 1/2
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
    \<
    - \tweak stencil ##f
    ~
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan f'

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    e'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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
    \repeatTie

    % [Contrabass.1.Music measure 3]
    r2
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_STOP
    \stopTrillSpan

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 3/2
    {

        r4

        e'4
        - \baca-staccati #3
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
          %! SPANNER_START
        - \baca-dashed-line-with-hook
          %! SPANNER_START
        - \baca-text-spanner-left-text "P"
          %! SPANNER_START
        - \tweak staff-padding 3
          %! SPANNER_START
        \bacaStartTextSpanSCP

        e'4
        - \baca-staccati #3
        \revert TupletBracket.direction

    }

    % [Contrabass.1.Music measure 4]
    e'4
    - \baca-staccati #3

    r2
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation
      %! SPANNER_STOP
    \bacaStopTextSpanSCP

    % [Contrabass.1.Music measure 5]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_221
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_221
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    fs,!2
    :32
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP
    \glissando
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    % [Contrabass.1.Music measure 6]
    fs,!4
    :32

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P3"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    % [Contrabass.1.Music measure 7]
    fs,!2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-pp-parenthesized
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P4"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!8.
    :32
    [

    fs,!16
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    % [Contrabass.1.Music measure 8]
    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P3"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!2
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    % [Contrabass.1.Music measure 9]
    fs,!4
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    fs,!2
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "O"
      %! SPANNER_START
    - \baca-text-spanner-right-text "P2"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs,!4
    :32
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

}


number.24.Contrabass.1.Staff = <<

    \context Voice = "Contrabass.1.Music"
    { \number.24.Contrabass.1.Music }

>>


number.24.Contrabass.2.Music = {

    % [Contrabass.2.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_217
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_217
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 4
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
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
      %! SPANNER_START
    \pitchedTrill
    e'4 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Contrabass”)"
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan f'
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup %@%

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    e'4 * 1/2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

    r2
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan

    r8

      %! SPANNER_START
    \pitchedTrill
    e'8
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan f'

    % [Contrabass.2.Music measure 2]
    e'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan

    r2

      %! SPANNER_START
    \pitchedTrill
    e'4 * 1/2
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
    \<
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan f'

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    e'4 * 1/2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

    % [Contrabass.2.Music measure 3]
    r2
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan

    r8

      %! SPANNER_START
    \pitchedTrill
    e'8
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
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \startTrillSpan f'

    e'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

      %! EXPLICIT_CLEF
    \clef "bass"
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \stopTrillSpan
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [Contrabass.2.Music measure 4]
    \afterGrace
    d'2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T2"
      %! SPANNER_START
    - \baca-text-spanner-right-text "T4"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 5.5
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
    \>
    \glissando
    {

        cs'!8
          %! SPANNER_STOP
        \!
          %! SPANNER_STOP
        \bacaStopTextSpanSCP

    }


    % [Contrabass.2.Music measure 5]
    fs,!8.
    :32
    - \accent
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \pp
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "O"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs,!16
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    % [Contrabass.2.Music measure 6]
    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P3"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!2
    :32

    fs,!8.
    :32
    [

    fs,!16
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    % [Contrabass.2.Music measure 7]
    fs,!4
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-pp-parenthesized
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    fs,!4
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P4"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    % [Contrabass.2.Music measure 8]
    fs,!4
    :32

    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P3"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!8.
    :32
    [

    fs,!16
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    % [Contrabass.2.Music measure 9]
    fs,!2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P2"
      %! SPANNER_START
    - \baca-text-spanner-right-text "O"
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs,!2
    :32
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

}


number.24.Contrabass.2.Staff = <<

    \context Voice = "Contrabass.2.Music"
    { \number.24.Contrabass.2.Music }

>>
