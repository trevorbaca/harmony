y_Global_Skips = {

    % [Global_Skips measure 226 / measure 1]
    \time 7/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 7/4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶AA.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #2 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 227 / measure 2]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "Y" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "Y" #4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[Y.1]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 228 / measure 3]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀X.8]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 229 / measure 4]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-twenty-two
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 230 / measure 5]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[Y.2]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 231 / measure 6]
    s1 * 3/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 232 / measure 7]
    s1 * 3/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 233 / measure 8]
    s1 * 3/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 234 / measure 9]
    s1 * 3/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 235 / measure 10]
    s1 * 3/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 236 / measure 11]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-twenty-three
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 237 / measure 12]
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


y_Global_Rests = {

    % [Global_Rests measure 226 / measure 1]
    R1 * 7/4

    % [Global_Rests measure 227 / measure 2]
    R1 * 3/2

    % [Global_Rests measure 228 / measure 3]
    R1 * 5/4

    % [Global_Rests measure 229 / measure 4]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [Global_Rests measure 230 / measure 5]
    R1 * 3/2

    % [Global_Rests measure 231 / measure 6]
    R1 * 3/2

    % [Global_Rests measure 232 / measure 7]
    R1 * 3/2

    % [Global_Rests measure 233 / measure 8]
    R1 * 3/2

    % [Global_Rests measure 234 / measure 9]
    R1 * 3/2

    % [Global_Rests measure 235 / measure 10]
    R1 * 3/2

    % [Global_Rests measure 236 / measure 11]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [Global_Rests measure 237 / measure 12]
    R1 * 1/4

}


y_Bass_Flute_Music_Voice = {

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 226 / measure 1]
            \set Staff.shortInstrumentName = \harmony-bfl-markup
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \set Staff.instrumentName = \harmony-bfl-markup
            \abjad-invisible-music-coloring
            \override DynamicLineSpanner.staff-padding = 4
            \baca-not-yet-pitched-coloring
            \clef "treble"
            \once \override Staff.Clef.color = #(x11-color 'green4)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
            b'1 * 7/4
            - \tweak color #(x11-color 'green4)
            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
            \set Staff.shortInstrumentName = \harmony-bfl-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 226 / measure 1]
            R1 * 7/4

        }

    >>

    % [Bass_Flute_Music_Voice measure 227 / measure 2]
    r2

    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9
    {

        r32

        \override NoteHead.font-size = -3
        \override Accidental.font-size = -3
        \override Accidental.X-offset = 0
        \override Accidental.Y-offset = -2
        c''32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        [
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        \startTrillSpan

        b'32

        bf'!32

        a'32

        af'!32

        g'32

        gs'!32

        a'32

        as'!32
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32

        a'32

        af'!32
        - \tweak color #(x11-color 'blue)
        \!
        ]
        \revert NoteHead.font-size
        \revert Accidental.font-size
        \revert Accidental.X-offset
        \revert Accidental.Y-offset

    }

    % [Bass_Flute_Music_Voice measure 228 / measure 3]
    r8
    \stopTrillSpan

    fs'''!8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak staff-padding 3
    \startTrillSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "A"
    - \tweak staff-padding 10
    \startTextSpan

    fs'''!8
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "A"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 10
    \startTextSpan

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \stopTextSpan

    fs'''!8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    [
    - \tweak staff-padding 3
    \startTrillSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "A"
    - \tweak staff-padding 10
    \startTextSpan

    fs'''!8
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "A"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 10
    \startTextSpan

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \stopTextSpan

    fs'''!8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak staff-padding 3
    \startTrillSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "A"
    - \tweak staff-padding 10
    \startTextSpan

    fs'''!8
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "A"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 10
    \startTextSpan

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \stopTextSpan

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 229 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \override Staff.BarLine.bar-extent = #'(0 . 0)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 229 / measure 4]
            R1 * 1/4

        }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 12/14
    {

        % [Bass_Flute_Music_Voice measure 230 / measure 5]
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        \override Staff.BarLine.bar-extent = #'(-2 . 2)
    %%% \once \override Score.BarLine.transparent = ##t
    %%% \once \override Score.SpanBar.transparent = ##t
        r32

        \override NoteHead.font-size = -3
        \override Accidental.font-size = -3
        \override Accidental.X-offset = 0
        \override Accidental.Y-offset = -2
        b'32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        [
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        \startTrillSpan

        bf'!32

        a'32

        af'!32

        g'32

        gs'!32

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32

        b'32
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
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

        cs''!32

        c''32

        b'32

        bf'!32

        a'32
        - \tweak color #(x11-color 'blue)
        \!
        ]

    }

    r2.
    \stopTrillSpan

    % [Bass_Flute_Music_Voice measure 231 / measure 6]
    r16

    \tweak text #tuplet-number::calc-fraction-text
    \times 11/12
    {

        r32

        af'!32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        [
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        \startTrillSpan

        g'32

        gs'!32

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
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

        c''32

        b'32

        bf'!32
        - \tweak color #(x11-color 'blue)
        \!
        ]

    }

    r2.
    \stopTrillSpan

    \tweak text #tuplet-number::calc-fraction-text
    \times 12/14
    {

        % [Bass_Flute_Music_Voice measure 232 / measure 7]
        r32

        a'32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        [
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        \startTrillSpan

        af'!32

        g'32

        gs'!32

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32

        a'32
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
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

        b'32

        bf'!32

        a'32

        af'!32

        g'32
        - \tweak color #(x11-color 'blue)
        \!
        ]

    }

    r2.
    \stopTrillSpan

    % [Bass_Flute_Music_Voice measure 233 / measure 8]
    r16

    \tweak text #tuplet-number::calc-fraction-text
    \times 11/12
    {

        r32

        gs'!32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        [
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        \startTrillSpan

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32

        a'32

        af'!32
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>

        g'32

        gs'!32

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32

        a'32

        af'!32
        - \tweak color #(x11-color 'blue)
        \!
        ]

    }

    r2.
    \stopTrillSpan

    \tweak text #tuplet-number::calc-fraction-text
    \times 12/14
    {

        % [Bass_Flute_Music_Voice measure 234 / measure 9]
        r32

        g'32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        [
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        \startTrillSpan

        gs'!32

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32

        a'32

        af'!32

        g'32
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>

        gs'!32

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32

        a'32

        af'!32

        g'32

        gs'!32

        a'32
        - \tweak color #(x11-color 'blue)
        \!
        ]

    }

    r2.
    \stopTrillSpan

    % [Bass_Flute_Music_Voice measure 235 / measure 10]
    r16

    \tweak text #tuplet-number::calc-fraction-text
    \times 11/12
    {

        r32

        as'!32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        [
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        \startTrillSpan

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32

        a'32

        af'!32

        g'32

        gs'!32
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32

        a'32

        af'!32

        g'32

        gs'!32
        - \tweak color #(x11-color 'blue)
        \!
        ]
        \revert NoteHead.font-size
        \revert Accidental.font-size
        \revert Accidental.X-offset
        \revert Accidental.Y-offset

    }

    r2.
    \stopTrillSpan
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 236 / measure 11]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \override Staff.BarLine.bar-extent = #'(0 . 0)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 236 / measure 11]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 237 / measure 12]
            \abjad-invisible-music-coloring
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t
            R1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 237 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


y_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \y_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \y_Bass_Flute_Music_Voice

>>


y_Percussion_I_Music_Voice = {

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 226 / measure 1]
            \set Staff.shortInstrumentName = \harmony-perc-i-markup
            \override Staff.BarLine.bar-extent = #'(-2 . 0)
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 1
            \startStaff
            \set Staff.instrumentName = \harmony-perc-i-markup
            \abjad-invisible-music-coloring
            \override DynamicLineSpanner.staff-padding = 6
            \baca-not-yet-pitched-coloring
            \clef "percussion"
            \once \override Staff.Clef.color = #(x11-color 'green4)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
            c'1 * 7/4
            - \tweak color #(x11-color 'green4)
            \baca-p-sempre
            \set Staff.shortInstrumentName = \harmony-perc-i-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 226 / measure 1]
            R1 * 7/4

        }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 6/5
    {

        % [Percussion_I_Music_Voice measure 227 / measure 2]
        \override TupletBracket.direction = #up
        r2

        r8
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 10.5
        \bacaStartTextSpanMetricModulation

        \override Stem.direction = #down
        d'8.
        - \tweak color #(x11-color 'blue)
        - \tweak self-alignment-X -0.9
        \baca-p-ancora
        - \tweak staff-padding 6
        ^ \baca-slate-scrape-markup

        r8.

        d'8.
        \revert Stem.direction

        r16
        \revert TupletBracket.direction

    }

    % [Percussion_I_Music_Voice measure 228 / measure 3]
    \override TupletBracket.direction = #up
    r8

    \override Stem.direction = #down
    d'8
    \bacaStopTextSpanMetricModulation
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
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 229 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 229 / measure 4]
            R1 * 1/4

        }

    >>

    % [Percussion_I_Music_Voice measure 230 / measure 5]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \override Stem.direction = #up
    c'16
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-f-sempre
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup

    r8.

    r1

    r4

    % [Percussion_I_Music_Voice measure 231 / measure 6]
    r16

    c'16

    r8

    r1

    r4

    % [Percussion_I_Music_Voice measure 232 / measure 7]
    c'16

    r8.

    r1

    r4

    % [Percussion_I_Music_Voice measure 233 / measure 8]
    r16

    c'16

    r8

    r1

    r4

    % [Percussion_I_Music_Voice measure 234 / measure 9]
    c'16
    \revert Stem.direction

    r8.

    r1

    r4

    % [Percussion_I_Music_Voice measure 235 / measure 10]
    r16

    \override Stem.direction = #up
    c'16

    r8

    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/5
    {

        r2.

        c'4

        c'4
        \revert Stem.direction
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 236 / measure 11]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 236 / measure 11]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 237 / measure 12]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 237 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


y_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \y_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \y_Percussion_I_Music_Voice

>>


y_Percussion_II_Music_Voice = {

    % [Percussion_II_Music_Voice measure 226 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    e'4
    - \tweak color #(x11-color 'green4)
    \ff
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r2
    \bacaStopTextSpanMetricModulation

    r2

    r4

    e'4

    \tweak text #tuplet-number::calc-fraction-text
    \times 6/5
    {

        % [Percussion_II_Music_Voice measure 227 / measure 2]
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
        \override TupletBracket.direction = #up
        \override DynamicLineSpanner.staff-padding = 6
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r2

        r8

        \override Stem.direction = #down
        c'2
        :32
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak staff-padding 6
        ^ \baca-tam-tam-markup
        \glissando

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        c'8
        :32

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Percussion_II_Music_Voice measure 228 / measure 3]
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        c'1
        :32
        \revert Stem.direction
        \revert TupletBracket.direction

    }

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 229 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 229 / measure 4]
            R1 * 1/4

        }

    >>

    % [Percussion_II_Music_Voice measure 230 / measure 5]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'8
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    - \tweak staff-padding 6
    ^ \baca-slate-brush-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    r8
    - \tweak color #(x11-color 'blue)
    \!

    r1

    r4

    % [Percussion_II_Music_Voice measure 231 / measure 6]
    r16

    d'16
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ~
    [

    d'16
    :32
    ]

    r16
    - \tweak color #(x11-color 'blue)
    \!

    r1

    r4

    % [Percussion_II_Music_Voice measure 232 / measure 7]
    d'8
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    r8
    - \tweak color #(x11-color 'blue)
    \!

    r1

    r4

    % [Percussion_II_Music_Voice measure 233 / measure 8]
    r16

    d'16
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ~
    [

    d'16
    :32
    ]

    r16
    - \tweak color #(x11-color 'blue)
    \!

    r1

    r4

    % [Percussion_II_Music_Voice measure 234 / measure 9]
    d'8
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \revert Stem.direction

    r8
    - \tweak color #(x11-color 'blue)
    \!

    r1

    r4
    \revert TupletBracket.direction

    % [Percussion_II_Music_Voice measure 235 / measure 10]
    \override TupletBracket.direction = #up
    r16

    \override Stem.direction = #down
    d'16
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    [

    d'16
    :32
    - \accent
    ]

    r16
    - \tweak color #(x11-color 'blue)
    \!

    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/5
    {

        r2.

        d'4
        - \tweak self-alignment-X 0
        - \tweak staff-padding 6
        ^ \baca-slate-scrape-markup

        d'4
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 236 / measure 11]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 236 / measure 11]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 237 / measure 12]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 237 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


y_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \y_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \y_Percussion_II_Music_Voice

>>


y_Harp_Music_Voice = {

    % [Harp_Music_Voice measure 226 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r2.
    - \tweak color #(x11-color 'green4)
    \baca-p-sempre
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2

    r4

    af'!4
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-pince-markup
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 6/5
    {

        % [Harp_Music_Voice measure 227 / measure 2]
        \override TupletBracket.direction = #up
        r2

        r8
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 10.5
        \bacaStartTextSpanMetricModulation

        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
        \once \override DynamicLineSpanner.staff-padding = 6
        \override Stem.direction = #down
        \clef "percussion"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        c'8.
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak staff-padding 8
        ^ \baca-whisk-markup
        \override Staff.BarLine.bar-extent = #'(0 . 2)
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        r8.

        c'8.

        r16

    }

    % [Harp_Music_Voice measure 228 / measure 3]
    r8

    c'8
    \bacaStopTextSpanMetricModulation
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
    \revert TupletBracket.direction

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 229 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 229 / measure 4]
            R1 * 1/4

        }

    >>

    % [Harp_Music_Voice measure 230 / measure 5]
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 7
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r1.
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [Harp_Music_Voice measure 231 / measure 6]
    r16

    g,,8.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-f-sempre
    \laissezVibrer

    r1

    r4

    % [Harp_Music_Voice measure 232 / measure 7]
    r1.

    % [Harp_Music_Voice measure 233 / measure 8]
    r16

    g,,8.
    \laissezVibrer

    r1

    r4

    % [Harp_Music_Voice measure 234 / measure 9]
    r1.

    % [Harp_Music_Voice measure 235 / measure 10]
    r16

    g,,8.
    \laissezVibrer
    ^ \baca-lv-into-fermata-markup

    r1

    r4
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 236 / measure 11]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 236 / measure 11]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 237 / measure 12]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 237 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


y_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \y_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \y_Harp_Music_Voice

>>


y_Viola_Music_Voice = {

    % [Viola_Music_Voice measure 226 / measure 1]
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-va-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "alto"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    af'!1..
    - \tweak color #(x11-color 'blue)
    \mp
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Viola_Music_Voice measure 227 / measure 2]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    af'!1.

    % [Viola_Music_Voice measure 228 / measure 3]
    fs!4
    :32
    - \tweak color #(x11-color 'blue)
    \f
    \bacaStopTextSpanBowSpeed
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
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
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs!16
    :32
    [

    fs!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \baca-text-spanner-right-text "P2"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs!2
    :32
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 229 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 229 / measure 4]
            R1 * 1/4

        }

    >>

    % [Viola_Music_Voice measure 230 / measure 5]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override NoteHead.style = #'harmonic-black
    <g' af'! bf'!>1.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<

    % [Viola_Music_Voice measure 231 / measure 6]
    \override NoteHead.transparent = ##t
    \baca-not-yet-pitched-coloring
    c'8.
    \!
    - \tweak color #(x11-color 'blue)
    \<
    [

    \baca-not-yet-pitched-coloring
    c'16
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    \baca-not-yet-pitched-coloring
    c'4

    \baca-not-yet-pitched-coloring
    c'16
    [

    \baca-not-yet-pitched-coloring
    c'8.
    \!
    - \tweak color #(x11-color 'blue)
    \>
    ]

    \baca-not-yet-pitched-coloring
    c'4

    \baca-not-yet-pitched-coloring
    c'16
    [

    \baca-not-yet-pitched-coloring
    c'8.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
    ]

    \baca-not-yet-pitched-coloring
    c'8
    [

    \baca-not-yet-pitched-coloring
    c'8
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    % [Viola_Music_Voice measure 232 / measure 7]
    \baca-not-yet-pitched-coloring
    c'2.

    \baca-not-yet-pitched-coloring
    c'8
    [

    \baca-not-yet-pitched-coloring
    c'8
    \!
    - \tweak color #(x11-color 'blue)
    \>
    ]

    \baca-not-yet-pitched-coloring
    c'2

    % [Viola_Music_Voice measure 233 / measure 8]
    \baca-not-yet-pitched-coloring
    c'8
    [

    \baca-not-yet-pitched-coloring
    c'8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \<
    ]

    \baca-not-yet-pitched-coloring
    c'4

    \baca-not-yet-pitched-coloring
    c'16
    [

    \baca-not-yet-pitched-coloring
    c'8.
    - \tweak color #(x11-color 'blue)
    \baca-f-scratch
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    \baca-not-yet-pitched-coloring
    c'2.

    % [Viola_Music_Voice measure 234 / measure 9]
    \baca-not-yet-pitched-coloring
    c'2.

    \baca-not-yet-pitched-coloring
    c'16
    [

    \baca-not-yet-pitched-coloring
    c'16
    \!
    - \tweak color #(x11-color 'blue)
    \>

    \baca-not-yet-pitched-coloring
    c'16

    \baca-not-yet-pitched-coloring
    c'16
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    \<
    ]

    \baca-not-yet-pitched-coloring
    c'2

    % [Viola_Music_Voice measure 235 / measure 10]
    \baca-not-yet-pitched-coloring
    c'4

    \baca-not-yet-pitched-coloring
    c'8
    [

    \baca-not-yet-pitched-coloring
    c'8
    ]

    \baca-not-yet-pitched-coloring
    c'8
    - \tweak color #(x11-color 'blue)
    \baca-ff-scratch
    [

    \baca-not-yet-pitched-coloring
    c'8
    ]
    \revert NoteHead.transparent

    <g' af'! bf'!>2.
    :32
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 236 / measure 11]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 236 / measure 11]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 237 / measure 12]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 237 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


y_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \y_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \y_Viola_Music_Voice

>>


y_Cello_I_Music_Voice = {

    % [Cello_I_Music_Voice measure 226 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r1
    - \tweak color #(x11-color 'green4)
    \f
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        <a' b' c''>2
        :32
        - \tweak color #(x11-color 'blue)
        \pp
        ^ \baca-quasi-bisb-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation
        \revert TupletBracket.direction

    }

    % [Cello_I_Music_Voice measure 227 / measure 2]
    <a' b' c''>1.
    :32

    % [Cello_I_Music_Voice measure 228 / measure 3]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    fs,!4
    :32
    - \tweak color #(x11-color 'blue)
    \f
    \bacaStopTextSpanMetricModulation
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    \glissando
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    [
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \baca-text-spanner-right-text "P3"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs,!4
    :32
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 229 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 229 / measure 4]
            R1 * 1/4

        }

    >>

    % [Cello_I_Music_Voice measure 230 / measure 5]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <a' b' c''>4
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.transparent = ##t
    \baca-not-yet-pitched-coloring
    b'8
    [

    \baca-not-yet-pitched-coloring
    b'8
    \!
    - \tweak color #(x11-color 'blue)
    \<
    ]

    \baca-not-yet-pitched-coloring
    b'2.

    \baca-not-yet-pitched-coloring
    b'8
    [

    \baca-not-yet-pitched-coloring
    b'8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    % [Cello_I_Music_Voice measure 231 / measure 6]
    \baca-not-yet-pitched-coloring
    b'2.
    \!
    - \tweak color #(x11-color 'blue)
    \>

    \baca-not-yet-pitched-coloring
    b'8.
    [

    \baca-not-yet-pitched-coloring
    b'16
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
    ]

    \baca-not-yet-pitched-coloring
    b'4

    \baca-not-yet-pitched-coloring
    b'8.
    [

    \baca-not-yet-pitched-coloring
    b'16
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    % [Cello_I_Music_Voice measure 232 / measure 7]
    \baca-not-yet-pitched-coloring
    b'4

    \baca-not-yet-pitched-coloring
    b'4
    \!
    - \tweak color #(x11-color 'blue)
    \>

    \baca-not-yet-pitched-coloring
    b'2.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \<

    \baca-not-yet-pitched-coloring
    b'8
    [

    \baca-not-yet-pitched-coloring
    b'8
    - \tweak color #(x11-color 'blue)
    \baca-f-scratch
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    % [Cello_I_Music_Voice measure 233 / measure 8]
    \baca-not-yet-pitched-coloring
    b'2

    \baca-not-yet-pitched-coloring
    b'8
    [

    \baca-not-yet-pitched-coloring
    b'8
    \!
    - \tweak color #(x11-color 'blue)
    \>
    ]

    \baca-not-yet-pitched-coloring
    b'4

    \baca-not-yet-pitched-coloring
    b'16
    [

    \baca-not-yet-pitched-coloring
    b'8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    \<
    ]

    \baca-not-yet-pitched-coloring
    b'4

    % [Cello_I_Music_Voice measure 234 / measure 9]
    \baca-not-yet-pitched-coloring
    b'1

    \baca-not-yet-pitched-coloring
    b'4

    \baca-not-yet-pitched-coloring
    b'16
    [

    \baca-not-yet-pitched-coloring
    b'8.
    ]

    % [Cello_I_Music_Voice measure 235 / measure 10]
    \baca-not-yet-pitched-coloring
    b'1

    \baca-not-yet-pitched-coloring
    b'4

    \baca-not-yet-pitched-coloring
    b'16
    - \tweak color #(x11-color 'blue)
    \baca-ff-scratch
    [
    \revert NoteHead.transparent

    <a' b' c''>8.
    :32
    ]
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 236 / measure 11]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 236 / measure 11]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 237 / measure 12]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 237 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


y_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \y_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \y_Cello_I_Music_Voice

>>


y_Cello_II_Music_Voice = {

    % [Cello_II_Music_Voice measure 226 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-ii-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r1
    - \tweak color #(x11-color 'green4)
    \f
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        <g' af'! bf'!>2
        :32
        - \tweak color #(x11-color 'blue)
        \pp
        ^ \baca-quasi-bisb-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation
        \revert TupletBracket.direction

    }

    % [Cello_II_Music_Voice measure 227 / measure 2]
    <g' af'! bf'!>1.
    :32

    % [Cello_II_Music_Voice measure 228 / measure 3]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    fs,!2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    \bacaStopTextSpanMetricModulation
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    \glissando
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs,!2
    :32
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 229 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 229 / measure 4]
            R1 * 1/4

        }

    >>

    % [Cello_II_Music_Voice measure 230 / measure 5]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <g' af'! bf'!>8
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    [
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.transparent = ##t
    c''8
    \!
    - \tweak color #(x11-color 'blue)
    \<
    ]

    c''8.
    [

    c''16
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    c''4

    c''8
    [

    c''8
    \!
    - \tweak color #(x11-color 'blue)
    \>
    ]

    c''2

    % [Cello_II_Music_Voice measure 231 / measure 6]
    c''1

    c''8
    [

    c''8
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
    ]

    c''4

    % [Cello_II_Music_Voice measure 232 / measure 7]
    c''2

    c''16
    [

    c''8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    c''4

    c''16
    [

    c''8.
    \!
    - \tweak color #(x11-color 'blue)
    \>
    ]

    c''4

    % [Cello_II_Music_Voice measure 233 / measure 8]
    c''1

    c''16
    [

    c''8.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \<
    ]

    c''4
    - \tweak color #(x11-color 'blue)
    \baca-f-scratch
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<

    % [Cello_II_Music_Voice measure 234 / measure 9]
    c''2.
    \!
    - \tweak color #(x11-color 'blue)
    \>

    c''8
    [

    c''8
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    \<
    ]

    c''2

    % [Cello_II_Music_Voice measure 235 / measure 10]
    c''8
    [

    c''8
    ]

    c''4
    - \tweak color #(x11-color 'blue)
    \baca-ff-scratch
    \revert NoteHead.transparent

    <g' af'! bf'!>1
    :32
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 236 / measure 11]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 236 / measure 11]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 237 / measure 12]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 237 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


y_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \y_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \y_Cello_II_Music_Voice

>>


y_Contrabass_I_Music_Voice = {

    % [Contrabass_I_Music_Voice measure 226 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r1
    - \tweak color #(x11-color 'green4)
    \f
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        <a' b' c''>2
        :32
        - \tweak color #(x11-color 'blue)
        \pp
        ^ \baca-quasi-bisb-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation
        \revert TupletBracket.direction

    }

    % [Contrabass_I_Music_Voice measure 227 / measure 2]
    <a' b' c''>1.
    :32

    % [Contrabass_I_Music_Voice measure 228 / measure 3]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    fs,!4
    :32
    - \tweak color #(x11-color 'blue)
    \f
    \bacaStopTextSpanMetricModulation
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    \glissando
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs,!2
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \baca-text-spanner-right-text "P2"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs,!4
    :32
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 229 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 229 / measure 4]
            R1 * 1/4

        }

    >>

    % [Contrabass_I_Music_Voice measure 230 / measure 5]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <a' b' c''>4
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.transparent = ##t
    \baca-not-yet-pitched-coloring
    b'8.
    [

    \baca-not-yet-pitched-coloring
    b'16
    \!
    - \tweak color #(x11-color 'blue)
    \<
    ]

    \baca-not-yet-pitched-coloring
    b'4

    \baca-not-yet-pitched-coloring
    b'8.
    [

    \baca-not-yet-pitched-coloring
    b'16
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    \baca-not-yet-pitched-coloring
    b'2

    % [Contrabass_I_Music_Voice measure 231 / measure 6]
    \baca-not-yet-pitched-coloring
    b'4

    \baca-not-yet-pitched-coloring
    b'16
    [

    \baca-not-yet-pitched-coloring
    b'8.
    \!
    - \tweak color #(x11-color 'blue)
    \>
    ]

    \baca-not-yet-pitched-coloring
    b'2

    \baca-not-yet-pitched-coloring
    b'16
    [

    \baca-not-yet-pitched-coloring
    b'8.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
    ]

    \baca-not-yet-pitched-coloring
    b'4

    % [Contrabass_I_Music_Voice measure 232 / measure 7]
    \baca-not-yet-pitched-coloring
    b'1

    \baca-not-yet-pitched-coloring
    b'4

    \baca-not-yet-pitched-coloring
    b'16
    [

    \baca-not-yet-pitched-coloring
    b'8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    % [Contrabass_I_Music_Voice measure 233 / measure 8]
    \baca-not-yet-pitched-coloring
    b'2.

    \baca-not-yet-pitched-coloring
    b'4
    \!
    - \tweak color #(x11-color 'blue)
    \>

    \baca-not-yet-pitched-coloring
    b'8
    [

    \baca-not-yet-pitched-coloring
    b'8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \<
    ]

    \baca-not-yet-pitched-coloring
    b'4

    % [Contrabass_I_Music_Voice measure 234 / measure 9]
    \baca-not-yet-pitched-coloring
    b'2

    \baca-not-yet-pitched-coloring
    b'8
    [

    \baca-not-yet-pitched-coloring
    b'8
    - \tweak color #(x11-color 'blue)
    \baca-f-scratch
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    \baca-not-yet-pitched-coloring
    b'2.

    % [Contrabass_I_Music_Voice measure 235 / measure 10]
    \baca-not-yet-pitched-coloring
    b'2

    \baca-not-yet-pitched-coloring
    b'8
    [

    \baca-not-yet-pitched-coloring
    b'8
    \!
    - \tweak color #(x11-color 'blue)
    \>
    ]

    \baca-not-yet-pitched-coloring
    b'16
    [

    \baca-not-yet-pitched-coloring
    b'8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    \<
    ]

    \baca-not-yet-pitched-coloring
    b'16
    [

    \baca-not-yet-pitched-coloring
    b'16

    \baca-not-yet-pitched-coloring
    b'16
    - \tweak color #(x11-color 'blue)
    \baca-ff-scratch

    \baca-not-yet-pitched-coloring
    b'16
    ]
    \revert NoteHead.transparent

    <a' b' c''>4
    :32
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 236 / measure 11]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 236 / measure 11]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 237 / measure 12]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 237 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


y_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \y_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \y_Contrabass_I_Music_Voice

>>


y_Contrabass_II_Music_Voice = {

    % [Contrabass_II_Music_Voice measure 226 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-ii-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r1
    - \tweak color #(x11-color 'green4)
    \f
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        <g' af'! bf'!>2
        :32
        - \tweak color #(x11-color 'blue)
        \pp
        ^ \baca-quasi-bisb-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation
        \revert TupletBracket.direction

    }

    % [Contrabass_II_Music_Voice measure 227 / measure 2]
    <g' af'! bf'!>1.
    :32

    % [Contrabass_II_Music_Voice measure 228 / measure 3]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    fs,!2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    \bacaStopTextSpanMetricModulation
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    \glissando
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \baca-text-spanner-right-text "O"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs,!2
    :32
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 229 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 229 / measure 4]
            R1 * 1/4

        }

    >>

    % [Contrabass_II_Music_Voice measure 230 / measure 5]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <g' af'! bf'!>2.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.transparent = ##t
    c''8
    [

    c''8
    \!
    - \tweak color #(x11-color 'blue)
    \<
    ]

    c''2

    % [Contrabass_II_Music_Voice measure 231 / measure 6]
    c''4

    c''16
    [

    c''8.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    c''4
    \!
    - \tweak color #(x11-color 'blue)
    \>

    c''2.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    % [Contrabass_II_Music_Voice measure 232 / measure 7]
    c''1.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<

    % [Contrabass_II_Music_Voice measure 233 / measure 8]
    c''4

    c''8
    \!
    - \tweak color #(x11-color 'blue)
    \>
    [

    c''8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \<
    ]

    c''8.
    [

    c''16
    - \tweak color #(x11-color 'blue)
    \baca-f-scratch
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    ]

    c''4

    c''16
    [

    c''8.
    \!
    - \tweak color #(x11-color 'blue)
    \>
    ]

    c''4

    % [Contrabass_II_Music_Voice measure 234 / measure 9]
    c''2

    c''16
    [

    c''8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    \<
    ]

    c''2.

    % [Contrabass_II_Music_Voice measure 235 / measure 10]
    c''2

    c''16
    [

    c''8.
    ]

    c''4
    - \tweak color #(x11-color 'blue)
    \baca-ff-scratch
    \revert NoteHead.transparent

    <g' af'! bf'!>2
    :32
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 236 / measure 11]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 236 / measure 11]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 237 / measure 12]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 237 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


y_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \y_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \y_Contrabass_II_Music_Voice

>>
