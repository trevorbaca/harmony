segment.13.Global.Skips = {

    % [Global_Skips measure 114 / measure 1]
    \time 5/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 5/4
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "M" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "M" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[M.1]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 115 / measure 2]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-twelve
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 116 / measure 3]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[M.2]"
    \bacaStartTextSpanSNM

    % [Global_Skips measure 117 / measure 4]
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀J.6]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #1 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 118 / measure 5]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀L.4]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #3 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 119 / measure 6]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-thirteen
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 120 / measure 7]
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


segment.13.Global.Rests = {

    % [Global_Rests measure 114 / measure 1]
    R1 * 5/4

    % [Global_Rests measure 115 / measure 2]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [Global_Rests measure 116 / measure 3]
    R1 * 3/2

    % [Global_Rests measure 117 / measure 4]
    R1 * 3/2

    % [Global_Rests measure 118 / measure 5]
    R1 * 3/4

    % [Global_Rests measure 119 / measure 6]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-short-fermata-markup

    % [Global_Rests measure 120 / measure 7]
    R1 * 1/4

}


segment.13.Bass.Flute.Music.Voice.1 = {

    \voiceTwo
    a'8.
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 2.75
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


segment.13.Bass.Flute.Music.Voice = {

    % [Bass_Flute_Music_Voice measure 114 / measure 1]
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
    b''4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

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
    \bacaStopTextSpanMetricModulation

    r2.
    - \tweak color #(x11-color 'blue)
    \!

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 115 / measure 2]
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

            % [Bass_Flute_Rest_Voice measure 115 / measure 2]
            R1 * 1/4

        }

    >>

    % [Bass_Flute_Music_Voice measure 116 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    r1

    r4

    b''4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

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

    % [Bass_Flute_Music_Voice measure 117 / measure 4]
    r16
    - \tweak color #(x11-color 'blue)
    \!

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
        { \segment.13.Bass.Flute.Music.Voice.1 }

    >>

    % [Bass_Flute_Music_Voice measure 118 / measure 5]
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
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \startTextSpan
    \breathe
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 119 / measure 6]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \stopTextSpan
            \override Staff.BarLine.bar-extent = #'(0 . 0)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 119 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 120 / measure 7]
            \abjad-invisible-music-coloring
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t
            R1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 120 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.13.Bass.Flute.Music.Staff = <<

    \context GlobalRests = "Global_Rests"
    { \segment.13.Global.Rests }

    \context Voice = "Bass_Flute_Music_Voice"
    { \segment.13.Bass.Flute.Music.Voice }

>>


segment.13.Percussion.I.Music.Voice.1 = {

    r4.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

}


segment.13.Percussion.I.Music.Voice.2 = {

    \once \override Dots.extra-offset = #'(1 . 0)
    \once \override Dots.X-extent = ##f
    \once \override Rest.X-extent = #'(0 . 0)
    r2..
    - \tweak color #(x11-color 'blue)
    \f

}


segment.13.Percussion.I.Music.Voice.3 = {

    r4
    - \tweak color #(x11-color 'blue)
    \p

}


segment.13.Percussion.I.Music.Voice = {

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_I_Music_Voice measure 114 / measure 1]
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
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            a8 * 2/5
            - \tweak color #(x11-color 'green4)
            \f
            [
            (
            \set Staff.shortInstrumentName = \harmony-perc-i-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.13.Percussion.I.Music.Voice.1 }

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
        { \segment.13.Percussion.I.Music.Voice.2 }

    >>

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 115 / measure 2]
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

            % [Percussion_I_Rest_Voice measure 115 / measure 2]
            R1 * 1/4

        }

    >>

    % [Percussion_I_Music_Voice measure 116 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
    r1

    r4

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
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.13.Percussion.I.Music.Voice.3 }

    >>

    % [Percussion_I_Music_Voice measure 117 / measure 4]
    \oneVoice
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \once \override Stem.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    d'1.
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-p-ancora
    - \tweak staff-padding 6
    ^ \baca-triangle-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    % [Percussion_I_Music_Voice measure 118 / measure 5]
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
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 119 / measure 6]
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

            % [Percussion_I_Rest_Voice measure 119 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 120 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 120 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.13.Percussion.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.13.Global.Rests }

    \context Voice = "Percussion_I_Music_Voice"
    { \segment.13.Percussion.I.Music.Voice }

>>


segment.13.Percussion.II.Music.Voice.1 = {

    r4.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

}


segment.13.Percussion.II.Music.Voice.2 = {

    \once \override Dots.extra-offset = #'(1 . 0)
    \once \override Dots.X-extent = ##f
    \once \override Rest.X-extent = #'(0 . 0)
    r2..
    - \tweak color #(x11-color 'blue)
    \f

}


segment.13.Percussion.II.Music.Voice.3 = {

    r4
    - \tweak color #(x11-color 'blue)
    \p

}


segment.13.Percussion.II.Music.Voice = {

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_II_Music_Voice measure 114 / measure 1]
            \set Staff.shortInstrumentName = \harmony-perc-ii-markup
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 3
            \startStaff
            \set Staff.instrumentName = \harmony-perc-ii-markup
            \clef "percussion"
            \slash
            \voiceOne
            \once \override Staff.Clef.color = #(x11-color 'green4)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            a8 * 2/5
            - \tweak color #(x11-color 'green4)
            \baca-effort-f
            [
            (
            \set Staff.shortInstrumentName = \harmony-perc-ii-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

            a8 * 2/5

            a8 * 2/5

            a8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_II_Music_Voice"
        { \segment.13.Percussion.II.Music.Voice.1 }

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
        { \segment.13.Percussion.II.Music.Voice.2 }

    >>

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 115 / measure 2]
            \oneVoice
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 115 / measure 2]
            R1 * 1/4

        }

    >>

    % [Percussion_II_Music_Voice measure 116 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    r1

    r4

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

        \context Voice = "Percussion_II_Music_Voice"
        { \segment.13.Percussion.II.Music.Voice.3 }

    >>

    % [Percussion_II_Music_Voice measure 117 / measure 4]
    \oneVoice
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    b1
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-p-ancora
    - \tweak staff-padding 6
    ^ \baca-bd-fingertips-markup
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    b4
    \revert Stem.direction
    \revert TupletBracket.direction

    r8

    \once \override Stem.direction = #up
    c'16
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak self-alignment-X 0.5
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 10.5
    \bacaStartTextSpanMetricModulation

    r16

    % [Percussion_II_Music_Voice measure 118 / measure 5]
    \override Stem.direction = #up
    c'8

    r8

    c'8

    r8

    c'8
    \revert Stem.direction

    r8
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 119 / measure 6]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 119 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 120 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 120 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.13.Percussion.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.13.Global.Rests }

    \context Voice = "Percussion_II_Music_Voice"
    { \segment.13.Percussion.II.Music.Voice }

>>


segment.13.Harp.Music.Voice = {

    % [Harp_Music_Voice measure 114 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    - \tweak color #(x11-color 'green4)
    \baca-effort-f
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <b, c df!>4
    :32
    - \tweak staff-padding 4
    ^ \baca-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    <b, c df!>2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    r4
    - \tweak color #(x11-color 'blue)
    \!

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 115 / measure 2]
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

            % [Harp_Rest_Voice measure 115 / measure 2]
            R1 * 1/4

        }

    >>

    % [Harp_Music_Voice measure 116 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2.
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    bf''!8
    - \tweak color #(x11-color 'blue)
    \f
    - \flageolet
    \laissezVibrer
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation

    r8

    r2

    % [Harp_Music_Voice measure 117 / measure 4]
    a''8
    - \flageolet
    \laissezVibrer

    r8

    gs''!8
    - \flageolet
    \laissezVibrer

    r8

    r2.
    \bacaStopTextSpanMetricModulation

    r8

    e'16
    - \tweak color #(x11-color 'blue)
    \baca-f-ancora
    - \flageolet
    - \snappizzicato
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation

    r16

    % [Harp_Music_Voice measure 118 / measure 5]
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

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 119 / measure 6]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanMetricModulation
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 119 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 120 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 120 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.13.Harp.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.13.Global.Rests }

    \context Voice = "Harp_Music_Voice"
    { \segment.13.Harp.Music.Voice }

>>


segment.13.Viola.Music.Voice.1 = {

    \override NoteHead.style = #'harmonic-black
    \voiceTwo
    df!2.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

}


segment.13.Viola.Music.Voice = {

    % [Viola_Music_Voice measure 114 / measure 1]
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
    bf!8.
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r16
    - \tweak color #(x11-color 'blue)
    \!

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
        { \segment.13.Viola.Music.Voice.1 }

    >>
    \oneVoice

    r4
    - \tweak color #(x11-color 'blue)
    \!

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 115 / measure 2]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            df!1 * 1/4
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 115 / measure 2]
            R1 * 1/4

        }

    >>

    % [Viola_Music_Voice measure 116 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    df!1.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak padding 1.5
    ^ \harmony-half-harm-pressure-markup
    \revert NoteHead.style

    % [Viola_Music_Voice measure 117 / measure 4]
    d1.
    - \tweak color #(x11-color 'blue)
    \baca-mp-parenthesized
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T1"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    % [Viola_Music_Voice measure 118 / measure 5]
    d2.
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 119 / measure 6]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \bacaStopTextSpanSCP
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 119 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 120 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 120 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.13.Viola.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.13.Global.Rests }

    \context Voice = "Viola_Music_Voice"
    { \segment.13.Viola.Music.Voice }

>>


segment.13.Cello.I.Music.Voice.1 = {

    \override NoteHead.style = #'harmonic-black
    \voiceTwo
    c2.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

}


segment.13.Cello.I.Music.Voice = {

    % [Cello_I_Music_Voice measure 114 / measure 1]
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
    aqf!8.
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r16
    - \tweak color #(x11-color 'blue)
    \!

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
        { \segment.13.Cello.I.Music.Voice.1 }

    >>
    \oneVoice

    r4
    - \tweak color #(x11-color 'blue)
    \!

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 115 / measure 2]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            c1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 115 / measure 2]
            R1 * 1/4

        }

    >>

    % [Cello_I_Music_Voice measure 116 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    c1.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak padding 1.5
    ^ \harmony-half-harm-pressure-markup
    \revert NoteHead.style

    % [Cello_I_Music_Voice measure 117 / measure 4]
    d,1
    - \tweak color #(x11-color 'blue)
    \baca-mp-parenthesized
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T1"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    d,4
    \repeatTie
    - \tweak stencil ##f
    ~

    d,8
    - \tweak color #(x11-color 'blue)
    \!
    \repeatTie

    aqf!8
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation

    % [Cello_I_Music_Voice measure 118 / measure 5]
    aqf!4
    :32
    - \accent

    aqf!4
    :32
    - \accent

    aqf!4
    :32
    - \accent
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 119 / measure 6]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 119 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 120 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 120 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.13.Cello.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.13.Global.Rests }

    \context Voice = "Cello_I_Music_Voice"
    { \segment.13.Cello.I.Music.Voice }

>>


segment.13.Cello.II.Music.Voice = {

    % [Cello_II_Music_Voice measure 114 / measure 1]
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
    f4
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    f8.
    :32
    \repeatTie

    r16
    - \tweak color #(x11-color 'blue)
    \!

    c2.
    - \tweak color #(x11-color 'blue)
    \mp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 115 / measure 2]
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

            % [Cello_II_Rest_Voice measure 115 / measure 2]
            R1 * 1/4

        }

    >>

    % [Cello_II_Music_Voice measure 116 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    c1.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.75
    \baca-mp-ancora
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    % [Cello_II_Music_Voice measure 117 / measure 4]
    c1
    - \tweak color #(x11-color 'blue)
    \baca-mp-parenthesized
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~

    c4
    \repeatTie
    - \tweak stencil ##f
    ~

    c8
    - \tweak color #(x11-color 'blue)
    \!
    \repeatTie

    f8
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    \bacaStopTextSpanDamp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation

    % [Cello_II_Music_Voice measure 118 / measure 5]
    f4
    :32
    - \accent

    f4
    :32
    - \accent

    f4
    :32
    - \accent
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 119 / measure 6]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 119 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 120 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 120 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.13.Cello.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.13.Global.Rests }

    \context Voice = "Cello_II_Music_Voice"
    { \segment.13.Cello.II.Music.Voice }

>>


segment.13.Contrabass.I.Music.Voice.1 = {

    \override NoteHead.style = #'harmonic-black
    \voiceTwo
    b2.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

}


segment.13.Contrabass.I.Music.Voice = {

    % [Contrabass_I_Music_Voice measure 114 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    dtqf'!8.
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r16
    - \tweak color #(x11-color 'blue)
    \!

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
        { \segment.13.Contrabass.I.Music.Voice.1 }

    >>
    \oneVoice

    r4
    - \tweak color #(x11-color 'blue)
    \!

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 115 / measure 2]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            b1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 115 / measure 2]
            R1 * 1/4

        }

    >>

    % [Contrabass_I_Music_Voice measure 116 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    b1.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak padding 1.5
    ^ \harmony-half-harm-pressure-markup
    \revert NoteHead.style

    % [Contrabass_I_Music_Voice measure 117 / measure 4]
    d1
    - \tweak color #(x11-color 'blue)
    \baca-mp-parenthesized
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    d4
    \repeatTie
    - \tweak stencil ##f
    ~

    d8
    - \tweak color #(x11-color 'blue)
    \!
    \repeatTie

    dtqf!8
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation

    % [Contrabass_I_Music_Voice measure 118 / measure 5]
    dtqf!4
    :32
    - \accent

    dtqf!4
    :32
    - \accent

    dtqf!4
    :32
    - \accent
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 119 / measure 6]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 119 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 120 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 120 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.13.Contrabass.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.13.Global.Rests }

    \context Voice = "Contrabass_I_Music_Voice"
    { \segment.13.Contrabass.I.Music.Voice }

>>


segment.13.Contrabass.II.Music.Voice = {

    % [Contrabass_II_Music_Voice measure 114 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    ef!4
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    ef8.
    :32
    \repeatTie

    r16
    - \tweak color #(x11-color 'blue)
    \!

    b2.
    - \tweak color #(x11-color 'blue)
    \mp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 115 / measure 2]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanDamp
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 115 / measure 2]
            R1 * 1/4

        }

    >>

    % [Contrabass_II_Music_Voice measure 116 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    b1.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.75
    \baca-mp-ancora
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    % [Contrabass_II_Music_Voice measure 117 / measure 4]
    b1
    - \tweak color #(x11-color 'blue)
    \baca-mp-parenthesized
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~

    b4
    \repeatTie
    - \tweak stencil ##f
    ~

    b8
    - \tweak color #(x11-color 'blue)
    \!
    \repeatTie

    ef!8
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    \bacaStopTextSpanDamp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation

    % [Contrabass_II_Music_Voice measure 118 / measure 5]
    ef!4
    :32
    - \accent

    ef!4
    :32
    - \accent

    ef!4
    :32
    - \accent
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 119 / measure 6]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanMetricModulation
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 119 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 120 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 120 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.13.Contrabass.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.13.Global.Rests }

    \context Voice = "Contrabass_II_Music_Voice"
    { \segment.13.Contrabass.II.Music.Voice }

>>
