segment.04.Global.Skips = {

    % [Global_Skips measure 24 / measure 1]
    \time 3/4
    \bar ""
    \baca-time-signature-color #'green4
    s1 * 3/4
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "D" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "D" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[D.1-6]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 25 / measure 2]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 26 / measure 3]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 27 / measure 4]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 28 / measure 5]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 29 / measure 6]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 30 / measure 7]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 31 / measure 8]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[D.7]"
    \bacaStartTextSpanSNM

    % [Global_Skips measure 32 / measure 9]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀B.6]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"144" #3 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 33 / measure 10]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[D.8]"
    \bacaStartTextSpanSNM

    % [Global_Skips measure 34 / measure 11]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"72" #1 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 35 / measure 12]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


segment.04.Global.Rests = {

    % [Global_Rests measure 24 / measure 1]
    R1 * 3/4

    % [Global_Rests measure 25 / measure 2]
    R1 * 3/4

    % [Global_Rests measure 26 / measure 3]
    R1 * 3/4

    % [Global_Rests measure 27 / measure 4]
    R1 * 3/4

    % [Global_Rests measure 28 / measure 5]
    R1 * 3/4

    % [Global_Rests measure 29 / measure 6]
    R1 * 3/4

    % [Global_Rests measure 30 / measure 7]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [Global_Rests measure 31 / measure 8]
    R1 * 3/4

    % [Global_Rests measure 32 / measure 9]
    R1 * 5/4

    % [Global_Rests measure 33 / measure 10]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-short-fermata-markup

    % [Global_Rests measure 34 / measure 11]
    R1 * 3/4

    % [Global_Rests measure 35 / measure 12]
    R1 * 1/4

}


segment.04.Bass.Flute.Music.Voice = {

    % [Bass_Flute_Music_Voice measure 24 / measure 1]
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
    fs'!16
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r16

    fs'!8
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    - \tweak stencil ##f
    ~

    fs'2
    \repeatTie
    - \tweak stencil ##f
    ~

    % [Bass_Flute_Music_Voice measure 25 / measure 2]
    fs'8.
    \repeatTie

    r16

    fs'!2
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent

    % [Bass_Flute_Music_Voice measure 26 / measure 3]
    r16

    fs'!8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    - \tweak stencil ##f
    ~

    fs'4
    \repeatTie

    r16

    fs'!8.
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    - \tweak stencil ##f
    ~

    % [Bass_Flute_Music_Voice measure 27 / measure 4]
    fs'2
    \repeatTie

    r16

    fs'!8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent

    % [Bass_Flute_Music_Voice measure 28 / measure 5]
    r16

    fs'!8.
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    - \tweak stencil ##f
    ~

    fs'8
    \repeatTie

    r16

    fs'!16
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    ~

    fs'4
    - \tweak stencil ##f
    ~

    % [Bass_Flute_Music_Voice measure 29 / measure 6]
    fs'2
    \repeatTie
    - \tweak stencil ##f
    ~

    fs'16
    \repeatTie

    r16

    fs'!8
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 30 / measure 7]
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

            % [Bass_Flute_Rest_Voice measure 30 / measure 7]
            R1 * 1/4

        }

    >>

    % [Bass_Flute_Music_Voice measure 31 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    fs'!2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent

    % [Bass_Flute_Music_Voice measure 32 / measure 9]
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>
    - \tweak stencil ##f
    ~

    af''1
    :32
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 33 / measure 10]
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

            % [Bass_Flute_Rest_Voice measure 33 / measure 10]
            R1 * 1/4

        }

    >>

    % [Bass_Flute_Music_Voice measure 34 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    fs'!16
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent

    r16

    fs'!8
    - \accent
    - \tweak stencil ##f
    ~

    fs'4
    \repeatTie

    r16

    fs'!16
    - \accent
    ~
    [

    fs'16
    ]

    r16
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 35 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 35 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.04.Bass.Flute.Music.Staff = <<

    \context GlobalRests = "Global_Rests"
    { \segment.04.Global.Rests }

    \context Voice = "Bass_Flute_Music_Voice"
    { \segment.04.Bass.Flute.Music.Voice }

>>


segment.04.Percussion.I.Music.Voice.1 = {

    r1
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-f-ancora

    r4
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

}


segment.04.Percussion.I.Music.Voice = {

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Percussion_I_Music_Voice measure 24 / measure 1]
        \set Staff.shortInstrumentName = \harmony-perc-i-markup
        \override Staff.BarLine.bar-extent = #'(-2 . 1)
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 3
        \startStaff
        \set Staff.instrumentName = \harmony-perc-i-markup
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 0.5
        \override DynamicLineSpanner.staff-padding = 5.5
        \clef "percussion"
        \once \override Staff.Clef.color = #(x11-color 'green4)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
        r8
        - \tweak color #(x11-color 'green4)
        \f
        \set Staff.shortInstrumentName = \harmony-perc-i-markup
        \override Staff.Clef.color = #(x11-color 'OliveDrab)

        \override Stem.direction = #down
        c'8
        - \tweak color #(x11-color 'blue)
        \f
        - \tweak color #(x11-color 'blue)
        \>
        [

        a8
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8

        c'8
        [

        a8

        c'8

        c'16

        a16
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Percussion_I_Music_Voice measure 25 / measure 2]
        r16

        c'8
        [

        a8

        c'16
        - \tweak color #(x11-color 'blue)
        \p
        ]
        \revert Stem.direction

    }

    r4

    r2
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

    r4

    r4

    % [Percussion_I_Music_Voice measure 27 / measure 4]
    r2

    r4

    % [Percussion_I_Music_Voice measure 28 / measure 5]
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8

        \override Stem.direction = #down
        c'16
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        \<
        [

        e'8

        c'8

        e'8

        e'16
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Percussion_I_Music_Voice measure 29 / measure 6]
        r16

        c'8
        [

        e'8

        c'16
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r16

        e'16
        [

        e'8

        c'8
        - \tweak color #(x11-color 'blue)
        \f
        ]
        \revert Stem.direction

    }

    r4
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 30 / measure 7]
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

            % [Percussion_I_Rest_Voice measure 30 / measure 7]
            R1 * 1/4

        }

    >>

    % [Percussion_I_Music_Voice measure 31 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
    R1 * 3/4

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_I_Music_Voice measure 32 / measure 9]
            \override Stem.direction = #down
            \override TupletBracket.direction = #up
            \override TupletBracket.staff-padding = 0.5
            \slash
            \voiceOne
            a8 * 2/5
            [
            (

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5
            )
            ]
            \revert Stem.direction

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.04.Percussion.I.Music.Voice.1 }

    >>

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 33 / measure 10]
            \oneVoice
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

            % [Percussion_I_Rest_Voice measure 33 / measure 10]
            R1 * 1/4

        }

    >>

    % [Percussion_I_Music_Voice measure 34 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
    R1 * 3/4
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 35 / measure 12]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 35 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.04.Percussion.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.04.Global.Rests }

    \context Voice = "Percussion_I_Music_Voice"
    { \segment.04.Percussion.I.Music.Voice }

>>


segment.04.Percussion.II.Music.Voice = {

    % [Percussion_II_Music_Voice measure 24 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    \override DynamicLineSpanner.staff-padding = 5.5
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    r8
    - \tweak color #(x11-color 'green4)
    \f
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \override Stem.direction = #down
    c'8
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/7
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
        - \tweak color #(x11-color 'blue)
        \p
        ]
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding

    }

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 25 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 3/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 25 / measure 2]
            R1 * 3/4

        }

    >>

    % [Percussion_II_Music_Voice measure 26 / measure 3]
    R1 * 3/4

    % [Percussion_II_Music_Voice measure 27 / measure 4]
    R1 * 3/4

    % [Percussion_II_Music_Voice measure 28 / measure 5]
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    r8

    \override Stem.direction = #down
    e'8
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
    [

    e'8

    e'8

    e'8

    e'8

    % [Percussion_II_Music_Voice measure 29 / measure 6]
    e'8

    e'8

    e'8

    e'8

    e'8

    e'8
    - \tweak color #(x11-color 'blue)
    \f
    ]
    \revert Stem.direction
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 30 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 30 / measure 7]
            R1 * 1/4

        }

    >>

    % [Percussion_II_Music_Voice measure 31 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    r8

    r8

    r8

    \override Stem.direction = #down
    e'8
    - \tweak color #(x11-color 'blue)
    \baca-p-sub
    [
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanMetricModulation

    e'8

    e'8
    ]

    % [Percussion_II_Music_Voice measure 32 / measure 9]
    e'4

    e'4
    \revert Stem.direction

    r2.
    \bacaStopTextSpanMetricModulation
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 33 / measure 10]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 33 / measure 10]
            R1 * 1/4

        }

    >>

    % [Percussion_II_Music_Voice measure 34 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    r4.

    \once \override Stem.direction = #down
    c'4.
    - \tweak color #(x11-color 'blue)
    \baca-f-sub
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanMetricModulation
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 35 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 35 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.04.Percussion.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.04.Global.Rests }

    \context Voice = "Percussion_II_Music_Voice"
    { \segment.04.Percussion.II.Music.Voice }

>>


segment.04.Harp.Music.Voice = {

    % [Harp_Music_Voice measure 24 / measure 1]
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
    cs'!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    cs'8
    \repeatTie
    [

    cs'!8
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    ]
    - \tweak stencil ##f
    ~

    cs'4
    \repeatTie
    - \tweak stencil ##f
    ~

    % [Harp_Music_Voice measure 25 / measure 2]
    cs'16
    \repeatTie
    [

    cs'!16
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    ~

    cs'16

    cs'!16
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    ~
    ]

    cs'4
    - \tweak stencil ##f
    ~

    cs'8.
    \repeatTie
    [

    cs'!16
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    ~
    ]

    % [Harp_Music_Voice measure 26 / measure 3]
    cs'2
    - \tweak stencil ##f
    ~

    cs'8.
    \repeatTie
    [

    cs'!16
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    ~
    ]

    % [Harp_Music_Voice measure 27 / measure 4]
    cs'2.
    - \tweak stencil ##f
    ~

    % [Harp_Music_Voice measure 28 / measure 5]
    cs'8
    \repeatTie
    [

    cs'!8
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    ]
    - \tweak stencil ##f
    ~

    cs'2
    \repeatTie
    - \tweak stencil ##f
    ~

    % [Harp_Music_Voice measure 29 / measure 6]
    cs'4
    \repeatTie
    - \tweak stencil ##f
    ~

    cs'8
    \repeatTie
    [

    cs'!8
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    ]
    - \tweak stencil ##f
    ~

    cs'16
    \repeatTie
    [

    cs'!8.
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    ]

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 30 / measure 7]
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

            % [Harp_Rest_Voice measure 30 / measure 7]
            R1 * 1/4

        }

    >>

    % [Harp_Music_Voice measure 31 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    cs'!16
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    [

    cs'!8.
    - \accent
    ]
    - \tweak stencil ##f
    ~

    cs'2
    \repeatTie

    % [Harp_Music_Voice measure 32 / measure 9]
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 4
    ^ \baca-bisb-markup
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak color #(x11-color 'blue)
    \>

    <gs'! a' b'>1
    :32
    - \tweak color #(x11-color 'blue)
    \p

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 33 / measure 10]
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

            % [Harp_Rest_Voice measure 33 / measure 10]
            R1 * 1/4

        }

    >>

    % [Harp_Music_Voice measure 34 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    cs'!8.
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    [

    cs'!16
    - \accent
    ~
    ]

    cs'2
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 35 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 35 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.04.Harp.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.04.Global.Rests }

    \context Voice = "Harp_Music_Voice"
    { \segment.04.Harp.Music.Voice }

>>


segment.04.Viola.Music.Voice.1 = {

    \override DynamicLineSpanner.staff-padding = 4
    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.5
    \baca-ff-p
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak direction #down
    - \tweak staff-padding 8
    \startTextSpan
    - \tweak stencil ##f
    ~

    af4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

}


segment.04.Viola.Music.Voice = {

    % [Viola_Music_Voice measure 24 / measure 1]
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-va-markup
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    c'2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Viola_Music_Voice measure 25 / measure 2]
    c'8.
    \repeatTie

    r16

    c'2
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    - \tweak stencil ##f
    ~

    % [Viola_Music_Voice measure 26 / measure 3]
    c'4
    \repeatTie
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r16

    c'8
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    - \tweak stencil ##f
    ~

    c'8.
    \repeatTie

    r16

    % [Viola_Music_Voice measure 27 / measure 4]
    c'4
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    - \tweak stencil ##f
    ~

    c'8.
    \repeatTie

    r16

    c'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    - \tweak stencil ##f
    ~

    % [Viola_Music_Voice measure 28 / measure 5]
    c'4
    \repeatTie
    - \tweak stencil ##f
    ~

    c'8.
    \repeatTie

    r16

    c'8
    - \tweak color #(x11-color 'blue)
    \p
    - \accent

    r16

    c'16
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    ~

    % [Viola_Music_Voice measure 29 / measure 6]
    c'8

    r16

    c'16
    - \tweak color #(x11-color 'DeepPink1)
    \pp
    - \accent
    ~

    c'4
    - \tweak stencil ##f
    ~

    c'8.
    \repeatTie
    \revert Stem.direction

    r16
    \revert TupletBracket.direction

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 30 / measure 7]
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

            % [Viola_Rest_Voice measure 30 / measure 7]
            R1 * 1/4

        }

    >>

    % [Viola_Music_Voice measure 31 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
    \baca-repeat-pitch-class-coloring
    c'2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Viola_Music_Voice measure 32 / measure 9]
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \override NoteHead.style = #'harmonic
            \baca-repeat-pitch-class-coloring
            \once \override Staff.Clef.X-extent = ##f
            \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
            \clef "alto"
            \slash
            \voiceOne
            \once \override Staff.Clef.color = #(x11-color 'blue)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            cqs''!8 * 2/5

            cs''!8 * 2/5

            ctqs''!8 * 2/5

            c''8 * 2/5

            cs''!8 * 2/5

            a'8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        { \segment.04.Viola.Music.Voice.1 }

    >>

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 33 / measure 10]
            \oneVoice
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \stopTextSpan
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 33 / measure 10]
            R1 * 1/4

        }

    >>

    % [Viola_Music_Voice measure 34 / measure 11]
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
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
    c'8
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16

    c'16
    - \accent
    ~

    c'4
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r16

    c'16
    - \accent
    \revert Stem.direction

    r16
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 35 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 35 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.04.Viola.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.04.Global.Rests }

    \context Voice = "Viola_Music_Voice"
    { \segment.04.Viola.Music.Voice }

>>


segment.04.Cello.I.Music.Voice.1 = {

    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.5
    \baca-ff-p
    \bacaStopTextSpanDamp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak direction #down
    - \tweak staff-padding 8
    \startTextSpan
    - \tweak stencil ##f
    ~

    af4
    \repeatTie

}


segment.04.Cello.I.Music.Voice = {

    % [Cello_I_Music_Voice measure 24 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    fs!8.
    - \tweak color #(x11-color 'green4)
    \mf
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanDamp
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r16

    fs!4
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    \bacaStopTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    fs8
    \repeatTie

    r16

    fs!16
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    ~

    % [Cello_I_Music_Voice measure 25 / measure 2]
    fs2.
    - \tweak stencil ##f
    ~

    % [Cello_I_Music_Voice measure 26 / measure 3]
    fs8
    \repeatTie

    r16

    fs!16
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    ~

    fs4
    - \tweak stencil ##f
    ~

    fs8
    \repeatTie

    r16

    fs!16
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \accent
    ~

    % [Cello_I_Music_Voice measure 27 / measure 4]
    fs2
    - \tweak stencil ##f
    ~

    fs8
    \repeatTie

    r16

    fs!16
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    ~

    % [Cello_I_Music_Voice measure 28 / measure 5]
    fs4
    - \tweak stencil ##f
    ~

    fs8.
    \repeatTie

    r16

    fs!4
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    - \tweak stencil ##f
    ~

    % [Cello_I_Music_Voice measure 29 / measure 6]
    fs2
    \repeatTie
    - \tweak stencil ##f
    ~

    fs8
    \repeatTie

    r16

    fs!16
    - \tweak color #(x11-color 'blue)
    \p
    - \accent

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 30 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanDamp

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 30 / measure 7]
            R1 * 1/4

        }

    >>

    % [Cello_I_Music_Voice measure 31 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    r16

    fs!16
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    ~
    [
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanDamp

    fs16
    ]

    r16

    fs!2
    - \accent

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Cello_I_Music_Voice measure 32 / measure 9]
            \override NoteHead.style = #'harmonic
            \once \override Staff.Clef.X-extent = ##f
            \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
            \clef "tenor"
            \slash
            \voiceOne
            \once \override Staff.Clef.color = #(x11-color 'blue)
            \set Staff.forceClef = ##t
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                cs''!
            >8 * 2/5
            [
            (
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            a'8 * 2/5

            as'!8 * 2/5

            atqs'!8 * 2/5

            b'8 * 2/5

            bqs'!8 * 2/5

            c''8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        { \segment.04.Cello.I.Music.Voice.1 }

    >>

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 33 / measure 10]
            \oneVoice
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            a1 * 1/4
            \stopTextSpan

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 33 / measure 10]
            R1 * 1/4

        }

    >>

    % [Cello_I_Music_Voice measure 34 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    fs!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    fs16
    \repeatTie

    r16

    fs!8
    - \accent
    - \tweak stencil ##f
    ~

    fs8.
    \repeatTie

    r16
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 35 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanDamp

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 35 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.04.Cello.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.04.Global.Rests }

    \context Voice = "Cello_I_Music_Voice"
    { \segment.04.Cello.I.Music.Voice }

>>


segment.04.Cello.II.Music.Voice.1 = {

    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.5
    \baca-ff-p
    \bacaStopTextSpanDamp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak direction #down
    - \tweak staff-padding 8
    \startTextSpan
    - \tweak stencil ##f
    ~

    af4
    \repeatTie

}


segment.04.Cello.II.Music.Voice = {

    % [Cello_II_Music_Voice measure 24 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    f2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Cello_II_Music_Voice measure 25 / measure 2]
    f8
    \repeatTie

    r16

    f16
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    ~

    f2
    - \tweak stencil ##f
    ~

    % [Cello_II_Music_Voice measure 26 / measure 3]
    f4
    \repeatTie

    r16

    f8.
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent

    r16

    f8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    - \tweak stencil ##f
    ~

    % [Cello_II_Music_Voice measure 27 / measure 4]
    f4
    \repeatTie

    r16

    f8.
    - \tweak color #(x11-color 'DeepPink1)
    \mf
    - \accent
    - \tweak stencil ##f
    ~

    f4
    \repeatTie
    - \tweak stencil ##f
    ~

    % [Cello_II_Music_Voice measure 28 / measure 5]
    f4
    \repeatTie

    r16

    f16
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent

    r16

    f16
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    ~

    f16

    r16

    f8
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \tweak stencil ##f
    ~

    % [Cello_II_Music_Voice measure 29 / measure 6]
    f8.
    \repeatTie

    r16

    f2
    - \tweak color #(x11-color 'DeepPink1)
    \pp
    - \accent

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 30 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanDamp

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 30 / measure 7]
            R1 * 1/4

        }

    >>

    % [Cello_II_Music_Voice measure 31 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    r16

    f8.
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    f8.
    \repeatTie

    r16

    f4
    - \accent

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Cello_II_Music_Voice measure 32 / measure 9]
            \override NoteHead.style = #'harmonic
            \once \override Staff.Clef.X-extent = ##f
            \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
            \clef "tenor"
            \slash
            \voiceOne
            \once \override Staff.Clef.color = #(x11-color 'blue)
            \set Staff.forceClef = ##t
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            cs''!8 * 2/5

            a'8 * 2/5

            as'!8 * 2/5

            atqs'!8 * 2/5

            b'8 * 2/5

            bqs'!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        { \segment.04.Cello.II.Music.Voice.1 }

    >>

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 33 / measure 10]
            \oneVoice
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            a1 * 1/4
            \stopTextSpan

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 33 / measure 10]
            R1 * 1/4

        }

    >>

    % [Cello_II_Music_Voice measure 34 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    f2
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    f8.
    \repeatTie

    r16
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 35 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanDamp

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 35 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.04.Cello.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.04.Global.Rests }

    \context Voice = "Cello_II_Music_Voice"
    { \segment.04.Cello.II.Music.Voice }

>>


segment.04.Contrabass.I.Music.Voice.1 = {

    \override DynamicLineSpanner.staff-padding = 6
    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.5
    \baca-ff-p
    \bacaStopTextSpanPizzicato
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak direction #down
    - \tweak staff-padding 10
    \startTextSpan
    - \tweak stencil ##f
    ~

    af4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

}


segment.04.Contrabass.I.Music.Voice = {

    % [Contrabass_I_Music_Voice measure 24 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
    \override DynamicLineSpanner.staff-padding = 4
    \override NoteHead.style = #'harmonic
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    aqs'!8.
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    ^ \baca-eleven-e
    - \tweak padding 1.5
    _ \baca-string-iv-markup
    [
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-pizz-markup
    - \tweak bound-details.left-broken.text \baca-pizz-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanPizzicato
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    aqs'!16
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    ~
    ]

    aqs'4
    - \tweak stencil ##f
    ~

    aqs'8
    \repeatTie
    [

    aqs'!8
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    ]
    - \tweak stencil ##f
    ~

    % [Contrabass_I_Music_Voice measure 25 / measure 2]
    aqs'2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [Contrabass_I_Music_Voice measure 26 / measure 3]
    aqs'16
    \repeatTie
    [

    aqs'!8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    ]
    - \tweak stencil ##f
    ~

    aqs'4
    \repeatTie
    - \tweak stencil ##f
    ~

    aqs'16
    \repeatTie
    [

    aqs'!8.
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    ]
    - \tweak stencil ##f
    ~

    % [Contrabass_I_Music_Voice measure 27 / measure 4]
    aqs'2
    \repeatTie
    - \tweak stencil ##f
    ~

    aqs'16
    \repeatTie
    [

    aqs'!8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    ]
    - \tweak stencil ##f
    ~

    % [Contrabass_I_Music_Voice measure 28 / measure 5]
    aqs'8.
    \repeatTie
    [

    aqs'!16
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    ~
    ]

    aqs'2

    % [Contrabass_I_Music_Voice measure 29 / measure 6]
    aqs'!2.
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    \revert NoteHead.style

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 30 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanPizzicato

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 30 / measure 7]
            R1 * 1/4

        }

    >>

    % [Contrabass_I_Music_Voice measure 31 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    aqs'!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    ^ \baca-eleven-e
    - \tweak padding 1.5
    _ \baca-string-iv-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-pizz-markup
    - \tweak bound-details.left-broken.text \baca-pizz-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanPizzicato

    aqs'!8
    - \accent
    [

    aqs'!8
    - \accent
    ]
    - \tweak stencil ##f
    ~

    aqs'4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding
    \revert NoteHead.style

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Contrabass_I_Music_Voice measure 32 / measure 9]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                cs''!
            >8 * 2/5
            [
            (

            a'8 * 2/5

            as'!8 * 2/5

            atqs'!8 * 2/5

            b'8 * 2/5

            bqs'!8 * 2/5

            c''8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        { \segment.04.Contrabass.I.Music.Voice.1 }

    >>

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 33 / measure 10]
            \oneVoice
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \stopTextSpan

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 33 / measure 10]
            R1 * 1/4

        }

    >>

    % [Contrabass_I_Music_Voice measure 34 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 4
    \override NoteHead.style = #'harmonic
    aqs'!2
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    ^ \baca-eleven-e
    - \tweak padding 1.5
    _ \baca-string-iv-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-pizz-markup
    - \tweak bound-details.left-broken.text \baca-pizz-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanPizzicato

    aqs'!4
    - \accent
    \revert DynamicLineSpanner.staff-padding
    \revert NoteHead.style

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 35 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanPizzicato

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 35 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.04.Contrabass.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.04.Global.Rests }

    \context Voice = "Contrabass_I_Music_Voice"
    { \segment.04.Contrabass.I.Music.Voice }

>>


segment.04.Contrabass.II.Music.Voice = {

    % [Contrabass_II_Music_Voice measure 24 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
    \override NoteHead.style = #'harmonic
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    fs'!2
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \tweak X-offset 2.5
    - \tweak padding 1
    _ \baca-string-iv-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-pizz-markup
    - \tweak bound-details.left-broken.text \baca-pizz-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanPizzicato
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    fs'16
    \repeatTie
    [

    fs'!8.
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    ]
    - \tweak stencil ##f
    ~

    % [Contrabass_II_Music_Voice measure 25 / measure 2]
    fs'2
    \repeatTie
    - \tweak stencil ##f
    ~

    fs'8.
    \repeatTie
    [

    fs'!16
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    ~
    ]

    % [Contrabass_II_Music_Voice measure 26 / measure 3]
    fs'8
    [

    fs'!8
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    ]
    - \tweak stencil ##f
    ~

    fs'4
    \repeatTie
    - \tweak stencil ##f
    ~

    fs'8
    \repeatTie
    [

    fs'!8
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    ]
    - \tweak stencil ##f
    ~

    % [Contrabass_II_Music_Voice measure 27 / measure 4]
    fs'2
    \repeatTie
    - \tweak stencil ##f
    ~

    fs'8
    \repeatTie
    [

    fs'!8
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    ]
    - \tweak stencil ##f
    ~

    % [Contrabass_II_Music_Voice measure 28 / measure 5]
    fs'2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [Contrabass_II_Music_Voice measure 29 / measure 6]
    fs'8
    \repeatTie
    [

    fs'!8
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    ]

    fs'!4
    - \tweak color #(x11-color 'blue)
    \p
    - \accent

    fs'!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    \revert NoteHead.style

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 30 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanPizzicato
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 30 / measure 7]
            R1 * 1/4

        }

    >>

    % [Contrabass_II_Music_Voice measure 31 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    af,!2.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T1"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Contrabass_II_Music_Voice measure 32 / measure 9]
        af,1
        - \tweak color #(x11-color 'blue)
        \baca-effort-mf
        \repeatTie
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>

    }

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 33 / measure 10]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \bacaStopTextSpanSCP
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 33 / measure 10]
            R1 * 1/4

        }

    >>

    % [Contrabass_II_Music_Voice measure 34 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    e,2.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T1"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 35 / measure 12]
            \abjad-invisible-music-coloring
            \hide NoteHead
            \override Accidental.stencil = ##f
            \override NoteColumn.glissando-skip = ##t
            \override NoteHead.no-ledgers = ##t
            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            e,1 * 1/4
            \bacaStopTextSpanSCP
            \!

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 35 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.04.Contrabass.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.04.Global.Rests }

    \context Voice = "Contrabass_II_Music_Voice"
    { \segment.04.Contrabass.II.Music.Voice }

>>
