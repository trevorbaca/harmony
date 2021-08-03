segment.02.Global.Skips = {

    % [Global_Skips measure 4 / measure 1]
    \time 4/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 1
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "B" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "B" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[B.1-5]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 5 / measure 2]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 6 / measure 3]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 7 / measure 4]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 8 / measure 5]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 9 / measure 6]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀A.2]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 10 / measure 7]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶C.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 11 / measure 8]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[B.6]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #4 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 12 / measure 9]
    s1 * 5/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 13 / measure 10]
    s1 * 5/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 14 / measure 11]
    s1 * 5/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 15 / measure 12]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-one
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "12"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 16 / measure 13]
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


segment.02.Global.Rests = {

    % [Global_Rests measure 4 / measure 1]
    R1 * 1

    % [Global_Rests measure 5 / measure 2]
    R1 * 5/4

    % [Global_Rests measure 6 / measure 3]
    R1 * 1

    % [Global_Rests measure 7 / measure 4]
    R1 * 5/4

    % [Global_Rests measure 8 / measure 5]
    R1 * 1

    % [Global_Rests measure 9 / measure 6]
    R1 * 5/4

    % [Global_Rests measure 10 / measure 7]
    R1 * 3/4

    % [Global_Rests measure 11 / measure 8]
    R1 * 5/4

    % [Global_Rests measure 12 / measure 9]
    R1 * 5/4

    % [Global_Rests measure 13 / measure 10]
    R1 * 5/4

    % [Global_Rests measure 14 / measure 11]
    R1 * 5/4

    % [Global_Rests measure 15 / measure 12]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [Global_Rests measure 16 / measure 13]
    R1 * 1/4

}


segment.02.Bass.Flute.Music.Voice.1 = {

    \voiceTwo
    a'8.
    - \tweak color #(x11-color 'blue)
    \baca-f-mp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak direction #down
    - \tweak staff-padding 8
    \startTextSpan
    - \tweak stencil ##f
    ~

    a'2
    \repeatTie

}


segment.02.Bass.Flute.Music.Voice.2 = {

    \voiceTwo
    a'4..
    - \tweak color #(x11-color 'blue)
    \baca-mf-mp
    \revert DynamicLineSpanner.staff-padding

}


segment.02.Bass.Flute.Music.Voice = {

    % [Bass_Flute_Music_Voice measure 4 / measure 1]
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-bfl-markup
    \override DynamicLineSpanner.staff-padding = 3
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \abjad-invisible-music-coloring
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>
    - \tweak stencil ##f
    ~

    af''2.
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie

    % [Bass_Flute_Music_Voice measure 5 / measure 2]
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>
    - \tweak stencil ##f
    ~

    af''1
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie

    % [Bass_Flute_Music_Voice measure 6 / measure 3]
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>
    - \tweak stencil ##f
    ~

    af''2
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie

    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>
    - \tweak stencil ##f
    ~

    % [Bass_Flute_Music_Voice measure 7 / measure 4]
    af''2
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie

    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>
    - \tweak stencil ##f
    ~

    af''2
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie

    % [Bass_Flute_Music_Voice measure 8 / measure 5]
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>
    - \tweak stencil ##f
    ~

    af''2.
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    % [Bass_Flute_Music_Voice measure 9 / measure 6]
    \override DynamicLineSpanner.staff-padding = 4
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

            d'''8 * 2/5

            as''!8 * 2/5

            b''8 * 2/5

            bqs''!8 * 2/5

            c'''8 * 2/5

            cqs'''!8 * 2/5

            cs'''!8 * 2/5
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        { \segment.02.Bass.Flute.Music.Voice.1 }

    >>
    \oneVoice

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
                b''
            >8 * 2/5
            [
            (

            cs'''!8 * 2/5

            ctqs'''!8 * 2/5

            d'''8 * 2/5
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        { \segment.02.Bass.Flute.Music.Voice.2 }

    >>

    % [Bass_Flute_Music_Voice measure 10 / measure 7]
    \oneVoice
    \override DynamicLineSpanner.staff-padding = 3
    r2
    \stopTextSpan

    r8

    f'16
    - \tweak color #(x11-color 'blue)
    \mf
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-cov-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered

    r16
    \revert DynamicLineSpanner.staff-padding

    % [Bass_Flute_Music_Voice measure 11 / measure 8]
    \override DynamicLineSpanner.staff-padding = 3
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<
    \bacaStopTextSpanCovered

    \abjad-invisible-music-coloring
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
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

    % [Bass_Flute_Music_Voice measure 12 / measure 9]
    af''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
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

    % [Bass_Flute_Music_Voice measure 13 / measure 10]
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    af''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>
    - \tweak stencil ##f
    ~

    af''1
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie

    % [Bass_Flute_Music_Voice measure 14 / measure 11]
    af''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
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
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 15 / measure 12]
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

            % [Bass_Flute_Rest_Voice measure 15 / measure 12]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 16 / measure 13]
            \abjad-invisible-music-coloring
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t
            R1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 16 / measure 13]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.02.Bass.Flute.Music.Staff = <<

    \context GlobalRests = "Global_Rests"
    { \segment.02.Global.Rests }

    \context Voice = "Bass_Flute_Music_Voice"
    { \segment.02.Bass.Flute.Music.Voice }

>>


segment.02.Percussion.I.Music.Voice.1 = {

    r1

}


segment.02.Percussion.I.Music.Voice.2 = {

    r1

    r4

}


segment.02.Percussion.I.Music.Voice.3 = {

    r1

}


segment.02.Percussion.I.Music.Voice.4 = {

    r1

    r4

}


segment.02.Percussion.I.Music.Voice.5 = {

    r2

    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r8
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

}


segment.02.Percussion.I.Music.Voice.6 = {

    \override DynamicLineSpanner.staff-padding = 5.5
    r1
    - \tweak color #(x11-color 'DeepPink1)
    \p

    r4

}


segment.02.Percussion.I.Music.Voice.7 = {

    r1
    - \tweak color #(x11-color 'blue)
    \mp

    r4

}


segment.02.Percussion.I.Music.Voice.8 = {

    r1
    - \tweak color #(x11-color 'blue)
    \mf

    r4

}


segment.02.Percussion.I.Music.Voice.9 = {

    r1
    - \tweak color #(x11-color 'blue)
    \f

    r4
    \revert DynamicLineSpanner.staff-padding

}


segment.02.Percussion.I.Music.Voice = {

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_I_Music_Voice measure 4 / measure 1]
            \set Staff.shortInstrumentName = \harmony-perc-i-markup
            \override Staff.BarLine.bar-extent = #'(-2 . 1)
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 3
            \startStaff
            \set Staff.instrumentName = \harmony-perc-i-markup
            \clef "percussion"
            \slash
            \voiceOne
            \once \override Staff.Clef.color = #(x11-color 'green4)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
            a8 * 2/5
            - \tweak color #(x11-color 'green4)
            \p
            [
            (
            \set Staff.shortInstrumentName = \harmony-perc-i-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.02.Percussion.I.Music.Voice.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_I_Music_Voice measure 5 / measure 2]
            \slash
            \voiceOne
            a8 * 2/5
            [
            (

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.02.Percussion.I.Music.Voice.2 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_I_Music_Voice measure 6 / measure 3]
            \slash
            \voiceOne
            a8 * 2/5
            [
            (

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.02.Percussion.I.Music.Voice.3 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_I_Music_Voice measure 7 / measure 4]
            \slash
            \voiceOne
            a8 * 2/5
            [
            (

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.02.Percussion.I.Music.Voice.4 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_I_Music_Voice measure 8 / measure 5]
            \slash
            \voiceOne
            a8 * 2/5
            [
            (

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.02.Percussion.I.Music.Voice.5 }

    >>
    \oneVoice

    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    b8
    - \tweak staff-padding 6
    ^ \baca-bd-superball-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 10.5
    \bacaStartTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    b4 * 3/4
    \repeatTie

    \abjad-invisible-music-coloring
    b16
    - \tweak color #(x11-color 'blue)
    \f

    % [Percussion_I_Music_Voice measure 9 / measure 6]
    b4 * 3/4
    \laissezVibrer
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    b4 * 1/4
    - \tweak color #(x11-color 'blue)
    \mf

    r2.
    \bacaStopTextSpanMetricModulation

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
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    % [Percussion_I_Music_Voice measure 10 / measure 7]
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    \override DynamicLineSpanner.staff-padding = 5.5
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        \override Stem.direction = #down
        c'8
        - \tweak color #(x11-color 'blue)
        \f
        - \tweak self-alignment-X 0.25
        - \tweak staff-padding 6
        ^ \baca-purpleheart-markup
        - \tweak color #(x11-color 'blue)
        \>
        [

        c'16

        a16
        - \tweak color #(x11-color 'blue)
        \p
        ]
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_I_Music_Voice measure 11 / measure 8]
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

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.02.Percussion.I.Music.Voice.6 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_I_Music_Voice measure 12 / measure 9]
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

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.02.Percussion.I.Music.Voice.7 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_I_Music_Voice measure 13 / measure 10]
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

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.02.Percussion.I.Music.Voice.8 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_I_Music_Voice measure 14 / measure 11]
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

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.02.Percussion.I.Music.Voice.9 }

    >>

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 15 / measure 12]
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

            % [Percussion_I_Rest_Voice measure 15 / measure 12]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 16 / measure 13]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 16 / measure 13]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.02.Percussion.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.02.Global.Rests }

    \context Voice = "Percussion_I_Music_Voice"
    { \segment.02.Percussion.I.Music.Voice }

>>


segment.02.Percussion.II.Music.Voice = {

    % [Percussion_II_Music_Voice measure 4 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \override DynamicLineSpanner.staff-padding = 6
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'1
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.75
    \baca-p-ancora
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    \glissando
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Percussion_II_Music_Voice measure 5 / measure 2]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    c'2.

    c'2

    % [Percussion_II_Music_Voice measure 6 / measure 3]
    c'1
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Percussion_II_Music_Voice measure 7 / measure 4]
        \once \override TupletBracket.direction = #up
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        \revert Dots.transparent
        \revert Stem.transparent
        c'1
        :32
        \revert Stem.direction
        \revert TupletBracket.direction

    }

    % [Percussion_II_Music_Voice measure 8 / measure 5]
    \override DynamicLineSpanner.staff-padding = 6
    \override TupletBracket.direction = #up
    r2

    r8

    \override Stem.direction = #down
    d'8
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 10.5
    \bacaStartTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    d'4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    % [Percussion_II_Music_Voice measure 9 / measure 6]
    d'4

    r4
    \bacaStopTextSpanMetricModulation

    r8

    d'8
    - \tweak stencil ##f
    ~

    d'8
    \repeatTie
    [

    d'8
    ]
    - \tweak stencil ##f
    ~

    d'8
    \repeatTie
    \revert Stem.direction

    r8
    \revert TupletBracket.direction

    % [Percussion_II_Music_Voice measure 10 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    \override DynamicLineSpanner.staff-padding = 5.5
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/7
    {

        r8

        r8

        r8

        r8

        \override Stem.direction = #down
        c'8
        - \tweak color #(x11-color 'blue)
        \f
        - \tweak self-alignment-X 0.25
        - \tweak staff-padding 3
        ^ \baca-purpleheart-markup
        - \tweak color #(x11-color 'blue)
        \>
        [

        c'16

        a8

        c'16
        - \tweak color #(x11-color 'blue)
        \p
        ]
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding
        \revert DynamicLineSpanner.staff-padding

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Percussion_II_Music_Voice measure 11 / measure 8]
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
        \override TupletBracket.direction = #up
        \override Stem.direction = #down
        \override TupletBracket.direction = #up
        \override DynamicLineSpanner.staff-padding = 6.5
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        c'1
        :32
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak staff-padding 6
        ^ \baca-tam-tam-markup
        - \tweak color #(x11-color 'blue)
        \<
        \glissando

    }

    % [Percussion_II_Music_Voice measure 12 / measure 9]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    c'2.

    c'2

    % [Percussion_II_Music_Voice measure 13 / measure 10]
    c'2.

    c'2

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Percussion_II_Music_Voice measure 14 / measure 11]
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        \revert Dots.transparent
        \revert Stem.transparent
        c'1
        :32
        - \tweak color #(x11-color 'blue)
        \mf
        \revert TupletBracket.direction
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 15 / measure 12]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 15 / measure 12]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 16 / measure 13]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 16 / measure 13]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.02.Percussion.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.02.Global.Rests }

    \context Voice = "Percussion_II_Music_Voice"
    { \segment.02.Percussion.II.Music.Voice }

>>


segment.02.Harp.Music.Voice = {

    % [Harp_Music_Voice measure 4 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \override DynamicLineSpanner.staff-padding = 3
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 4
    ^ \baca-bisb-markup
    - \tweak color #(x11-color 'blue)
    \<
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    <gs'! a' b'>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Harp_Music_Voice measure 5 / measure 2]
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    <gs'! a' b'>1
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Harp_Music_Voice measure 6 / measure 3]
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    <gs'! a' b'>2
    :32
    - \tweak color #(x11-color 'blue)
    \p

    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    % [Harp_Music_Voice measure 7 / measure 4]
    <gs'! a' b'>2
    :32
    - \tweak color #(x11-color 'blue)
    \p

    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    <gs'! a' b'>2
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Harp_Music_Voice measure 8 / measure 5]
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    <gs'! a' b'>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p
    \revert DynamicLineSpanner.staff-padding

    % [Harp_Music_Voice measure 9 / measure 6]
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
    \mf
    - \tweak staff-padding 6
    ^ \baca-whisk-markup
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r4

    r8

    c'8
    - \tweak stencil ##f
    ~

    c'8
    \repeatTie
    [

    c'8
    ]
    - \tweak stencil ##f
    ~

    c'8
    \repeatTie
    \revert Stem.direction

    r8
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    % [Harp_Music_Voice measure 10 / measure 7]
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 6
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    g,,2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    g,,8
    \repeatTie

    r8
    - \baca-damp
    \revert DynamicLineSpanner.staff-padding

    % [Harp_Music_Voice measure 11 / measure 8]
    \override DynamicLineSpanner.staff-padding = 3
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 4
    ^ \baca-bisb-markup
    - \tweak color #(x11-color 'blue)
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    <gs'! a' b'>1
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Harp_Music_Voice measure 12 / measure 9]
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    \>

    <gs'! a' b'>1
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Harp_Music_Voice measure 13 / measure 10]
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    <gs'! a' b'>1
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Harp_Music_Voice measure 14 / measure 11]
    <gs'! a' b'>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
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
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 15 / measure 12]
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

            % [Harp_Rest_Voice measure 15 / measure 12]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 16 / measure 13]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 16 / measure 13]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.02.Harp.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.02.Global.Rests }

    \context Voice = "Harp_Music_Voice"
    { \segment.02.Harp.Music.Voice }

>>


segment.02.Viola.Music.Voice.1 = {

    \override DynamicLineSpanner.staff-padding = 4
    \voiceTwo
    af!1
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak direction #down
    - \tweak staff-padding 8
    \startTextSpan

}


segment.02.Viola.Music.Voice.2 = {

    \voiceTwo
    af!2.
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp

}


segment.02.Viola.Music.Voice.3 = {

    \voiceTwo
    af!2
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    - \tweak stencil ##f
    ~

    % [Viola_Music_Voice measure 6 / measure 3]
    af2
    \repeatTie

}


segment.02.Viola.Music.Voice.4 = {

    \voiceTwo
    af!2
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    - \tweak stencil ##f
    ~

    % [Viola_Music_Voice measure 7 / measure 4]
    af4
    \repeatTie

}


segment.02.Viola.Music.Voice.5 = {

    \voiceTwo
    af!1
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp

}


segment.02.Viola.Music.Voice.6 = {

    \voiceTwo
    af!1
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    \revert DynamicLineSpanner.staff-padding

}


segment.02.Viola.Music.Voice.7 = {

    \override DynamicLineSpanner.staff-padding = 4
    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
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


segment.02.Viola.Music.Voice.8 = {

    \voiceTwo
    af!1
    - \tweak stencil ##f
    ~

    af4
    \repeatTie

}


segment.02.Viola.Music.Voice.9 = {

    \voiceTwo
    af!1
    - \tweak stencil ##f
    ~

    af4
    \repeatTie

}


segment.02.Viola.Music.Voice.10 = {

    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak stencil ##f
    ~

    af4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

}


segment.02.Viola.Music.Voice = {

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Viola_Music_Voice measure 4 / measure 1]
            \set Staff.shortInstrumentName = \harmony-va-markup
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \set Staff.instrumentName = \harmony-va-markup
            \override NoteHead.style = #'harmonic
        %%% \once \override Staff.Clef.X-extent = ##f
        %%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
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
            - \tweak color #(x11-color 'green4)
            \sfp
            [
            (
            \set Staff.shortInstrumentName = \harmony-va-markup
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            cs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        { \segment.02.Viola.Music.Voice.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Viola_Music_Voice measure 5 / measure 2]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                a'
            >8 * 2/5
            [
            (

            as'!8 * 2/5

            atqs'!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        { \segment.02.Viola.Music.Voice.2 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                b'
            >8 * 2/5
            [
            (

            bqs'!8 * 2/5

            c''8 * 2/5

            as'!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        { \segment.02.Viola.Music.Voice.3 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

            cqs''!8 * 2/5

            cs''!8 * 2/5

            ctqs''!8 * 2/5

            c''8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        { \segment.02.Viola.Music.Voice.4 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

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
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        { \segment.02.Viola.Music.Voice.5 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Viola_Music_Voice measure 8 / measure 5]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

            as'!8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5

            ctqs''!8 * 2/5

            c''8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        { \segment.02.Viola.Music.Voice.6 }

    >>

    % [Viola_Music_Voice measure 9 / measure 6]
    \oneVoice
    \override DynamicLineSpanner.staff-padding = 3
    r16
    \stopTextSpan

    gqf'!4..
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak staff-padding 5.5
    ^ \baca-seven-a
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r16
    \bacaStopTextSpanDamp

    gqf'!8.
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    gqf'2
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    % [Viola_Music_Voice measure 10 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    \bacaStopTextSpanDamp
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        \once \override Stem.direction = #down
        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \baca-effort-ff
        - \accent

        r16

    }

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Viola_Music_Voice measure 11 / measure 8]
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \override NoteHead.style = #'harmonic
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

        \context Voice = "Viola_Music_Voice"
        { \segment.02.Viola.Music.Voice.7 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Viola_Music_Voice measure 12 / measure 9]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                as'!
            >8 * 2/5
            [
            (

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5

            ctqs''!8 * 2/5

            c''8 * 2/5

            cs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        { \segment.02.Viola.Music.Voice.8 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Viola_Music_Voice measure 13 / measure 10]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                a'
            >8 * 2/5
            [
            (

            as'!8 * 2/5

            atqs'!8 * 2/5

            b'8 * 2/5

            bqs'!8 * 2/5

            c''8 * 2/5

            as'!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        { \segment.02.Viola.Music.Voice.9 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Viola_Music_Voice measure 14 / measure 11]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

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
        { \segment.02.Viola.Music.Voice.10 }

    >>

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 15 / measure 12]
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

            % [Viola_Rest_Voice measure 15 / measure 12]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 16 / measure 13]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 16 / measure 13]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.02.Viola.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.02.Global.Rests }

    \context Voice = "Viola_Music_Voice"
    { \segment.02.Viola.Music.Voice }

>>


segment.02.Cello.I.Music.Voice.1 = {

    \voiceTwo
    af!4
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak direction #down
    - \tweak staff-padding 8
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [Cello_I_Music_Voice measure 5 / measure 2]
    af2.
    \repeatTie

}


segment.02.Cello.I.Music.Voice.2 = {

    \voiceTwo
    af!2
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    - \tweak stencil ##f
    ~

    % [Cello_I_Music_Voice measure 6 / measure 3]
    af4
    \repeatTie

}


segment.02.Cello.I.Music.Voice.3 = {

    \voiceTwo
    af!2.
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    - \tweak stencil ##f
    ~

    % [Cello_I_Music_Voice measure 7 / measure 4]
    af4
    \repeatTie

}


segment.02.Cello.I.Music.Voice.4 = {

    \voiceTwo
    af!1
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    \revert DynamicLineSpanner.staff-padding

}


segment.02.Cello.I.Music.Voice.5 = {

    \override DynamicLineSpanner.staff-padding = 4
    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
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


segment.02.Cello.I.Music.Voice.6 = {

    \voiceTwo
    af!1
    - \tweak stencil ##f
    ~

    af4
    \repeatTie

}


segment.02.Cello.I.Music.Voice.7 = {

    \voiceTwo
    af!1
    - \tweak stencil ##f
    ~

    af4
    \repeatTie

}


segment.02.Cello.I.Music.Voice.8 = {

    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak stencil ##f
    ~

    af4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

}


segment.02.Cello.I.Music.Voice = {

    % [Cello_I_Music_Voice measure 4 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "tenor"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r2.
    - \tweak color #(x11-color 'green4)
    \sfp
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

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
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        { \segment.02.Cello.I.Music.Voice.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                atqs'!
            >8 * 2/5
            [
            (

            b'8 * 2/5

            bqs'!8 * 2/5

            c''8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        { \segment.02.Cello.I.Music.Voice.2 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                as'!
            >8 * 2/5
            [
            (

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5

            ctqs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        { \segment.02.Cello.I.Music.Voice.3 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

            cs''!8 * 2/5

            a'8 * 2/5

            as'!8 * 2/5

            atqs'!8 * 2/5

            b'8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        { \segment.02.Cello.I.Music.Voice.4 }

    >>

    % [Cello_I_Music_Voice measure 8 / measure 5]
    \oneVoice
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    a,1
    :32
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/3
    {

        % [Cello_I_Music_Voice measure 9 / measure 6]
        \override TupletBracket.direction = #down
        a,4
        :32
        - \tweak color #(x11-color 'blue)
        \f
        \repeatTie
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>

        a,4
        :32
        - \accent
        \bacaStopTextSpanSCP
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "P4"
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation

        a,4
        :32
        - \accent
        \bacaStopTextSpanSCP
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "P1"
        - \baca-text-spanner-right-text "P3"
        - \tweak bound-details.right.padding 0.5
        - \tweak bound-details.right.stencil-align-dir-y #center
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    % [Cello_I_Music_Voice measure 10 / measure 7]
    a,4
    :32
    - \accent
    \bacaStopTextSpanSCP

    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanMetricModulation
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        \once \override Stem.direction = #down
        \once \override TupletBracket.direction = #up
        \once \override DynamicLineSpanner.staff-padding = 6
        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \baca-effort-ff
        - \accent

        r4

    }

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Cello_I_Music_Voice measure 11 / measure 8]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \override NoteHead.style = #'harmonic
            \once \override Staff.Clef.X-extent = ##f
            \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
            \clef "tenor"
            \slash
            \voiceOne
            \once \override Staff.Clef.color = #(x11-color 'blue)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                bqs'!
            >8 * 2/5
            [
            (
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            c''8 * 2/5

            as'!8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5

            ctqs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        { \segment.02.Cello.I.Music.Voice.5 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Cello_I_Music_Voice measure 12 / measure 9]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

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

        \context Voice = "Cello_I_Music_Voice"
        { \segment.02.Cello.I.Music.Voice.6 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Cello_I_Music_Voice measure 13 / measure 10]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

            as'!8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5

            ctqs''!8 * 2/5

            c''8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        { \segment.02.Cello.I.Music.Voice.7 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Cello_I_Music_Voice measure 14 / measure 11]
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

        \context Voice = "Cello_I_Music_Voice"
        { \segment.02.Cello.I.Music.Voice.8 }

    >>

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 15 / measure 12]
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

            % [Cello_I_Rest_Voice measure 15 / measure 12]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 16 / measure 13]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 16 / measure 13]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.02.Cello.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.02.Global.Rests }

    \context Voice = "Cello_I_Music_Voice"
    { \segment.02.Cello.I.Music.Voice }

>>


segment.02.Cello.II.Music.Voice.1 = {

    \voiceTwo
    af!2
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak direction #down
    - \tweak staff-padding 8
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [Cello_II_Music_Voice measure 7 / measure 4]
    af2
    \repeatTie

}


segment.02.Cello.II.Music.Voice.2 = {

    \voiceTwo
    af!2.
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp

}


segment.02.Cello.II.Music.Voice.3 = {

    \voiceTwo
    af!1
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    \revert DynamicLineSpanner.staff-padding

}


segment.02.Cello.II.Music.Voice.4 = {

    \override DynamicLineSpanner.staff-padding = 4
    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
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


segment.02.Cello.II.Music.Voice.5 = {

    \voiceTwo
    af!1
    - \tweak stencil ##f
    ~

    af4
    \repeatTie

}


segment.02.Cello.II.Music.Voice.6 = {

    \voiceTwo
    af!1
    - \tweak stencil ##f
    ~

    af4
    \repeatTie

}


segment.02.Cello.II.Music.Voice.7 = {

    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak stencil ##f
    ~

    af4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

}


segment.02.Cello.II.Music.Voice = {

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Cello_II_Music_Voice measure 4 / measure 1]
        \set Staff.shortInstrumentName = \harmony-vc-ii-markup
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        \set Staff.instrumentName = \harmony-vc-ii-markup
        \override TupletBracket.direction = #down
        \override DynamicLineSpanner.staff-padding = 5
        \clef "bass"
        \once \override Staff.Clef.color = #(x11-color 'green4)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
        g,1
        :32
        - \tweak color #(x11-color 'blue)
        \mf
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        \glissando
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "P1"
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP
        \set Staff.shortInstrumentName = \harmony-vc-ii-markup
        \override Staff.Clef.color = #(x11-color 'OliveDrab)

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \afterGrace
        g,4
        :32
        {

            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            f,8
            :32

        }


        r4
        - \tweak color #(x11-color 'blue)
        \!
        \bacaStopTextSpanSCP

    }

    r4.
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    % [Cello_II_Music_Voice measure 6 / measure 3]
    \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "tenor"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                as'!
            >8 * 2/5
            [
            (

            atqs'!8 * 2/5

            b'8 * 2/5

            bqs'!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        { \segment.02.Cello.II.Music.Voice.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

            as'!8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        { \segment.02.Cello.II.Music.Voice.2 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Cello_II_Music_Voice measure 8 / measure 5]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                ctqs''!
            >8 * 2/5
            [
            (

            c''8 * 2/5

            cs''!8 * 2/5

            a'8 * 2/5

            as'!8 * 2/5

            atqs'!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        { \segment.02.Cello.II.Music.Voice.3 }

    >>

    % [Cello_II_Music_Voice measure 9 / measure 6]
    \oneVoice
    \override DynamicLineSpanner.staff-padding = 3
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r16
    \stopTextSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    b8.
    - \tweak color #(x11-color 'blue)
    \mp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    b2
    \repeatTie

    r16
    \bacaStopTextSpanDamp

    b4..
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    % [Cello_II_Music_Voice measure 10 / measure 7]
    \override DynamicLineSpanner.staff-padding = 4
    g,2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \bacaStopTextSpanDamp
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \afterGrace
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
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Cello_II_Music_Voice measure 11 / measure 8]
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
                b'
            >8 * 2/5
            [
            (
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            bqs'!8 * 2/5

            c''8 * 2/5

            as'!8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        { \segment.02.Cello.II.Music.Voice.4 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Cello_II_Music_Voice measure 12 / measure 9]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                ctqs''!
            >8 * 2/5
            [
            (

            c''8 * 2/5

            cs''!8 * 2/5

            a'8 * 2/5

            as'!8 * 2/5

            atqs'!8 * 2/5

            b'8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        { \segment.02.Cello.II.Music.Voice.5 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Cello_II_Music_Voice measure 13 / measure 10]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                bqs'!
            >8 * 2/5
            [
            (

            c''8 * 2/5

            as'!8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5

            ctqs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_II_Music_Voice"
        { \segment.02.Cello.II.Music.Voice.6 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Cello_II_Music_Voice measure 14 / measure 11]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

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
        { \segment.02.Cello.II.Music.Voice.7 }

    >>

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 15 / measure 12]
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

            % [Cello_II_Rest_Voice measure 15 / measure 12]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 16 / measure 13]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 16 / measure 13]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.02.Cello.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.02.Global.Rests }

    \context Voice = "Cello_II_Music_Voice"
    { \segment.02.Cello.II.Music.Voice }

>>


segment.02.Contrabass.I.Music.Voice.1 = {

    \override DynamicLineSpanner.staff-padding = 6
    \voiceTwo
    af!1
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak direction #down
    - \tweak staff-padding 10
    \startTextSpan

}


segment.02.Contrabass.I.Music.Voice.2 = {

    \voiceTwo
    af!4
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    - \tweak stencil ##f
    ~

    % [Contrabass_I_Music_Voice measure 6 / measure 3]
    af2.
    \repeatTie

}


segment.02.Contrabass.I.Music.Voice.3 = {

    \voiceTwo
    af!4
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    - \tweak stencil ##f
    ~

    % [Contrabass_I_Music_Voice measure 7 / measure 4]
    af2
    \repeatTie

}


segment.02.Contrabass.I.Music.Voice.4 = {

    \voiceTwo
    af!2.
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    - \tweak stencil ##f
    ~

    % [Contrabass_I_Music_Voice measure 8 / measure 5]
    af4
    \repeatTie

}


segment.02.Contrabass.I.Music.Voice.5 = {

    \voiceTwo
    af!2.
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    \revert DynamicLineSpanner.staff-padding

}


segment.02.Contrabass.I.Music.Voice.6 = {

    \override DynamicLineSpanner.staff-padding = 6
    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
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

}


segment.02.Contrabass.I.Music.Voice.7 = {

    \voiceTwo
    af!1
    - \tweak stencil ##f
    ~

    af4
    \repeatTie

}


segment.02.Contrabass.I.Music.Voice.8 = {

    \voiceTwo
    af!1
    - \tweak stencil ##f
    ~

    af4
    \repeatTie

}


segment.02.Contrabass.I.Music.Voice.9 = {

    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak stencil ##f
    ~

    af4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

}


segment.02.Contrabass.I.Music.Voice = {

    % [Contrabass_I_Music_Voice measure 4 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    c'8
    :32
    - \tweak color #(x11-color 'green4)
    \sfp
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r8

    c'8
    :32
    - \accent
    \revert Stem.direction

    r8
    \bacaStopTextSpanMetricModulation

    r2
    \revert TupletBracket.direction

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Contrabass_I_Music_Voice measure 5 / measure 2]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \override NoteHead.style = #'harmonic
            \once \override Staff.Clef.X-extent = ##f
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
            \clef "treble"
            \slash
            \voiceOne
            \once \override Staff.Clef.color = #(x11-color 'blue)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                a'
            >8 * 2/5
            [
            (
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            as'!8 * 2/5

            atqs'!8 * 2/5

            b'8 * 2/5

            bqs'!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        { \segment.02.Contrabass.I.Music.Voice.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

            as'!8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5

            ctqs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        { \segment.02.Contrabass.I.Music.Voice.2 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

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

        \context Voice = "Contrabass_I_Music_Voice"
        { \segment.02.Contrabass.I.Music.Voice.3 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

            as'!8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        { \segment.02.Contrabass.I.Music.Voice.4 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                ctqs''!
            >8 * 2/5
            [
            (

            c''8 * 2/5

            cs''!8 * 2/5

            a'8 * 2/5

            as'!8 * 2/5

            atqs'!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        { \segment.02.Contrabass.I.Music.Voice.5 }

    >>

    % [Contrabass_I_Music_Voice measure 9 / measure 6]
    \oneVoice
    \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    a,2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    a,8
    :32
    \repeatTie
    [

    a,8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P4"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    a,8
    :32
    \repeatTie
    [

    a,8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \tweak stencil ##f
    ~

    a,4
    :32
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    % [Contrabass_I_Music_Voice measure 10 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8

    \once \override Stem.direction = #down
    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \baca-effort-ff
    - \accent

    \once \override Rest.extra-offset = #'(-1 . 0)
    r16
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Contrabass_I_Music_Voice measure 11 / measure 8]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \override NoteHead.style = #'harmonic
            \once \override Staff.Clef.X-extent = ##f
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
            \clef "treble"
            \slash
            \voiceOne
            \once \override Staff.Clef.color = #(x11-color 'blue)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                bqs'!
            >8 * 2/5
            [
            (
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            c''8 * 2/5

            as'!8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5

            ctqs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        { \segment.02.Contrabass.I.Music.Voice.6 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Contrabass_I_Music_Voice measure 12 / measure 9]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

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

        \context Voice = "Contrabass_I_Music_Voice"
        { \segment.02.Contrabass.I.Music.Voice.7 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Contrabass_I_Music_Voice measure 13 / measure 10]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                c''
            >8 * 2/5
            [
            (

            as'!8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5

            ctqs''!8 * 2/5

            c''8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        { \segment.02.Contrabass.I.Music.Voice.8 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Contrabass_I_Music_Voice measure 14 / measure 11]
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
        { \segment.02.Contrabass.I.Music.Voice.9 }

    >>

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 15 / measure 12]
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

            % [Contrabass_I_Rest_Voice measure 15 / measure 12]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 16 / measure 13]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 16 / measure 13]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.02.Contrabass.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.02.Global.Rests }

    \context Voice = "Contrabass_I_Music_Voice"
    { \segment.02.Contrabass.I.Music.Voice }

>>


segment.02.Contrabass.II.Music.Voice.1 = {

    \voiceTwo
    af!2
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-flat-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak direction #down
    - \tweak staff-padding 10
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [Contrabass_II_Music_Voice measure 7 / measure 4]
    af2
    \repeatTie

}


segment.02.Contrabass.II.Music.Voice.2 = {

    \voiceTwo
    af!2.
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp

}


segment.02.Contrabass.II.Music.Voice.3 = {

    \voiceTwo
    af!1
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-mp
    \revert DynamicLineSpanner.staff-padding

}


segment.02.Contrabass.II.Music.Voice.4 = {

    \override DynamicLineSpanner.staff-padding = 6
    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
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

}


segment.02.Contrabass.II.Music.Voice.5 = {

    \voiceTwo
    af!1
    - \tweak stencil ##f
    ~

    af4
    \repeatTie

}


segment.02.Contrabass.II.Music.Voice.6 = {

    \voiceTwo
    af!1
    - \tweak stencil ##f
    ~

    af4
    \repeatTie

}


segment.02.Contrabass.II.Music.Voice.7 = {

    \voiceTwo
    af!1
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak stencil ##f
    ~

    af4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

}


segment.02.Contrabass.II.Music.Voice = {

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Contrabass_II_Music_Voice measure 4 / measure 1]
        \set Staff.shortInstrumentName = \harmony-cb-ii-markup
        \override Staff.BarLine.bar-extent = #'(-2 . 2)
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        \set Staff.instrumentName = \harmony-cb-ii-markup
        \override DynamicLineSpanner.staff-padding = 5
        \clef "bass"
        \once \override Staff.Clef.color = #(x11-color 'green4)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
        g1
        :32
        - \tweak color #(x11-color 'blue)
        \mf
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        \glissando
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "P1"
        - \tweak staff-padding 5.5
        \bacaStartTextSpanSCP
        \set Staff.shortInstrumentName = \harmony-cb-ii-markup
        \override Staff.Clef.color = #(x11-color 'OliveDrab)

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \afterGrace
        g4
        :32
        {

            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            fs!8
            :32

        }


        r4
        - \tweak color #(x11-color 'blue)
        \!
        \bacaStopTextSpanSCP

    }

    r4.
    \revert DynamicLineSpanner.staff-padding

    % [Contrabass_II_Music_Voice measure 6 / measure 3]
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                atqs'!
            >8 * 2/5
            [
            (

            b'8 * 2/5

            bqs'!8 * 2/5

            c''8 * 2/5

            as'!8 * 2/5

            c''8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        { \segment.02.Contrabass.II.Music.Voice.1 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                cqs''!
            >8 * 2/5
            [
            (

            cs''!8 * 2/5

            ctqs''!8 * 2/5

            c''8 * 2/5

            cs''!8 * 2/5

            a'8 * 2/5

            as'!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        { \segment.02.Contrabass.II.Music.Voice.2 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Contrabass_II_Music_Voice measure 8 / measure 5]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                atqs'!
            >8 * 2/5
            [
            (

            b'8 * 2/5

            bqs'!8 * 2/5

            c''8 * 2/5

            as'!8 * 2/5

            c''8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        { \segment.02.Contrabass.II.Music.Voice.3 }

    >>

    % [Contrabass_II_Music_Voice measure 9 / measure 6]
    \oneVoice
    \override DynamicLineSpanner.staff-padding = 3
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r16
    \stopTextSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    dqs'!8.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak staff-padding 6.5
    ^ \baca-eleven-a
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 4
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    dqs'2
    \repeatTie

    r16
    \bacaStopTextSpanDamp

    dqs'!4..
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 4
    \bacaStartTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    % [Contrabass_II_Music_Voice measure 10 / measure 7]
    \override DynamicLineSpanner.staff-padding = 3
    g2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \bacaStopTextSpanDamp
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \afterGrace
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
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Contrabass_II_Music_Voice measure 11 / measure 8]
            \override NoteHead.style = #'harmonic
            \once \override Staff.Clef.X-extent = ##f
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
            \clef "treble"
            \slash
            \voiceOne
            \once \override Staff.Clef.color = #(x11-color 'blue)
            \set Staff.forceClef = ##t
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                cqs''!
            >8 * 2/5
            [
            (
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

            cs''!8 * 2/5

            ctqs''!8 * 2/5

            c''8 * 2/5

            cs''!8 * 2/5

            a'8 * 2/5

            as'!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        { \segment.02.Contrabass.II.Music.Voice.4 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Contrabass_II_Music_Voice measure 12 / measure 9]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                atqs'!
            >8 * 2/5
            [
            (

            b'8 * 2/5

            bqs'!8 * 2/5

            c''8 * 2/5

            as'!8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        { \segment.02.Contrabass.II.Music.Voice.5 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Contrabass_II_Music_Voice measure 13 / measure 10]
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

            ctqs''!8 * 2/5

            c''8 * 2/5

            cs''!8 * 2/5

            a'8 * 2/5

            as'!8 * 2/5

            atqs'!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        { \segment.02.Contrabass.II.Music.Voice.6 }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Contrabass_II_Music_Voice measure 14 / measure 11]
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                af
                b'
            >8 * 2/5
            [
            (

            bqs'!8 * 2/5

            c''8 * 2/5

            as'!8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5

            cs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_II_Music_Voice"
        { \segment.02.Contrabass.II.Music.Voice.7 }

    >>

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 15 / measure 12]
            \oneVoice
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \stopTextSpan
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 15 / measure 12]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 16 / measure 13]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 16 / measure 13]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.02.Contrabass.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.02.Global.Rests }

    \context Voice = "Contrabass_II_Music_Voice"
    { \segment.02.Contrabass.II.Music.Voice }

>>
