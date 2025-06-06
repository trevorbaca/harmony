\version "2.25.26"

number.5.Skips =
{

    % [Skips measure 1]
      %! RED_START_BAR
    %@% \baca-thick-red-bar-line
      %! LILYPOND_TEMPO_COMMAND
    \tempo 4=48
      %! RED_START_BAR
    %@% \tweak break-visibility ##(#t #t #f)
      %! RED_START_BAR
    %@% \tweak color #red
      %! RED_START_BAR
    %@% \mark \markup \with-dimensions-from \null "05"
    s1 * 5/4
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
    %@% - \baca-start-ct-left-only "[1'31'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "1"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "35"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-colored-left-only "[>F.3]" #darkgreen
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 2]
      %! LILYPOND_TEMPO_COMMAND
    \tempo \markup \abjad-metronome-mark-markup #2 #0 #1 #"57.6"
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
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #blue
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
    %@% - \baca-start-ct-left-only "[1'37'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "2"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "36"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-colored-left-only "[<C.4]" #darkgreen
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 3]
      %! LILYPOND_TEMPO_COMMAND
    \tempo 4=72
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
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #5 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #5 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #5 #2 #0 #'(1 . 1) #blue
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
    %@% - \baca-start-ct-left-only "[1'40'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "3"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "37"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-colored-left-only "[<D.1]" #darkgreen
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 4]
      %! LILYPOND_TEMPO_COMMAND
    \tempo 4=96
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
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(0.525 . 0.525)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% - \baca-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(1 . 1)
      %! EXPLICIT_METRONOME_MARK
      %! METRIC_MODULATION_IS_NOT_SCALED
    %@% \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(1 . 1) #blue
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
    %@% - \baca-start-ct-left-only "[1'42'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "4"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "38"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN
      %! STAGE_NUMBER
    - \baca-start-snm-left-only "[E.1-2]"
      %! STAGE_NUMBER
    \bacaStartTextSpanSNM

    % [Skips measure 5]
    s1 * 6/4
      %! CLOCK_TIME
    %@% \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    %@% - \baca-start-ct-both "[1'46'']" "[1'50'']"
      %! CLOCK_TIME
    %@% \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "5"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "39"
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


number.5.TimeSignatures =
{

    % [TimeSignatures measure 1]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    s1 * 5/4

    % [TimeSignatures measure 2]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4

    % [TimeSignatures measure 3]
    s1 * 3/4

    % [TimeSignatures measure 4]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 6/4
    s1 * 6/4

    % [TimeSignatures measure 5]
    s1 * 6/4

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
    \once \override Score.BarLine.transparent = ##t
      %! ANCHOR_SKIP
    \once \override Score.SpanBar.transparent = ##t

}


number.5.Rests =
{

    % [Rests measure 1]
    R1 * 5/4

    % [Rests measure 2]
    R1 * 3/4

    % [Rests measure 3]
    R1 * 3/4

    % [Rests measure 4]
    R1 * 6/4

    % [Rests measure 5]
    R1 * 6/4

}


number.5.BassFlute.Music =
{

    <<

        \context Voice = "BassFlute.Music"
        {

            % [BassFlute.Music measure 1]
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
            \abjad-invisible-music-coloring
              %! REAPPLIED_CLEF
            \clef "treble"
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
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
            b'1 * 5/4
              %! REAPPLIED_DYNAMIC_COLOR
              %! REAPPLIED_DYNAMIC
            - \tweak color #(x11-color 'green4)
              %! REAPPLIED_DYNAMIC
            \pp
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"5" #"4"
              %! REAPPLIED_INSTRUMENT_ALERT
            %@% ^ \baca-reapplied-instrument-markup "(“BassFlute”)"
              %! REAPPLIED_CLEF_REDRAW_COLOR
            \override Staff.Clef.color = #(x11-color 'OliveDrab)
              %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
            %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
              %! -PARTS
              %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
            \set Staff.shortInstrumentName = \harmony-bfl-markup %@%

        }

        \context Voice = "BassFlute.Rests"
        {

            % [BassFlute.Rests measure 1]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 5/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"5" #"4"

        }

    >>

    % [BassFlute.Music measure 2]
    \override DynamicLineSpanner.staff-padding = 4
    r4

    f'16
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

    r8.

    r16

    f'16

    r8

    % [BassFlute.Music measure 3]
    fs'!16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
      %! SPANNER_STOP
    \bacaStopTextSpanCovered

    r16

    fs'!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    - \tweak stencil ##f
    ~

    fs'2
    \repeatTie

    % [BassFlute.Music measure 4]
    \override NoteHead.style = #'harmonic
    f'16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \ff
    - \tweak staff-padding 4
    ^ \baca-boxed-jet-whistle-markup
    [

    f'16
    ]
    \revert NoteHead.style

    r8

    r1

    r4

    % [BassFlute.Music measure 5]
    r8.

    \override NoteHead.style = #'harmonic
    e'16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    - \tweak self-alignment-X -0.75
      %! EXPLICIT_DYNAMIC
    \baca-ff-ancora
    - \tweak staff-padding 4
    ^ \baca-boxed-jet-whistle-markup

    e'16
    \revert NoteHead.style

    r8.

    r1
    \revert DynamicLineSpanner.staff-padding

}


number.5.BassFlute.Staff =
<<

    \context GlobalRests = "Rests"
    {
        \number.5.Rests
    }

    \context Voice = "BassFlute.Music"
    {
        \number.5.BassFlute.Music
    }

>>


number.5.Percussion.1.Music =
{

    % [Percussion.1.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "percussion"
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 7
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \override TupletBracket.direction = #up
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
    r1
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \baca-f-ancora
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Percussion”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-i-markup %@%

    r8.

    \once \override Stem.direction = #down
    b16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
    - \tweak self-alignment-X 1
    - \tweak staff-padding 7
    ^ \baca-boxed-bd-superball-markup
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 5/4
    {

        % [Percussion.1.Music measure 2]
          %! EXPLICIT_STAFF_LINES_COLOR
        \once \override Staff.StaffSymbol.color = #blue
        \override DynamicLineSpanner.staff-padding = 5.5
          %! -PARTS
          %! EXPLICIT_BAR_EXTENT
        \override Staff.BarLine.bar-extent = #'(-2 . 1)
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 0.5
          %! EXPLICIT_STAFF_LINES
        \stopStaff
          %! EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 3
          %! EXPLICIT_STAFF_LINES
        \startStaff
        r16

        \override Stem.direction = #down
        a8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \p
        - \tweak staff-padding 6
        ^ \baca-boxed-purpleheart-markup
        [
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \<

        c'8

        a8

        c'8

        c'16
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 3/2
    {

        r8

        a8
        [

        c'8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \f
        ]
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 3/2
    {

        % [Percussion.1.Music measure 3]
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 0.5
        r8

        \override Stem.direction = #down
        c'8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \f
        [
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \>

        a8
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 5/4
    {

        r8

        c'8
        [

        a8

        c'8

        c'16

        a16
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \p
        ]
        \revert DynamicLineSpanner.staff-padding
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding

    }

    <<

        \context Voice = "Percussion.1.Music"
        {

            % [Percussion.1.Music measure 4]
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
            \abjad-invisible-music-coloring
              %! EXPLICIT_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #blue
              %! EXPLICIT_STAFF_LINES
            \stopStaff
              %! EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 1
              %! EXPLICIT_STAFF_LINES
            \startStaff
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
            c'1 * 6/4
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"6" #"4"
              %! -PARTS
              %! EXPLICIT_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Percussion.1.Rests"
        {

            % [Percussion.1.Rests measure 4]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 6/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"6" #"4"

        }

    >>

    % [Percussion.1.Music measure 5]
    \override DynamicLineSpanner.staff-padding = 4
    r8.

    \override Stem.direction = #up
    d'16
    :32
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \p
    - \tweak staff-padding 8
    ^ \baca-boxed-triangle-small-beater-markup
    ~

    d'1
    :32
    \glissando

      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
    \hide NoteHead
      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
    \override Accidental.stencil = ##f
      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
    \override NoteColumn.glissando-skip = ##t
      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
    \override NoteHead.no-ledgers = ##t
    d'4
    :32
    \revert DynamicLineSpanner.staff-padding
    \revert Stem.direction

      %! ANCHOR_NOTE
    % [Percussion.1.Music anchor note]
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
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
    \revert Accidental.stencil
      %! ANCHOR_NOTE
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
    \revert NoteColumn.glissando-skip
      %! ANCHOR_NOTE
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
    \revert NoteHead.no-ledgers
      %! ANCHOR_NOTE
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
    \undo \hide NoteHead
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

}


number.5.Percussion.1.Staff =
<<

    \context Voice = "Percussion.1.Music"
    {
        \number.5.Percussion.1.Music
    }

>>


number.5.Percussion.2.Music =
{

    % [Percussion.2.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "percussion"
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    \set Staff.instrumentName = \harmony-perc-ii-markup
      %! -PARTS
      %! REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
      %! REAPPLIED_STAFF_LINES
    \stopStaff
      %! REAPPLIED_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3
      %! REAPPLIED_STAFF_LINES
    \startStaff
    c'4
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \baca-f-sub
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Percussion”)"
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
    - \tweak staff-padding 5.5
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
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup %@%

    c'4
    \revert Stem.direction
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    r2
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation

    r8.

    \once \override DynamicLineSpanner.staff-padding = 7
    \once \override Stem.direction = #up
    c'16
    - \accent
    - \baca-damp
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
    - \tweak self-alignment-X 1
    - \tweak staff-padding 7
    ^ \baca-boxed-brake-drum-markup

    % [Percussion.2.Music measure 2]
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 5.5
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 3
      %! EXPLICIT_STAFF_LINES
    \startStaff
    r16

    \override Stem.direction = #down
    a8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    - \tweak staff-padding 6
    ^ \baca-boxed-purpleheart-markup
    [
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    c'16
    ]

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 7/4
    {

        r16

        c'16
        [

        a8

        c'8

        a8

        c'8

        c'8

        a8
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \f
        ]
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding

    }

    % [Percussion.2.Music measure 3]
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    r8

    \override Stem.direction = #down
    c'8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 7/4
    {

        r8

        a8
        [

        c'8

        a8

        c'8

        c'16

        a8

        c'16
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \p
        ]
        \revert DynamicLineSpanner.staff-padding
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding

    }

    <<

        \context Voice = "Percussion.2.Music"
        {

            % [Percussion.2.Music measure 4]
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
            \abjad-invisible-music-coloring
              %! EXPLICIT_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #blue
              %! EXPLICIT_STAFF_LINES
            \stopStaff
              %! EXPLICIT_STAFF_LINES
            \once \override Staff.StaffSymbol.line-count = 1
              %! EXPLICIT_STAFF_LINES
            \startStaff
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
            c'1 * 6/4
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"6" #"4"

        }

        \context Voice = "Percussion.2.Rests"
        {

            % [Percussion.2.Rests measure 4]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 6/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"6" #"4"

        }

    >>

    % [Percussion.2.Music measure 5]
    \override DynamicLineSpanner.staff-padding = 6
    \override TupletBracket.direction = #up
    r8.

    \override Stem.direction = #down
    c'16
    :32
      %! REDUNDANT_DYNAMIC_COLOR
      %! REDUNDANT_DYNAMIC
    - \tweak color #(x11-color 'DeepPink1)
      %! REDUNDANT_DYNAMIC
    \p
    - \tweak staff-padding 6
    ^ \baca-boxed-tam-tam-markup
    ~

    c'1
    :32
    \glissando

      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
    \hide NoteHead
      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
    \override Accidental.stencil = ##f
      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
    \override NoteColumn.glissando-skip = ##t
      %! RIGHT_BROKEN
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
    \override NoteHead.no-ledgers = ##t
    c'4
    :32
    \revert DynamicLineSpanner.staff-padding
    \revert Stem.direction
    \revert TupletBracket.direction

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
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
    \revert Accidental.stencil
      %! ANCHOR_NOTE
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
    \revert NoteColumn.glissando-skip
      %! ANCHOR_NOTE
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
    \revert NoteHead.no-ledgers
      %! ANCHOR_NOTE
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! RIGHT_BROKEN
    \undo \hide NoteHead
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

}


number.5.Percussion.2.Staff =
<<

    \context Voice = "Percussion.2.Music"
    {
        \number.5.Percussion.2.Music
    }

>>


number.5.Harp.Music =
{

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
    r8
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \pp
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Harp”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-hp-markup %@%

    fs'!8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-pdlt-markup

    r2.

    r8

    gs'!8
    \laissezVibrer
    \revert DynamicLineSpanner.staff-padding

    % [Harp.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_36
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_36
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \once \override Staff.Clef.whiteout = ##t
    \override DynamicLineSpanner.staff-padding = 6
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    g,,2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    - \tweak stencil ##f
    ~
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    g,,8
    \repeatTie

    r8
    - \baca-damp
    \revert DynamicLineSpanner.staff-padding

    % [Harp.Music measure 3]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_37
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_37
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \override DynamicLineSpanner.staff-padding = 4
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    cs'!4
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
    - \tweak stencil ##f
    ~
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    cs'8
    [
    \repeatTie

    cs'!8
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    ]
    - \tweak stencil ##f
    ~

    cs'4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    % [Harp.Music measure 4]
    \override DynamicLineSpanner.staff-padding = 6.5
    f'4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
    - \tweak staff-padding 4
    ^ \baca-tuning-key-glissando-markup
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

    d'4
    \glissando

    a'2
    \glissando

    g4
    \glissando

    \afterGrace 15/16
    b4
    \glissando
    {

        e8
        \revert DynamicLineSpanner.staff-padding

    }


    % [Harp.Music measure 5]
    \override DynamicLineSpanner.staff-padding = 4
    r4
      %! SPANNER_STOP
    \!

    ef'!2.
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f

    r2
    - \baca-damp
    \revert DynamicLineSpanner.staff-padding

}


number.5.Harp.Staff =
<<

    \context Voice = "Harp.Music"
    {
        \number.5.Harp.Music
    }

>>


number.5.Viola.Music =
{

    % [Viola.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "alto"
      %! MEASURE_35
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_35
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
    r16
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \pp
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Viola”)"
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-va-markup %@%

    ef!16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    [
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "scr."
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanBowSpeed
    ~

    ef16
    ]

    r16
      %! SPANNER_STOP
    \bacaStopTextSpanBowSpeed

    r1

    <<

        \context Voice = "Viola.Music"
        {

            % [Viola.Music measure 2]
              %! INVISIBLE_MUSIC_COMMAND
              %! NOTE
            %@% \abjad-invisible-music
              %! INVISIBLE_MUSIC_COLORING
              %! NOTE
            \abjad-invisible-music-coloring
              %! EXPLICIT_CLEF
            \clef "percussion"
              %! MEASURE_36
              %! SHIFTED_CLEF
            \once \override Staff.Clef.X-extent = ##f
              %! EXPLICIT_CLEF_COLOR
            \once \override Staff.Clef.color = #blue
              %! MEASURE_36
              %! SHIFTED_CLEF
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
              %! EXPLICIT_STAFF_LINES_COLOR
            \once \override Staff.StaffSymbol.color = #blue
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
            \once \override Accidental.stencil = ##f
            \once \override NoteColumn.ignore-collision = ##t
              %! HIDDEN
              %! NOTE
            c'1 * 3/4
              %! DURATION_MULTIPLIER
              %! HIDDEN
              %! NOTE
            %@% ^ \baca-duration-multiplier-markup #"3" #"4"
              %! -PARTS
              %! EXPLICIT_BAR_EXTENT
            \override Staff.BarLine.bar-extent = #'(-2 . 0)
              %! EXPLICIT_CLEF_REDRAW_COLOR
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        }

        \context Voice = "Viola.Rests"
        {

            % [Viola.Rests measure 2]
              %! MULTIMEASURE_REST
              %! REST_VOICE
            R1 * 3/4
              %! DURATION_MULTIPLIER
              %! MULTIMEASURE_REST
              %! REST_VOICE
            %@% ^ \baca-duration-multiplier-markup #"3" #"4"

        }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 4/3
    {

        % [Viola.Music measure 3]
          %! EXPLICIT_CLEF
        \clef "alto"
          %! MEASURE_37
          %! SHIFTED_CLEF
        \once \override Staff.Clef.X-extent = ##f
          %! EXPLICIT_CLEF_COLOR
        \once \override Staff.Clef.color = #blue
          %! MEASURE_37
          %! SHIFTED_CLEF
        \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
          %! EXPLICIT_STAFF_LINES_COLOR
        \once \override Staff.StaffSymbol.color = #blue
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
        r4
          %! EXPLICIT_CLEF_REDRAW_COLOR
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        f8.
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mf
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
          %! SPANNER_START
        - \baca-dashed-line-with-hook
          %! SPANNER_START
        - \baca-text-spanner-left-text "XFB"
          %! SPANNER_START
        - \tweak bound-details.left-broken.text \baca-left-broken-xfb-markup
          %! SPANNER_START
        - \tweak staff-padding 5.5
          %! SPANNER_START
        \bacaStartTextSpanBowSpeed

        r16

        f8.

        r16

        f8.

        r16

    }

    % [Viola.Music measure 4]
    f8.

    r16

    f8.

    r16
      %! SPANNER_STOP
    \bacaStopTextSpanBowSpeed
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation

    r1

    % [Viola.Music measure 5]
    ef!4
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
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "scr."
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanBowSpeed
    - \tweak stencil ##f
    ~

    ef8
    \repeatTie

    r8
      %! SPANNER_STOP
    \bacaStopTextSpanBowSpeed

    r2

    ef!4
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "scr."
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanBowSpeed
    - \tweak stencil ##f
    ~

    ef8
    \repeatTie

    r8
      %! SPANNER_STOP
    \bacaStopTextSpanBowSpeed
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
      %! METRIC_MODULATION_SPANNER
      %! RIGHT_BROKEN
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation

}


number.5.Viola.Staff =
<<

    \context Voice = "Viola.Music"
    {
        \number.5.Viola.Music
    }

>>


number.5.Cello.1.Music =
{

    % [Cello.1.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_35
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_35
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 4
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
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
    r16
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \pp
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Cello”)"
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-i-markup %@%

    e'16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    [
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "scr."
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanBowSpeed
    ~

    e'16
    ]

    r16
      %! SPANNER_STOP
    \bacaStopTextSpanBowSpeed

    r1
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 5/4
    {

        % [Cello.1.Music measure 2]
          %! EXPLICIT_CLEF
        \clef "percussion"
          %! MEASURE_36
          %! SHIFTED_CLEF
        \once \override Staff.Clef.X-extent = ##f
          %! EXPLICIT_CLEF_COLOR
        \once \override Staff.Clef.color = #blue
          %! MEASURE_36
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
        c'16
        :32
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \ppp
          %! EXPLICIT_CLEF_REDRAW_COLOR
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        r8.

        \once \override Flag.extra-offset = #'(-2 . 0)
        \once \override NoteHead.extra-offset = #'(-2 . 0)
        \once \override Script.extra-offset = #'(-2 . 0)
        \once \override Stem.extra-offset = #'(-2 . 0)
        \once \override StemTremolo.extra-offset = #'(-2 . 0)
        c'16
        :32
        - \accent
        \revert DynamicLineSpanner.staff-padding
        \revert Stem.direction
        \revert TupletBracket.direction

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 5/4
    {

          %! EXPLICIT_CLEF
        \clef "bass"
        \once \override Staff.Clef.X-extent = ##f
          %! EXPLICIT_CLEF_COLOR
        \once \override Staff.Clef.color = #blue
        \once \override Staff.Clef.extra-offset = #'(-2 . 0)
          %! EXPLICIT_STAFF_LINES_COLOR
        \once \override Staff.StaffSymbol.color = #blue
          %! EXPLICIT_CLEF_COLOR_CANCELLATION
        %@% \override Staff.Clef.color = ##f
        \override TupletBracket.direction = #up
          %! EXPLICIT_CLEF
        \set Staff.forceClef = ##t
          %! EXPLICIT_STAFF_LINES
        \stopStaff
          %! EXPLICIT_STAFF_LINES
        \once \override Staff.StaffSymbol.line-count = 5
          %! EXPLICIT_STAFF_LINES
        \startStaff
        r8
          %! EXPLICIT_CLEF_REDRAW_COLOR
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        \override DynamicLineSpanner.staff-padding = 4
        fs!8.
        - \accent
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \mf
          %! SPANNER_START
        - \baca-dashed-line-with-hook
          %! SPANNER_START
        - \baca-text-spanner-left-markup \baca-damp-markup
          %! SPANNER_START
        - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
          %! SPANNER_START
        - \tweak staff-padding 8
          %! SPANNER_START
        \bacaStartTextSpanDamp
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

        r16

        fs!8.
        - \accent

        r16

    }

    % [Cello.1.Music measure 3]
    fs!8.
    - \accent

    r16

    fs!4
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! METRIC_MODULATION_SPANNER
      %! SPANNER_STOP
    \bacaStopTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    fs8
    \repeatTie

    r16
    \revert DynamicLineSpanner.staff-padding

    \override DynamicLineSpanner.staff-padding = 5.5
    fs!16
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    \revert TupletBracket.direction

    % [Cello.1.Music measure 4]
    f2.
    - \tweak staff-padding 4
    - \baca-full-downbow
      %! SPANNER_STOP
    \bacaStopTextSpanDamp
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

    g8
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    a,16
    \glissando

    d16
    ]
    \glissando

    b,16
    [
    \glissando

    a8.
    - \tweak staff-padding 4
    - \baca-full-downbow
    ]
    \glissando

    b,4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    % [Cello.1.Music measure 5]
    e8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
    - \tweak staff-padding 4
    - \baca-full-downbow
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
    \>
    \glissando

    c16
    \glissando

    b16
    ]
    \glissando

    c16
    [
    \glissando

    f8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    ]
    \glissando

    d8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    c'16
    \glissando

    d16
    ]
    \glissando

    a16
    [
    \glissando

    f8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    ]
    \glissando

    e'2
    - \tweak staff-padding 4
    - \baca-full-downbow
    \revert DynamicLineSpanner.staff-padding

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
    \!
      %! ANCHOR_NOTE
      %! SPANNER_STOP
    \bacaStopTextSpanHalfCLT

}


number.5.Cello.1.Staff =
<<

    \context Voice = "Cello.1.Music"
    {
        \number.5.Cello.1.Music
    }

>>


number.5.Cello.2.Music =
{

    % [Cello.2.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_35
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_35
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \override DynamicLineSpanner.staff-padding = 4
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
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
    r16
      %! REAPPLIED_DYNAMIC_COLOR
      %! REAPPLIED_DYNAMIC
    - \tweak color #(x11-color 'green4)
      %! REAPPLIED_DYNAMIC
    \pp
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Cello”)"
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup %@%

    eqf'!16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
    [
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "scr."
      %! SPANNER_START
    - \tweak staff-padding 3
      %! SPANNER_START
    \bacaStartTextSpanBowSpeed
    ~

    eqf'16
    ]

    r16
      %! SPANNER_STOP
    \bacaStopTextSpanBowSpeed

    r1

    % [Cello.2.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_36
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_36
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    g,2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
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
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \afterGrace 15/16
    g,8
    :32
    {

        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        f,8

    }


    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \bacaStopTextSpanSCP

    % [Cello.2.Music measure 3]
    f2.
    - \accent
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
    \revert DynamicLineSpanner.staff-padding

    % [Cello.2.Music measure 4]
    \override DynamicLineSpanner.staff-padding = 5.5
    f2.
    - \tweak staff-padding 4
    - \baca-full-downbow
      %! SPANNER_STOP
    \bacaStopTextSpanDamp
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

    a,8
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    d16
    \glissando

    b,16
    ]
    \glissando

    a16
    [
    \glissando

    b,8.
    - \tweak staff-padding 4
    - \baca-full-downbow
    ]
    \glissando

    e4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    % [Cello.2.Music measure 5]
    c8
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
    - \tweak staff-padding 4
    - \baca-full-downbow
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
    \>
    \glissando

    b16
    \glissando

    c16
    ]
    \glissando

    f16
    [
    \glissando

    d8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    ]
    \glissando

    c'8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    d16
    \glissando

    a16
    ]
    \glissando

    f16
    [
    \glissando

    g8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    ]
    \glissando

    e'2
    - \tweak staff-padding 4
    - \baca-full-downbow
    \revert DynamicLineSpanner.staff-padding

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
    \!
      %! ANCHOR_NOTE
      %! SPANNER_STOP
    \bacaStopTextSpanHalfCLT

}


number.5.Cello.2.Staff =
<<

    \context Voice = "Cello.2.Music"
    {
        \number.5.Cello.2.Music
    }

>>


number.5.Contrabass.1.Music =
{

    % [Contrabass.1.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_35
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_35
      %! SHIFTED_CLEF
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \once \override Staff.InstrumentName.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
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
    e,4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Contrabass”)"
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
      %! SPANNER_START
    - \baca-text-spanner-right-text "T1"
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
    \>
    \glissando
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-cb-i-markup %@%

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    e,4

    e,4

    e,4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    e,4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
      %! SPANNER_STOP
    \bacaStopTextSpanSCP

    % [Contrabass.1.Music measure 2]
      %! EXPLICIT_CLEF
    \clef "percussion"
      %! MEASURE_36
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_36
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 6
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
    \override TupletBracket.direction = #up
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
      %! EXPLICIT_STAFF_LINES
    \stopStaff
      %! EXPLICIT_STAFF_LINES
    \once \override Staff.StaffSymbol.line-count = 1
      %! EXPLICIT_STAFF_LINES
    \startStaff
    r4
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override Stem.direction = #down
    c'16
    :32
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp

    r8.

    r16

    c'16
    :32
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \ppp
    \revert Stem.direction

    r8
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    % [Contrabass.1.Music measure 3]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_37
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_37
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
      %! EXPLICIT_STAFF_LINES_COLOR
    \once \override Staff.StaffSymbol.color = #blue
    \override DynamicLineSpanner.staff-padding = 4
    \override NoteHead.style = #'harmonic
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
    aqs'!8.
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
    - \tweak X-offset 2.5
    - \tweak padding 1
    _ \baca-string-iv-markup
    ^ \baca-eleven-e
    [
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-pizz-markup
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-parenthesized-pizz-markup
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanPizzicato
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    aqs'!16
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    ]
    ~

    aqs'4
    - \tweak stencil ##f
    ~

    aqs'8
    [
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    \override DynamicLineSpanner.staff-padding = 5.5
    aqs'!8
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    ]
    \revert NoteHead.style

    % [Contrabass.1.Music measure 4]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_38
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_38
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    f'2.
    - \tweak staff-padding 4
    - \baca-full-downbow
      %! SPANNER_STOP
    \bacaStopTextSpanPizzicato
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
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    g8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    c'16
    ]
    \glissando

    d16
    [
    \glissando

    f16
    \glissando

    e8
    - \tweak staff-padding 4
    - \baca-full-downbow
    ]
    \glissando

    a4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    % [Contrabass.1.Music measure 5]
    b,16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
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
    \>
    \glissando

    d16
    \glissando

    c16
    \glissando

    f16
    ]
    \glissando

    g,2
    - \tweak staff-padding 4
    - \baca-full-downbow
    \glissando

    b,8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    a,16
    ]
    \glissando

    d16
    [
    \glissando

    f,16
    \glissando

    g,8
    - \tweak staff-padding 4
    - \baca-full-downbow
    ]
    \glissando

    e,4
    - \tweak staff-padding 4
    - \baca-full-upbow
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
    \!
      %! ANCHOR_NOTE
      %! SPANNER_STOP
    \bacaStopTextSpanHalfCLT

}


number.5.Contrabass.1.Staff =
<<

    \context Voice = "Contrabass.1.Music"
    {
        \number.5.Contrabass.1.Music
    }

>>


number.5.Contrabass.2.Music =
{

    % [Contrabass.2.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "bass"
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \hide NoteHead
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override Accidental.stencil = ##f
      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override NoteHead.no-ledgers = ##t
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
    e,4
      %! REAPPLIED_INSTRUMENT_ALERT
    %@% ^ \baca-reapplied-instrument-markup "(“Contrabass”)"
      %! SPANNER_START
    - \baca-solid-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "(T1)"
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanSCP
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
    \<
    \glissando
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME_COLOR
    %@% \override Staff.InstrumentName.color = #(x11-color 'OliveDrab)
      %! -PARTS
      %! REDRAWN_REAPPLIED_SHORT_INSTRUMENT_NAME
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup %@%

      %! HIDE_TO_JOIN_BROKEN_SPANNERS
      %! LEFT_BROKEN
    \override NoteColumn.glissando-skip = ##t
    e,4

    e,4
      %! SPANNER_STOP
    \bacaStopTextSpanSCP
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

    e,4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    e,4
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \f
      %! SPANNER_STOP
    \bacaStopTextSpanSCP

    % [Contrabass.2.Music measure 2]
    g2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mf
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-text "P1"
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

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \afterGrace 15/16
    g8
    :32
    {

        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        fs!8

    }


    r8
      %! SPANNER_STOP
    \!
      %! SPANNER_STOP
    \bacaStopTextSpanSCP

    % [Contrabass.2.Music measure 3]
      %! EXPLICIT_CLEF
    \clef "treble"
      %! MEASURE_37
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_37
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \override NoteHead.style = #'harmonic
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    fs'!2
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
    - \tweak padding 1
    ^ \baca-string-iv-markup
      %! SPANNER_START
    - \baca-dashed-line-with-hook
      %! SPANNER_START
    - \baca-text-spanner-left-markup \baca-pizz-markup
      %! SPANNER_START
    - \tweak bound-details.left-broken.text \baca-parenthesized-pizz-markup
      %! SPANNER_START
    - \tweak staff-padding 5.5
      %! SPANNER_START
    \bacaStartTextSpanPizzicato
    - \tweak stencil ##f
    ~
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    fs'16
    [
    \repeatTie

    fs'!8.
    - \accent
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    ]
    \revert NoteHead.style

    % [Contrabass.2.Music measure 4]
      %! EXPLICIT_CLEF
    \clef "bass"
      %! MEASURE_38
      %! SHIFTED_CLEF
    \once \override Staff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override Staff.Clef.color = #blue
      %! MEASURE_38
      %! SHIFTED_CLEF
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set Staff.forceClef = ##t
    f'2
    - \tweak staff-padding 4
    - \baca-full-downbow
      %! SPANNER_STOP
    \bacaStopTextSpanPizzicato
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
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    g8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    c'16
    ]
    \glissando

    d16
    [
    \glissando

    f16
    \glissando

    e8
    - \tweak staff-padding 4
    - \baca-full-downbow
    ]
    \glissando

    a2
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    % [Contrabass.2.Music measure 5]
    b,16
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \baca-effort-f
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
    \>
    \glissando

    d16
    \glissando

    c16
    \glissando

    f16
    ]
    \glissando

    g,4
    - \tweak staff-padding 4
    - \baca-full-downbow
    \glissando

    b,8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    a,16
    ]
    \glissando

    d16
    [
    \glissando

    f,16
    \glissando

    g,8
    - \tweak staff-padding 4
    - \baca-full-downbow
    ]
    \glissando

    e,2
    - \tweak staff-padding 4
    - \baca-full-upbow
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
    \!
      %! ANCHOR_NOTE
      %! SPANNER_STOP
    \bacaStopTextSpanHalfCLT

}


number.5.Contrabass.2.Staff =
<<

    \context Voice = "Contrabass.2.Music"
    {
        \number.5.Contrabass.2.Music
    }

>>
