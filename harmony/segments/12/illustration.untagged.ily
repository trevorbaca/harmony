l_Global_Skips = {

    % [12 Global_Skips measure 99 / measure 1]
    \time 3/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 3/4
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "L" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "L" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[L.1]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [12 Global_Skips measure 100 / measure 2]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶M.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [12 Global_Skips measure 101 / measure 3]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[L.2-3]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [12 Global_Skips measure 102 / measure 4]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN

    % [12 Global_Skips measure 103 / measure 5]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [12 Global_Skips measure 104 / measure 6]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [12 Global_Skips measure 105 / measure 7]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN

    % [12 Global_Skips measure 106 / measure 8]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN

    % [12 Global_Skips measure 107 / measure 9]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-eleven
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN

    % [12 Global_Skips measure 108 / measure 10]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀J.6]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [12 Global_Skips measure 109 / measure 11]
    \bar ".|:"
%%% \once \override Score.BarLine.X-extent = #'(0 . 2)
    \once \override Score.BarLine.X-extent = #'(0 . 3)
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[L.4-5]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #3 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [12 Global_Skips measure 110 / measure 12]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "12"
    \bacaStartTextSpanLMN

    % [12 Global_Skips measure 111 / measure 13]
    \bar ":.|.:"
%%% \once \override Score.BarLine.X-extent = #'(0 . 3)
    \once \override Score.BarLine.X-extent = #'(0 . 4)
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "13"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[L.6-8]"
    \bacaStartTextSpanSNM

    % [12 Global_Skips measure 112 / measure 14]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "14"
    \bacaStartTextSpanLMN

    % [12 Global_Skips measure 113 / measure 15]
    \bar ":|."
    \once \override Score.BarLine.X-extent = #'(0 . 1.5)
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "15"
    \bacaStartTextSpanLMN

    % [12 Global_Skips measure 114 / measure 16]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


l_Global_Rests = {

    % [12 Global_Rests measure 99 / measure 1]
    R1 * 3/4

    % [12 Global_Rests measure 100 / measure 2]
    R1 * 5/4

    % [12 Global_Rests measure 101 / measure 3]
    R1 * 3/4

    % [12 Global_Rests measure 102 / measure 4]
    R1 * 5/4

    % [12 Global_Rests measure 103 / measure 5]
    R1 * 3/4

    % [12 Global_Rests measure 104 / measure 6]
    R1 * 5/4

    % [12 Global_Rests measure 105 / measure 7]
    R1 * 3/4

    % [12 Global_Rests measure 106 / measure 8]
    R1 * 5/4

    % [12 Global_Rests measure 107 / measure 9]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [12 Global_Rests measure 108 / measure 10]
    R1 * 3/2

    % [12 Global_Rests measure 109 / measure 11]
    R1 * 3/4

    % [12 Global_Rests measure 110 / measure 12]
    R1 * 1

    % [12 Global_Rests measure 111 / measure 13]
    R1 * 3/4

    % [12 Global_Rests measure 112 / measure 14]
    R1 * 3/4

    % [12 Global_Rests measure 113 / measure 15]
    R1 * 1

    % [12 Global_Rests measure 114 / measure 16]
    R1 * 1/4

}


l_Bass_Flute_Music_Voice_A = {

    \voiceTwo
    a'8.
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 5
    - \tweak direction #down
    - \tweak staff-padding 8
    \startTextSpan
    - \tweak stencil ##f
    ~

    a'1
    \repeatTie
    - \tweak stencil ##f
    ~

    a'4
    \repeatTie

}


l_Bass_Flute_Music_Voice = {

    % [12 Bass_Flute_Music_Voice measure 99 / measure 1]
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-bfl-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    <ef'! ef''! bf''!>4.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \abjad-invisible-music-coloring
    <ef'! ef''! bf''!>4.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    % [12 Bass_Flute_Music_Voice measure 100 / measure 2]
    b''4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \bacaStopTextSpanMetricModulation

    \abjad-invisible-music-coloring
    b''4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>
    - \tweak stencil ##f
    ~

    b''4
    :32
    \repeatTie

    r2.
    - \tweak color #(x11-color 'blue)
    \!

    % [12 Bass_Flute_Music_Voice measure 101 / measure 3]
    <ef'! ef''! bf''!>4.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    <ef'! ef''! bf''!>4.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [12 Bass_Flute_Music_Voice measure 102 / measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 5/4
            - \tweak color #(x11-color 'blue)
            \!

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [12 Bass_Flute_Rest_Voice measure 102 / measure 4]
            R1 * 5/4

        }

    >>

    % [12 Bass_Flute_Music_Voice measure 103 / measure 5]
    <ef'! ef''! bf''!>4.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    <ef'! ef''! bf''!>4.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [12 Bass_Flute_Music_Voice measure 104 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 5/4
            - \tweak color #(x11-color 'blue)
            \!

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [12 Bass_Flute_Rest_Voice measure 104 / measure 6]
            R1 * 5/4

        }

    >>

    % [12 Bass_Flute_Music_Voice measure 105 / measure 7]
    <ef'! ef''! bf''!>4.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    <ef'! ef''! bf''!>4.
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [12 Bass_Flute_Music_Voice measure 106 / measure 8]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 5/4
            - \tweak color #(x11-color 'blue)
            \!

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [12 Bass_Flute_Rest_Voice measure 106 / measure 8]
            R1 * 5/4

        }

    >>

    % [12 Bass_Flute_Music_Voice measure 107 / measure 9]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
    \override Staff.BarLine.bar-extent = #'(0 . 0)

    % [12 Bass_Flute_Music_Voice measure 108 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t
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
            [
            (

            ctqs'''!8 * 2/5

            d'''8 * 2/5

            dqs'''!8 * 2/5

            cs'''!8 * 2/5

            d'''8 * 2/5

            as''!8 * 2/5

            b''8 * 2/5

            bqs''!8 * 2/5
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        \l_Bass_Flute_Music_Voice_A

    >>

    % [12 Bass_Flute_Music_Voice measure 109 / measure 11]
    \oneVoice
    dtqf'''!4
    - \tweak staff-padding 8
    ^ \baca-seven-e-flat
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \tweak staff-padding 5.5
    \startTextSpan

    dtqf'''!2
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan
    \breathe

    % [12 Bass_Flute_Music_Voice measure 110 / measure 12]
    dtqf'''!4
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \tweak staff-padding 5.5
    \startTextSpan

    dtqf'''!2.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan
    \breathe

    % [12 Bass_Flute_Music_Voice measure 111 / measure 13]
    dtqf'''!4
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \tweak staff-padding 5.5
    \startTextSpan
    - \tweak stencil ##f
    ~

    dtqf'''8
    \repeatTie
    [

    dtqf'''!8
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    ]
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan
    - \tweak stencil ##f
    ~

    dtqf'''4
    \repeatTie
    \breathe

    % [12 Bass_Flute_Music_Voice measure 112 / measure 14]
    dtqf'''!4
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \tweak staff-padding 5.5
    \startTextSpan
    - \tweak stencil ##f
    ~

    dtqf'''8
    \repeatTie
    [

    dtqf'''!8
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    ]
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan
    - \tweak stencil ##f
    ~

    dtqf'''4
    \repeatTie
    \breathe

    % [12 Bass_Flute_Music_Voice measure 113 / measure 15]
    dtqf'''!4
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \tweak staff-padding 5.5
    \startTextSpan
    - \tweak stencil ##f
    ~

    dtqf'''8
    \repeatTie

    dtqf'''!8
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan
    - \tweak stencil ##f
    ~

    dtqf'''4
    \repeatTie
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        dtqf'''8
        \repeatTie

        b''4 * 1/2
        :32
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        \stopTextSpan
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation

        \once \override DynamicText.X-offset = -0.75
        \abjad-invisible-music-coloring
        b''4 * 1/2
        :32
        - \tweak color #(x11-color 'blue)
        \f
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [12 Bass_Flute_Music_Voice measure 114 / measure 16]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [12 Bass_Flute_Rest_Voice measure 114 / measure 16]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


l_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \l_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \l_Bass_Flute_Music_Voice

>>


l_Percussion_I_Music_Voice_A = {

    r4.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

}


l_Percussion_I_Music_Voice_B = {

    \once \override Dots.extra-offset = #'(1 . 0)
    \once \override Dots.X-extent = ##f
    \once \override Rest.X-extent = #'(0 . 0)
    r2..
    - \tweak color #(x11-color 'blue)
    \f

}


l_Percussion_I_Music_Voice = {

    % [12 Percussion_I_Music_Voice measure 99 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-perc-i-markup
    \once \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    ef'!2.
    - \tweak color #(x11-color 'blue)
    \mf
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [12 Percussion_I_Music_Voice measure 100 / measure 2]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 3
            \startStaff
            \once \override Staff.Clef.X-extent = ##f
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
            \clef "percussion"
            \slash
            \voiceOne
            \once \override Staff.Clef.color = #(x11-color 'blue)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            a8 * 2/5
            [
            (
            \override Staff.BarLine.bar-extent = #'(-2 . 1)
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \l_Percussion_I_Music_Voice_A

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            c'8 * 2/5
            [
            (

            c'8 * 2/5

            c'8 * 2/5

            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        \l_Percussion_I_Music_Voice_B

    >>

    % [12 Percussion_I_Music_Voice measure 101 / measure 3]
    \oneVoice
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    ef'!2.
    - \tweak color #(x11-color 'DeepPink1)
    \mp
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [12 Percussion_I_Music_Voice measure 102 / measure 4]
        ef'!1
        - \tweak color #(x11-color 'DeepPink1)
        \mp
        \laissezVibrer

    }

    % [12 Percussion_I_Music_Voice measure 103 / measure 5]
    ef'!2.
    - \tweak color #(x11-color 'DeepPink1)
    \p
    \laissezVibrer

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [12 Percussion_I_Music_Voice measure 104 / measure 6]
        ef'!1
        - \tweak color #(x11-color 'DeepPink1)
        \p
        \laissezVibrer

    }

    % [12 Percussion_I_Music_Voice measure 105 / measure 7]
    ef'!2.
    - \tweak color #(x11-color 'DeepPink1)
    \pp
    \laissezVibrer

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [12 Percussion_I_Music_Voice measure 106 / measure 8]
        ef'!1
        - \tweak color #(x11-color 'DeepPink1)
        \pp
        \laissezVibrer
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [12 Percussion_I_Music_Voice measure 107 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [12 Percussion_I_Rest_Voice measure 107 / measure 9]
            R1 * 1/4

        }

    >>

    % [12 Percussion_I_Music_Voice measure 108 / measure 10]
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override DynamicLineSpanner.staff-padding = 6
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    R1 * 3/2
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [12 Percussion_I_Music_Voice measure 109 / measure 11]
    \override Stem.direction = #up
    c'8
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup

    r8

    c'8

    r8

    c'8

    r8

    % [12 Percussion_I_Music_Voice measure 110 / measure 12]
    c'8

    r8

    c'8

    r8

    c'8

    r8

    c'8
    \revert Stem.direction

    r8

    % [12 Percussion_I_Music_Voice measure 111 / measure 13]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    b4 * 3/4
    - \tweak staff-padding 6
    ^ \baca-bd-superball-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    b4 * 1/4
    - \tweak color #(x11-color 'blue)
    \f
    \revert Stem.direction

    r2
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [12 Percussion_I_Music_Voice measure 112 / measure 14]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 3/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [12 Percussion_I_Rest_Voice measure 112 / measure 14]
            R1 * 3/4

        }

    >>

    % [12 Percussion_I_Music_Voice measure 113 / measure 15]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    b4 * 3/4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    b4 * 1/4
    - \tweak color #(x11-color 'blue)
    \f
    \revert Stem.direction

    r2.
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [12 Percussion_I_Music_Voice measure 114 / measure 16]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [12 Percussion_I_Rest_Voice measure 114 / measure 16]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


l_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \l_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \l_Percussion_I_Music_Voice

>>


l_Percussion_II_Music_Voice_A = {

    r4.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

}


l_Percussion_II_Music_Voice_B = {

    \once \override Dots.extra-offset = #'(1 . 0)
    \once \override Dots.X-extent = ##f
    \once \override Rest.X-extent = #'(0 . 0)
    r2..
    - \tweak color #(x11-color 'blue)
    \f

}


l_Percussion_II_Music_Voice = {

    % [12 Percussion_II_Music_Voice measure 99 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
    \once \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    c'2.
    - \tweak color #(x11-color 'blue)
    \pp
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [12 Percussion_II_Music_Voice measure 100 / measure 2]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 3
            \startStaff
            \slash
            \voiceOne
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            a8 * 2/5
            [
            (

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_II_Music_Voice"
        \l_Percussion_II_Music_Voice_A

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \slash
            \voiceOne
            c'8 * 2/5
            [
            (

            c'8 * 2/5

            c'8 * 2/5

            c'8 * 2/5

            c'8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_II_Music_Voice"
        \l_Percussion_II_Music_Voice_B

    >>

    % [12 Percussion_II_Music_Voice measure 101 / measure 3]
    \oneVoice
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override TupletBracket.direction = #up
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'2.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-pp-sempre
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [12 Percussion_II_Music_Voice measure 102 / measure 4]
        \once \override LaissezVibrerTie.direction = #up
        c'1
        \laissezVibrer

    }

    % [12 Percussion_II_Music_Voice measure 103 / measure 5]
    c'2.
    \laissezVibrer

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [12 Percussion_II_Music_Voice measure 104 / measure 6]
        \once \override LaissezVibrerTie.direction = #up
        c'1
        \laissezVibrer

    }

    % [12 Percussion_II_Music_Voice measure 105 / measure 7]
    c'2.
    \laissezVibrer

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [12 Percussion_II_Music_Voice measure 106 / measure 8]
        \once \override LaissezVibrerTie.direction = #up
        c'1
        \laissezVibrer
        \revert TupletBracket.direction
        \revert Stem.direction
        \revert TupletBracket.direction

    }

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [12 Percussion_II_Music_Voice measure 107 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [12 Percussion_II_Rest_Voice measure 107 / measure 9]
            R1 * 1/4

        }

    >>

    % [12 Percussion_II_Music_Voice measure 108 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    b1.
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 6
    ^ \baca-bd-fingertips-markup
    \glissando

    % [12 Percussion_II_Music_Voice measure 109 / measure 11]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    b2.

    % [12 Percussion_II_Music_Voice measure 110 / measure 12]
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

    % [12 Percussion_II_Music_Voice measure 111 / measure 13]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'4
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup
    - \tweak stencil ##f
    ~

    d'8
    \repeatTie

    r8

    r4

    % [12 Percussion_II_Music_Voice measure 112 / measure 14]
    d'4
    - \tweak stencil ##f
    ~

    d'8
    \repeatTie

    r8

    r4

    % [12 Percussion_II_Music_Voice measure 113 / measure 15]
    d'4
    - \tweak stencil ##f
    ~

    d'8
    \repeatTie
    \revert Stem.direction

    r8

    r2
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [12 Percussion_II_Music_Voice measure 114 / measure 16]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [12 Percussion_II_Rest_Voice measure 114 / measure 16]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


l_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \l_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \l_Percussion_II_Music_Voice

>>


l_Harp_Music_Voice = {

    % [12 Harp_Music_Voice measure 99 / measure 1]
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
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    ef'!2.
    - \tweak color #(x11-color 'blue)
    \mf
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-sons-xylophoniques-markup
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [12 Harp_Music_Voice measure 100 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <b, c df!>4
    :32
    - \tweak staff-padding 4
    ^ \baca-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    <b, c df!>2.
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    % [12 Harp_Music_Voice measure 101 / measure 3]
    <b, c df!>2.
    :32

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [12 Harp_Music_Voice measure 102 / measure 4]
        <b, c df!>1
        :32

    }

    % [12 Harp_Music_Voice measure 103 / measure 5]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    ef'!2.
    - \tweak color #(x11-color 'blue)
    \p
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-sons-xylophoniques-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [12 Harp_Music_Voice measure 104 / measure 6]
        ef'!1
        - \tweak color #(x11-color 'DeepPink1)
        \p
        \laissezVibrer

    }

    % [12 Harp_Music_Voice measure 105 / measure 7]
    ef'!2.
    - \tweak color #(x11-color 'blue)
    \pp
    \laissezVibrer

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [12 Harp_Music_Voice measure 106 / measure 8]
        ef'!1
        - \tweak color #(x11-color 'DeepPink1)
        \pp
        \laissezVibrer

    }

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [12 Harp_Music_Voice measure 107 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [12 Harp_Rest_Voice measure 107 / measure 9]
            R1 * 1/4

        }

    >>

    % [12 Harp_Music_Voice measure 108 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    R1 * 3/2

    % [12 Harp_Music_Voice measure 109 / measure 11]
    e'8
    - \tweak color #(x11-color 'blue)
    \f
    - \snappizzicato

    r8

    e'8
    - \snappizzicato

    r8

    e'8
    - \snappizzicato

    r8

    % [12 Harp_Music_Voice measure 110 / measure 12]
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

    % [12 Harp_Music_Voice measure 111 / measure 13]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'4
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-whisk-markup
    - \tweak stencil ##f
    ~
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    c'8
    \repeatTie

    r8

    r4

    % [12 Harp_Music_Voice measure 112 / measure 14]
    c'4
    - \tweak stencil ##f
    ~

    c'8
    \repeatTie

    r8

    r4

    % [12 Harp_Music_Voice measure 113 / measure 15]
    c'4
    - \tweak stencil ##f
    ~

    c'8
    \repeatTie
    \revert Stem.direction

    r8

    r2
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [12 Harp_Music_Voice measure 114 / measure 16]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [12 Harp_Rest_Voice measure 114 / measure 16]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


l_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \l_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \l_Harp_Music_Voice

>>


l_Viola_Music_Voice_A = {

    \voiceTwo
    df!1
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~

    % [12 Viola_Music_Voice measure 101 / measure 3]
    df2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [12 Viola_Music_Voice measure 102 / measure 4]
    df1
    \repeatTie
    - \tweak stencil ##f
    ~

    df4
    \repeatTie
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

}


l_Viola_Music_Voice = {

    % [12 Viola_Music_Voice measure 99 / measure 1]
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-va-markup
    \once \override DynamicLineSpanner.staff-padding = 4
    \once \override NoteHead.style = #'harmonic
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    a''2.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak bound-details.right.padding 2
    \startTrillSpan
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [12 Viola_Music_Voice measure 100 / measure 2]
    \override NoteHead.style = #'harmonic-black
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "alto"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic-black
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                df
                f
            >8 * 2/5
            [
            (

            fs!8 * 2/5

            d8 * 2/5

            ds!8 * 2/5

            dtqs!8 * 2/5

            e8 * 2/5

            eqs!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        \l_Viola_Music_Voice_A

    >>

    % [12 Viola_Music_Voice measure 103 / measure 5]
    \oneVoice
    \override DynamicLineSpanner.staff-padding = 4
    r4
    - \tweak color #(x11-color 'blue)
    \!

    bf!4
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-staccati #3
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P4"
    - \baca-text-spanner-right-text "T4"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    r4

    % [12 Viola_Music_Voice measure 104 / measure 6]
    bf!4
    - \baca-staccati #3

    r4

    r4

    bf!4
    - \baca-staccati #3

    r4

    % [12 Viola_Music_Voice measure 105 / measure 7]
    bf!4
    - \baca-staccati #3

    r4

    r4

    % [12 Viola_Music_Voice measure 106 / measure 8]
    bf!4
    - \baca-staccati #3

    r4

    bf!4
    - \baca-staccati #3

    bf!4
    - \baca-staccati #3

    bf!4
    - \baca-staccati #3
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [12 Viola_Music_Voice measure 107 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [12 Viola_Rest_Voice measure 107 / measure 9]
            R1 * 1/4

        }

    >>

    % [12 Viola_Music_Voice measure 108 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    d1.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T1"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [12 Viola_Music_Voice measure 109 / measure 11]
    bf!4
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \p
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T4"
    - \baca-text-spanner-right-text "O"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    bf!4
    :32
    - \accent

    bf!4
    :32
    - \accent

    % [12 Viola_Music_Voice measure 110 / measure 12]
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

    % [12 Viola_Music_Voice measure 111 / measure 13]
    bf!2
    :32
    - \accent
    \bacaStopTextSpanSCP

    bf!8.
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-sffp
    - \accent
    [

    bf!16
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-sffp
    - \accent
    ~
    ]

    % [12 Viola_Music_Voice measure 112 / measure 14]
    bf4
    :32
    - \tweak stencil ##f
    ~

    bf16
    :32
    \repeatTie
    [

    bf!8.
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-sffp
    - \accent
    ]
    - \tweak stencil ##f
    ~

    bf4
    :32
    \repeatTie
    - \tweak stencil ##f
    ~

    % [12 Viola_Music_Voice measure 113 / measure 15]
    bf16
    :32
    \repeatTie
    [

    bf!8.
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-sffp
    - \accent
    ]

    bf!4
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-sffp
    - \accent
    - \tweak stencil ##f
    ~

    bf8
    :32
    \repeatTie
    [

    bf!8
    :32
    - \tweak color #(x11-color 'blue)
    \baca-sffp
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ]
    - \tweak stencil ##f
    ~

    bf4
    :32
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [12 Viola_Music_Voice measure 114 / measure 16]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \!

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [12 Viola_Rest_Voice measure 114 / measure 16]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


l_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \l_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \l_Viola_Music_Voice

>>


l_Cello_I_Music_Voice_A = {

    \voiceTwo
    c2.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

}


l_Cello_I_Music_Voice = {

    % [12 Cello_I_Music_Voice measure 99 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override DynamicLineSpanner.staff-padding = 4
    \once \override NoteHead.style = #'harmonic
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    gqs'''!2.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak bound-details.right.padding 2
    \startTrillSpan
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [12 Cello_I_Music_Voice measure 100 / measure 2]
    \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic-black
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                c
                e
            >8 * 2/5
            [
            (

            f8 * 2/5

            cs!8 * 2/5

            d8 * 2/5

            dqs!8 * 2/5

            ds!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        \l_Cello_I_Music_Voice_A

    >>
    \oneVoice

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9 {

        % [12 Cello_I_Music_Voice measure 101 / measure 3]
        \override DynamicLineSpanner.staff-padding = 6
        r4

        r4

        r4

        r4

        r4

        r4

        aqf!4
        - \tweak color #(x11-color 'blue)
        \f
        - \baca-staccati #3
        - \tweak extra-offset #'(-2 . 0)
        - \tweak self-alignment-X 1
        ^ \baca-eleven-e-flat
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "P4"
        - \baca-text-spanner-right-text "T4"
        - \tweak bound-details.right.padding 0.5
        - \tweak bound-details.right.stencil-align-dir-y #center
        - \tweak staff-padding 5.5
        \bacaStartTextSpanSCP

        aqf!4
        - \baca-staccati #3

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9 {

        % [12 Cello_I_Music_Voice measure 103 / measure 5]
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
    \times 8/9 {

        % [12 Cello_I_Music_Voice measure 105 / measure 7]
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
        \bacaStopTextSpanSCP
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [12 Cello_I_Music_Voice measure 107 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [12 Cello_I_Rest_Voice measure 107 / measure 9]
            R1 * 1/4

        }

    >>

    % [12 Cello_I_Music_Voice measure 108 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 4
    d,1.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T1"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [12 Cello_I_Music_Voice measure 109 / measure 11]
    aqf!4
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \p
    - \accent
    - \tweak X-offset 3
    - \tweak padding 1
    ^ \baca-eleven-e-flat
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T4"
    - \baca-text-spanner-right-text "O"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    aqf!4
    :32
    - \accent

    aqf!4
    :32
    - \accent

    % [12 Cello_I_Music_Voice measure 110 / measure 12]
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

    % [12 Cello_I_Music_Voice measure 111 / measure 13]
    \override TupletBracket.direction = #up
    aqf!2
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        aqf8
        :32
        \repeatTie

        aqf!4
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-sffp
        - \accent
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        % [12 Cello_I_Music_Voice measure 112 / measure 14]
        aqf4
        :32
        \repeatTie

        aqf!8
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-sffp
        - \accent
        ~

    }

    aqf4
    :32

    aqf!4
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-sffp
    - \accent
    - \tweak stencil ##f
    ~

    % [12 Cello_I_Music_Voice measure 113 / measure 15]
    aqf4
    :32
    \repeatTie
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        aqf8
        :32
        \repeatTie

        aqf!4
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-sffp
        - \accent
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        aqf4
        :32
        \repeatTie

        aqf!8
        :32
        - \tweak color #(x11-color 'blue)
        \baca-sffp
        - \accent
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        ~

    }

    aqf4
    :32
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [12 Cello_I_Music_Voice measure 114 / measure 16]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \!

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [12 Cello_I_Rest_Voice measure 114 / measure 16]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


l_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \l_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \l_Cello_I_Music_Voice

>>


l_Cello_II_Music_Voice = {

    % [12 Cello_II_Music_Voice measure 99 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
    \once \override NoteHead.style = #'harmonic
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs''!2.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak bound-details.right.padding 2
    \startTrillSpan
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [12 Cello_II_Music_Voice measure 100 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    c2.
    - \tweak color #(x11-color 'blue)
    \mp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/10 {

        % [12 Cello_II_Music_Voice measure 101 / measure 3]
        \override DynamicLineSpanner.staff-padding = 6
        f4
        - \tweak color #(x11-color 'blue)
        \f
        - \baca-staccati #3
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        \bacaStopTextSpanDamp
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "P4"
        - \baca-text-spanner-right-text "T4"
        - \tweak bound-details.right.padding 0.5
        - \tweak bound-details.right.stencil-align-dir-y #center
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP

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
    \times 8/10 {

        % [12 Cello_II_Music_Voice measure 103 / measure 5]
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
    \times 8/10 {

        % [12 Cello_II_Music_Voice measure 105 / measure 7]
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
        \bacaStopTextSpanSCP
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [12 Cello_II_Music_Voice measure 107 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [12 Cello_II_Rest_Voice measure 107 / measure 9]
            R1 * 1/4

        }

    >>

    % [12 Cello_II_Music_Voice measure 108 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 4
    d,1.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T1"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [12 Cello_II_Music_Voice measure 109 / measure 11]
    f4
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \p
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T4"
    - \baca-text-spanner-right-text "O"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    f4
    :32
    - \accent

    f4
    :32
    - \accent

    % [12 Cello_II_Music_Voice measure 110 / measure 12]
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

    % [12 Cello_II_Music_Voice measure 111 / measure 13]
    \override TupletBracket.direction = #up
    f4
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        f8
        :32
        \repeatTie

        f4
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-sffp
        - \accent
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        f4
        :32
        \repeatTie

        f8
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-sffp
        - \accent
        ~

    }

    % [12 Cello_II_Music_Voice measure 112 / measure 14]
    f2
    :32

    f4
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-sffp
    - \accent
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        % [12 Cello_II_Music_Voice measure 113 / measure 15]
        f8
        :32
        \repeatTie

        f4
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-sffp
        - \accent
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        f4
        :32
        \repeatTie

        f8
        :32
        - \tweak color #(x11-color 'blue)
        \baca-sffp
        - \accent
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        ~

    }

    f2
    :32
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [12 Cello_II_Music_Voice measure 114 / measure 16]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \!

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [12 Cello_II_Rest_Voice measure 114 / measure 16]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


l_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \l_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \l_Cello_II_Music_Voice

>>


l_Contrabass_I_Music_Voice_A = {

    \voiceTwo
    b2.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

}


l_Contrabass_I_Music_Voice = {

    % [12 Contrabass_I_Music_Voice measure 99 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
    \override DynamicLineSpanner.staff-padding = 4
    \once \override NoteHead.style = #'harmonic
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    cs'''!2.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak bound-details.right.padding 2
    \startTrillSpan
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [12 Contrabass_I_Music_Voice measure 100 / measure 2]
    \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic-black
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                b
                ds'!
            >8 * 2/5
            [
            (

            e'8 * 2/5

            c'8 * 2/5

            cs'!8 * 2/5

            ctqs'!8 * 2/5

            d'8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        \l_Contrabass_I_Music_Voice_A

    >>
    \oneVoice

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/11 {

        % [12 Contrabass_I_Music_Voice measure 101 / measure 3]
        \override DynamicLineSpanner.staff-padding = 6
        r4

        dtqf'!4
        - \tweak color #(x11-color 'blue)
        \f
        - \baca-staccati #3
        - \tweak extra-offset #'(-2 . 0)
        - \tweak self-alignment-X 1
        ^ \baca-seven-e-flat
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "P4"
        - \baca-text-spanner-right-text "T4"
        - \tweak bound-details.right.padding 0.5
        - \tweak bound-details.right.stencil-align-dir-y #center
        - \tweak staff-padding 5.5
        \bacaStartTextSpanSCP

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
    \times 8/11 {

        % [12 Contrabass_I_Music_Voice measure 103 / measure 5]
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
    \times 8/11 {

        % [12 Contrabass_I_Music_Voice measure 105 / measure 7]
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
        \bacaStopTextSpanSCP
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [12 Contrabass_I_Music_Voice measure 107 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [12 Contrabass_I_Rest_Voice measure 107 / measure 9]
            R1 * 1/4

        }

    >>

    % [12 Contrabass_I_Music_Voice measure 108 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 4
    d1.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [12 Contrabass_I_Music_Voice measure 109 / measure 11]
    dtqf'!4
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \p
    - \accent
    - \tweak X-offset 3
    - \tweak padding 1
    ^ \baca-seven-e-flat
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "(T4)"
    - \baca-text-spanner-right-text "O"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    dtqf'!4
    :32
    - \accent

    dtqf'!4
    :32
    - \accent

    % [12 Contrabass_I_Music_Voice measure 110 / measure 12]
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

    % [12 Contrabass_I_Music_Voice measure 111 / measure 13]
    \override TupletBracket.direction = #up
    dtqf'!2
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        dtqf'8
        :32
        \repeatTie
        [

        dtqf'!8.
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-sffp
        - \accent
        ]
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        % [12 Contrabass_I_Music_Voice measure 112 / measure 14]
        dtqf'4
        :32
        \repeatTie

        dtqf'!16
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-sffp
        - \accent
        ~

    }

    dtqf'4
    :32
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        dtqf'8
        :32
        \repeatTie
        [

        dtqf'!8.
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-sffp
        - \accent
        ]
        - \tweak stencil ##f
        ~

    }

    % [12 Contrabass_I_Music_Voice measure 113 / measure 15]
    dtqf'4
    :32
    \repeatTie
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        dtqf'4
        :32
        \repeatTie

        dtqf'!16
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-sffp
        - \accent
        ~

    }

    dtqf'4
    :32
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        dtqf'16
        :32
        \repeatTie

        dtqf'!4
        :32
        - \tweak color #(x11-color 'blue)
        \baca-sffp
        - \accent
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        \revert DynamicLineSpanner.staff-padding
        \revert TupletBracket.direction

    }

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [12 Contrabass_I_Music_Voice measure 114 / measure 16]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \!

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [12 Contrabass_I_Rest_Voice measure 114 / measure 16]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


l_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \l_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \l_Contrabass_I_Music_Voice

>>


l_Contrabass_II_Music_Voice = {

    % [12 Contrabass_II_Music_Voice measure 99 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
    \once \override NoteHead.style = #'harmonic
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    cqf'''!2.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak bound-details.right.padding 2
    \startTrillSpan
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [12 Contrabass_II_Music_Voice measure 100 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    b2.
    - \tweak color #(x11-color 'blue)
    \mp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/12 {

        % [12 Contrabass_II_Music_Voice measure 101 / measure 3]
        \override DynamicLineSpanner.staff-padding = 6
        r4
        \bacaStopTextSpanDamp

        ef!4
        - \tweak color #(x11-color 'blue)
        \f
        - \baca-staccati #3
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "P4"
        - \baca-text-spanner-right-text "T4"
        - \tweak bound-details.right.padding 0.5
        - \tweak bound-details.right.stencil-align-dir-y #center
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP

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
    \times 8/12 {

        % [12 Contrabass_II_Music_Voice measure 103 / measure 5]
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
    \times 8/12 {

        % [12 Contrabass_II_Music_Voice measure 105 / measure 7]
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
        \bacaStopTextSpanSCP
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [12 Contrabass_II_Music_Voice measure 107 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [12 Contrabass_II_Rest_Voice measure 107 / measure 9]
            R1 * 1/4

        }

    >>

    % [12 Contrabass_II_Music_Voice measure 108 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override DynamicLineSpanner.staff-padding = 4
    d1.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [12 Contrabass_II_Music_Voice measure 109 / measure 11]
    ef!4
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \p
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "(T4)"
    - \baca-text-spanner-right-text "O"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    ef!4
    :32
    - \accent

    ef!4
    :32
    - \accent

    % [12 Contrabass_II_Music_Voice measure 110 / measure 12]
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

    % [12 Contrabass_II_Music_Voice measure 111 / measure 13]
    \override TupletBracket.direction = #up
    ef!4
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        ef8.
        :32
        \repeatTie
        [

        ef!8
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-sffp
        - \accent
        ~
        ]

    }

    ef4
    :32

    % [12 Contrabass_II_Music_Voice measure 112 / measure 14]
    ef!2
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-sffp
    - \accent
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        ef8
        :32
        \repeatTie
        [

        ef!8.
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-sffp
        - \accent
        ]
        - \tweak stencil ##f
        ~

    }

    % [12 Contrabass_II_Music_Voice measure 113 / measure 15]
    ef4
    :32
    \repeatTie

    ef!4
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-sffp
    - \accent
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        ef8
        :32
        \repeatTie
        [

        ef!8.
        :32
        - \tweak color #(x11-color 'blue)
        \baca-sffp
        - \accent
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        ]
        - \tweak stencil ##f
        ~

    }

    ef4
    :32
    \repeatTie
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [12 Contrabass_II_Music_Voice measure 114 / measure 16]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \!

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [12 Contrabass_II_Rest_Voice measure 114 / measure 16]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


l_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \l_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \l_Contrabass_II_Music_Voice

>>
