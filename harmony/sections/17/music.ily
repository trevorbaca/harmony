number.17.Skips = {

    % [Skips measure 1]
      %! RED_START_BAR
    %@% \baca-thick-red-bar-line
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 6/4
      %! RED_START_BAR
    %@% \tweak break-visibility ##(#t #t #f)
      %! RED_START_BAR
    %@% \tweak color #red
      %! RED_START_BAR
    %@% \mark \markup \with-dimensions-from \null "17"
    s1 * 6/4
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
    %@% - \baca-start-ct-left-only "[8'06'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "1"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "151"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-left-only "[Q.1]"
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 2]
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
    %@% - \baca-start-ct-left-only "[8'13'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "2"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "152"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-colored-left-only "[>S.1]" #darkgreen
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 3]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/4
    s1 * 1/4
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
    - \baca-start-lmn-left-only "3"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "153"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 4]
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
      %! STAGE_NUMBER
    \bacaStopTextSpanSNM
      %! CLOCK_TIME
    %@% - \baca-start-ct-left-only "[8'17'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "4"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "154"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-colored-left-only "[<O.4]" #darkgreen
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
    %@% - \baca-start-ct-left-only "[8'18'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "5"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "155"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-left-only "[Q.2]"
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 6]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/4
    s1 * 1/4
      %! -PARTS
    - \tweak extra-offset #'(4 . -30)
      %! -PARTS
    ^ \harmony-text-sixteen
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-both-left-fermata "2''" "[8'27'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "6"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "156"
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


number.17.Rests = {

    % [Rests measure 1]
    R1 * 6/4

    % [Rests measure 2]
    R1 * 4/4

    % [Rests measure 3]
    \baca-fermata-measure
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    R1 * 1/4
    ^ \baca-short-fermata-markup
      %! FERMATA_MEASURE
      %! MEASURE_153
%%% \once \override Score.BarLine.transparent = ##t
      %! FERMATA_MEASURE
      %! MEASURE_153
%%% \once \override Score.SpanBar.transparent = ##t

    % [Rests measure 4]
    R1 * 3/4

    % [Rests measure 5]
    R1 * 5/4

    % [Rests measure 6]
    \baca-fermata-measure
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    R1 * 1/4
    ^ \baca-fermata-markup
      %! FERMATA_MEASURE
      %! MEASURE_156
    \once \override Score.BarLine.transparent = ##t
      %! FERMATA_MEASURE
      %! MEASURE_156
    \once \override Score.SpanBar.transparent = ##t

}


number.17.BassFlute.Music = {

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
    d'''4
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \baca-p-ancora
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“BassFlute”)"
      %! LEFT_BROKEN
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! LEFT_BROKEN
      %! SPANNER_START
    - \baca-text-spanner-left-text "A"
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! LEFT_BROKEN
      %! SPANNER_START
    \startTextSpan
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
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-bfl-markup %@%

    d'''4

    r1
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation
      %! SPANNER_STOP
    \stopTextSpan

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9
    {

        % [BassFlute.Music measure 2]
        r32

        \override Accidental.X-offset = 0
        \override Accidental.Y-offset = -2
        \override Accidental.font-size = -3
        \override NoteHead.font-size = -3
        as'!32
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
        - \tweak staff-padding 8
          %! SPANNER_START
        \startTrillSpan

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32

        a'32
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
        - \tweak to-barline ##t
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \>

        af'!32

        g'32

        gs'!32

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32
          %! SPANNER_STOP
        \!
        ]
        \revert Accidental.X-offset
        \revert Accidental.Y-offset
        \revert Accidental.font-size
        \revert NoteHead.font-size

    }

    r2
      %! SPANNER_STOP
    \stopTrillSpan

    % [BassFlute.Music measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 0)

    % [BassFlute.Music measure 4]
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    r4

    fs'''!2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
    - \baca-text-spanner-left-text "MM"
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
    - \tweak staff-padding 9
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_START
    \bacaStartTextSpanMetricModulation
      %! SPANNER_START
    - \tweak bound-details.right.padding 2
      %! SPANNER_START
    \startTrillSpan

    % [BassFlute.Music measure 5]
    fs'''!4

    r1
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation
      %! SPANNER_STOP
    \stopTrillSpan
    \revert DynamicLineSpanner.staff-padding

    % [BassFlute.Music measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 0)

}


number.17.BassFlute.Staff = <<

    \context GlobalRests = "Rests"
    { \number.17.Rests }

    \context Voice = "BassFlute.Music"
    { \number.17.BassFlute.Music }

>>


number.17.Percussion.1.Music.item.1 = {

    \voiceTwo
    r8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \ff
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

    \once \override Dots.X-extent = ##f
    \once \override Dots.extra-offset = #'(2 . 0)
    \once \override Rest.X-extent = #'(0 . 0)
    r2
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

}


number.17.Percussion.1.Music = {

    % [Percussion.1.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "treble"
    \once \override DynamicLineSpanner.staff-padding = 4
      %! MEASURE_151
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_151
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
    e'1.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
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

    % [Percussion.1.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "percussion"
      %! MEASURE_152
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_152
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 5
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3
      %! EXPLICIT_STAFF_LINES
    \startStaff
    r4
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16

    <<

        \context Voice = "On_Beat_Grace_Container"
        {

            \override Stem.direction = #down
            \set fontSize = #-3
            \slash
            \voiceOne
            e'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            e'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            e'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            e'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            e'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            \revert Stem.direction

        }

        \context Voice = "Percussion.1.Music"
        { \number.17.Percussion.1.Music.item.1 }

    >>

    % [Percussion.1.Music measure 3]
      %! ONE_VOICE_COMMAND
    \oneVoice
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    % [Percussion.1.Music measure 4]
    \once \override DynamicLineSpanner.staff-padding = 6
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    d'2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.9
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup

    % [Percussion.1.Music measure 5]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_155
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_155
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
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
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! EXPLICIT_STAFF_LINES
    \startStaff
    r1
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    e'4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
    \revert DynamicLineSpanner.staff-padding

    % [Percussion.1.Music measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

}


number.17.Percussion.1.Staff = <<

    \context Voice = "Percussion.1.Music"
    { \number.17.Percussion.1.Music }

>>


number.17.Percussion.2.Music.item.1 = {

    \voiceTwo
    r8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \ff
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

    \once \override Dots.X-extent = ##f
    \once \override Dots.extra-offset = #'(2 . 0)
    \once \override Rest.X-extent = #'(0 . 0)
    r2
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

}


number.17.Percussion.2.Music = {

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
    \once \override LaissezVibrerTie.direction = #up
    c'1.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
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

    % [Percussion.2.Music measure 2]
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 5
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3
      %! EXPLICIT_STAFF_LINES
    \startStaff
    r4

    r16

    <<

        \context Voice = "On_Beat_Grace_Container"
        {

            \override Stem.direction = #down
            \set fontSize = #-3
            \slash
            \voiceOne
            e'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            [
            (

            e'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            e'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"

            e'8 * 2/5
              %! DURATION_MULTIPLIER
            %@% ^ \baca-duration-multiplier-markup #"2" #"5"
            )
            ]
            \revert Stem.direction

        }

        \context Voice = "Percussion.2.Music"
        { \number.17.Percussion.2.Music.item.1 }

    >>

    % [Percussion.2.Music measure 3]
      %! ONE_VOICE_COMMAND
    \oneVoice
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [Percussion.2.Music measure 4]
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 6
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"

    % [Percussion.2.Music measure 5]
    \override TupletBracket.direction = #up
    r1

    \once \override Stem.direction = #down
    c'4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    % [Percussion.2.Music measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

}


number.17.Percussion.2.Staff = <<

    \context Voice = "Percussion.2.Music"
    { \number.17.Percussion.2.Music }

>>


number.17.Harp.Music = {

    % [Harp.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "bass"
    \once \override DynamicLineSpanner.staff-padding = 5
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! EXPLICIT_OTTAVA_COLOR
    \once \override Staff.OttavaBracket.color = #blue
    \once \override Staff.OttavaBracket.staff-padding = 8
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
      %! EXPLICIT_OTTAVA
    \ottava -1
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \override Staff.OttavaBracket.staff-padding = 8
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
    df,,!1.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    \laissezVibrer
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Harp”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-hp-markup %@%

    % [Harp.Music measure 2]
      %! EXPLICIT_OTTAVA_COLOR
    \once \override Staff.OttavaBracket.color = #blue
      %! EXPLICIT_OTTAVA
    \ottava 0
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

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
      %! MEASURE_154
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_154
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \override DynamicLineSpanner.staff-padding = 6
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    r2
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
        \revert DynamicLineSpanner.staff-padding

    }

    % [Harp.Music measure 5]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_155
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_155
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \override DynamicLineSpanner.staff-padding = 5
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \override Staff.OttavaBracket.staff-padding = 8
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    r1
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

      %! EXPLICIT_OTTAVA_COLOR
    \once \override Staff.OttavaBracket.color = #blue
      %! EXPLICIT_OTTAVA
    \ottava -1
    df,,!4
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \baca-f-ancora
    \laissezVibrer
    \revert DynamicLineSpanner.staff-padding
    \revert Staff.OttavaBracket.staff-padding
    \revert Staff.OttavaBracket.staff-padding

    % [Harp.Music measure 6]
      %! EXPLICIT_OTTAVA_COLOR
    \once \override Staff.OttavaBracket.color = #blue
      %! EXPLICIT_OTTAVA
    \ottava 0
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 2)

}


number.17.Harp.Staff = <<

    \context Voice = "Harp.Music"
    { \number.17.Harp.Music }

>>


number.17.Viola.Music = {

    % [Viola.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "alto"
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \hide NoteHead
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override Accidental.stencil = ##f
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override NoteHead.no-ledgers = ##t
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override Dots.transparent = ##t
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override Stem.transparent = ##t
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
    d'1.
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \pp
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Viola”)"
      %! LEFT_BROKEN
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! LEFT_BROKEN
      %! SPANNER_START
    - \baca-text-spanner-left-text "poco scr."
      %! LEFT_BROKEN
      %! SPANNER_START
    - \tweak staff-padding 3
      %! LEFT_BROKEN
      %! SPANNER_START
    \bacaStartTextSpanBowSpeed
    \glissando
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-va-markup %@%

    % [Viola.Music measure 2]
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override NoteColumn.glissando-skip = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    \revert Dots.transparent
    \revert Stem.transparent
    d'1

    <<

        \context Voice = "Viola.Music"
        {

            % [Viola.Music measure 3]
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
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
              %! SPANNER_STOP
            \bacaStopTextSpanBowSpeed
              %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola.Rests"
        {

            % [Viola.Rests measure 3]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 1/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        }

    >>

    % [Viola.Music measure 4]
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    f'2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "XFB"
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-left-broken-xfb-markup
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanBowSpeed

    % [Viola.Music measure 5]
    d'2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! SPANNER_STOP
    \bacaStopTextSpanBowSpeed
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "poco scr."
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanBowSpeed
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

    d'2
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola.Music"
        {

            % [Viola.Music measure 6]
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
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"
              %! SPANNER_STOP
            \!
              %! SPANNER_STOP
            \bacaStopTextSpanBowSpeed
              %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola.Rests"
        {

            % [Viola.Rests measure 6]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 1/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"1" #"4"

        }

    >>

}


number.17.Viola.Staff = <<

    \context Voice = "Viola.Music"
    { \number.17.Viola.Music }

>>


number.17.Cello.1.Music = {

    % [Cello.1.Music measure 1]
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
    r4
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \pp
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Cello”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-i-markup %@%

    r8.

    e16
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
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
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<
    ~

    e2.
    - \tweak stencil ##f
    ~

    e16
    [
    \repeatTie

    e8.
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]

    % [Cello.1.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_152
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_152
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \override NoteHead.style = #'harmonic
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    <gs''! a'' bf''!>4 * 1/2
    :32
    - \tweak staff-padding 1.5
    _ \baca-string-i-markup
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    ^ \baca-quasi-bisb-markup
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

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    \once \override DynamicText.X-offset = -3
    <gs''! a'' bf''!>4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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

    <gs''! a'' bf''!>4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <gs''! a'' bf''!>4 * 1/2
    :32
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    <gs''! a'' bf''!>4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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
    \once \override DynamicText.X-offset = -0.25
    <gs''! a'' bf''!>4 * 1/2
    :32
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
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    \revert NoteHead.style

    r4
      %! SPANNER_STOP
    \!

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
      %! MEASURE_154
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_154
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    a,2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    - \tweak stencil ##f
    ~
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

    a,8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-fff-scratch
    \repeatTie

    r16
    - \baca-stop-on-string

    % [Cello.1.Music measure 5]
    e4
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P4"
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
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    - \tweak stencil ##f
    ~

    e16
    [
    \repeatTie

    e8.
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    e8.
    [
    \repeatTie

    e16
    - \baca-staccati #3
    ]
    ~

    e8.
    [

    e16
    - \baca-staccati #3
    ]
    ~

    e16
    [

    e8.
    - \baca-staccati #3
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
    \revert DynamicLineSpanner.staff-padding

    % [Cello.1.Music measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! SPANNER_STOP
    \!

}


number.17.Cello.1.Staff = <<

    \context Voice = "Cello.1.Music"
    { \number.17.Cello.1.Music }

>>


number.17.Cello.2.Music = {

    % [Cello.2.Music measure 1]
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
    r4
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \pp
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Cello”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup %@%

    r8

    d8
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
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
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<
    - \tweak stencil ##f
    ~

    d16
    [
    \repeatTie

    d8.
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    d4
    \repeatTie

    d2
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! SPANNER_STOP
    \bacaStopTextSpanSCP

    % [Cello.2.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_152
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_152
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \override NoteHead.style = #'harmonic
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    <a'' bf''! cf'''!>4 * 1/2
    :32
    - \tweak staff-padding 1.5
    _ \baca-string-i-markup
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    ^ \baca-quasi-bisb-markup
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

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    \once \override DynamicText.X-offset = -3
    <a'' bf''! cf'''!>4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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

    <a'' bf''! cf'''!>4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <a'' bf''! cf'''!>4 * 1/2
    :32
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    <a'' bf''! cf'''!>4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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
    \once \override DynamicText.X-offset = -0.25
    <a'' bf''! cf'''!>4 * 1/2
    :32
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
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    \revert NoteHead.style

    r4
      %! SPANNER_STOP
    \!

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
      %! MEASURE_154
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_154
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    g,2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    - \tweak stencil ##f
    ~
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

    g,8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-fff-scratch
    \repeatTie

    r16
    - \baca-stop-on-string

    % [Cello.2.Music measure 5]
    d4
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P4"
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
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    - \tweak stencil ##f
    ~

    d8
    [
    \repeatTie

    d8
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    d4
    - \tweak stencil ##f
    ~
    \repeatTie

    d8
    [
    \repeatTie

    d8
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    d8
    [
    \repeatTie

    d8
    - \baca-staccati #3
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]
    \revert DynamicLineSpanner.staff-padding

    % [Cello.2.Music measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! SPANNER_STOP
    \!

}


number.17.Cello.2.Staff = <<

    \context Voice = "Cello.2.Music"
    { \number.17.Cello.2.Music }

>>


number.17.Contrabass.1.Music = {

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
      %! REAPPLIED_STAFF_LINES
    \stopStaff
      %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 5
      %! REAPPLIED_STAFF_LINES
    \startStaff
    r2.
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \ppp
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Contrabass”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-cb-i-markup %@%

    r8

    e'8
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
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
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    e'4
    - \baca-staccati #3
    - \tweak stencil ##f
    ~

    e'8
    [
    \repeatTie

    e'8
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]

    % [Contrabass.1.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_152
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_152
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \override NoteHead.style = #'harmonic
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    <b'' c''' df'''!>4 * 1/2
    :32
    - \tweak staff-padding 1.5
    _ \baca-string-iii-markup
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    ^ \baca-quasi-bisb-markup
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

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    \once \override DynamicText.X-offset = -3
    <b'' c''' df'''!>4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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

    <b'' c''' df'''!>4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <b'' c''' df'''!>4 * 1/2
    :32
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    <b'' c''' df'''!>4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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
    \once \override DynamicText.X-offset = -0.25
    <b'' c''' df'''!>4 * 1/2
    :32
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
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    \revert NoteHead.style

    r4
      %! SPANNER_STOP
    \!

    % [Contrabass.1.Music measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [Contrabass.1.Music measure 4]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_154
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_154
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    gs,!2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    - \tweak stencil ##f
    ~
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

    gs,8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-fff-scratch
    \repeatTie

    r16
    - \baca-stop-on-string

    % [Contrabass.1.Music measure 5]
    e'16
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P4"
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
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    e'8.
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    e'4
    \repeatTie

    e'2
    - \baca-staccati #3

    e'4
    - \baca-staccati #3
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    % [Contrabass.1.Music measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! SPANNER_STOP
    \!

}


number.17.Contrabass.1.Staff = <<

    \context Voice = "Contrabass.1.Music"
    { \number.17.Contrabass.1.Music }

>>


number.17.Contrabass.2.Music = {

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
      %! REAPPLIED_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
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
    d'8.
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Contrabass”)"
    [
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "T4"
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
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup %@%

    d'16
    - \baca-staccati #3
    ]
    ~

    d'8.
    [

    d'16
    - \baca-staccati #3
    ]
    ~

    d'2.
    - \tweak stencil ##f
    ~

    d'16
    [
    \repeatTie

    d'16
    - \baca-staccati #3
    ~

    d'16

    d'16
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    ]

    % [Contrabass.2.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_152
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_152
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \override NoteHead.style = #'harmonic
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    <as''! b'' c'''>4 * 1/2
    :32
    - \tweak staff-padding 1.5
    _ \baca-string-iii-markup
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    ^ \baca-quasi-bisb-markup
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

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    \once \override DynamicText.X-offset = -3
    <as''! b'' c'''>4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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

    <as''! b'' c'''>4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

      %! INVISIBLE_MUSIC_COMMAND
    %@% \abjad-invisible-music
      %! INVISIBLE_MUSIC_COLORING
    \abjad-invisible-music-coloring
    <as''! b'' c'''>4 * 1/2
    :32
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    <as''! b'' c'''>4 * 1/2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
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
    \once \override DynamicText.X-offset = -0.25
    <as''! b'' c'''>4 * 1/2
    :32
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
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    \revert NoteHead.style

    r4
      %! SPANNER_STOP
    \!

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
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_154
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_154
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! FERMATA_MEASURE_NEXT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    fs,!2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    - \tweak stencil ##f
    ~
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

    fs,8.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-fff-scratch
    \repeatTie

    r16
    - \baca-stop-on-string

    % [Contrabass.2.Music measure 5]
    d'4
    - \baca-staccati #3
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P4"
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
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>
    - \tweak stencil ##f
    ~

    d'16
    [
    \repeatTie

    d'8.
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    d'4
    \repeatTie

    d'2
    - \baca-staccati #3
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    % [Contrabass.2.Music measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! SPANNER_STOP
    \!
      %! FERMATA_MEASURE_EMPTY_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(0 . 2)

}


number.17.Contrabass.2.Staff = <<

    \context Voice = "Contrabass.2.Music"
    { \number.17.Contrabass.2.Music }

>>
