segment.14.Global.Skips = {

    % [Global_Skips measure 120 / measure 1]
    \time 4/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 1
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "N" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "N" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[N.1-2]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 121 / measure 2]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 122 / measure 3]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-fourteen
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 123 / measure 4]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶O.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 124 / measure 5]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀M.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 125 / measure 6]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[N.3-6]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 126 / measure 7]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 127 / measure 8]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 128 / measure 9]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 129 / measure 10]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-fifteen
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 130 / measure 11]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶P.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 131 / measure 12]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


segment.14.Global.Rests = {

    % [Global_Rests measure 120 / measure 1]
    R1 * 1

    % [Global_Rests measure 121 / measure 2]
    R1 * 1

    % [Global_Rests measure 122 / measure 3]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [Global_Rests measure 123 / measure 4]
    R1 * 1

    % [Global_Rests measure 124 / measure 5]
    R1 * 5/4

    % [Global_Rests measure 125 / measure 6]
    R1 * 1

    % [Global_Rests measure 126 / measure 7]
    R1 * 1

    % [Global_Rests measure 127 / measure 8]
    R1 * 1

    % [Global_Rests measure 128 / measure 9]
    R1 * 1

    % [Global_Rests measure 129 / measure 10]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-short-fermata-markup

    % [Global_Rests measure 130 / measure 11]
    R1 * 3/4

    % [Global_Rests measure 131 / measure 12]
    R1 * 1/4

}


segment.14.Bass.Flute.Music.Voice = {

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 120 / measure 1]
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
            b'1 * 1
            - \tweak color #(x11-color 'green4)
            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
            \set Staff.shortInstrumentName = \harmony-bfl-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 120 / measure 1]
            R1 * 1

        }

    >>

    % [Bass_Flute_Music_Voice measure 121 / measure 2]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9
    {

        r32

        \override NoteHead.font-size = -3
        \override Accidental.font-size = -3
        \override Accidental.X-offset = 0
        \override Accidental.Y-offset = -2
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
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
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
        - \tweak color #(x11-color 'blue)
        \!
        \stopTrillSpan
        ]
        \revert NoteHead.font-size
        \revert Accidental.font-size
        \revert Accidental.X-offset
        \revert Accidental.Y-offset

    }

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 122 / measure 3]
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

            % [Bass_Flute_Rest_Voice measure 122 / measure 3]
            R1 * 1/4

        }

    >>

    % [Bass_Flute_Music_Voice measure 123 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    r16

    e'8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-covered-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered

    e'4
    - \accent

    r4

    e'4
    - \accent

    % [Bass_Flute_Music_Voice measure 124 / measure 5]
    b''4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \bacaStopTextSpanCovered

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

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9
    {

        % [Bass_Flute_Music_Voice measure 125 / measure 6]
        r32

        \override NoteHead.font-size = -3
        \override Accidental.font-size = -3
        \override Accidental.X-offset = 0
        \override Accidental.Y-offset = -2
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
        - \tweak color #(x11-color 'blue)
        \!
        \stopTrillSpan
        ]

    }

    r2

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 126 / measure 7]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 126 / measure 7]
            R1 * 1

        }

    >>

    % [Bass_Flute_Music_Voice measure 127 / measure 8]
    R1 * 1

    % [Bass_Flute_Music_Voice measure 128 / measure 9]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9
    {

        r32

        a'32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        [
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        \startTrillSpan

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
        - \tweak color #(x11-color 'blue)
        \!
        \stopTrillSpan
        ]
        \revert NoteHead.font-size
        \revert Accidental.font-size
        \revert Accidental.X-offset
        \revert Accidental.Y-offset

    }

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 129 / measure 10]
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

            % [Bass_Flute_Rest_Voice measure 129 / measure 10]
            R1 * 1/4

        }

    >>

    % [Bass_Flute_Music_Voice measure 130 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    d'''8.
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan

    r16
    \stopTextSpan

    d'''2
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \startTextSpan
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 131 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \stopTextSpan

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 131 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.14.Bass.Flute.Music.Staff = <<

    \context GlobalRests = "Global_Rests"
    { \segment.14.Global.Rests }

    \context Voice = "Bass_Flute_Music_Voice"
    { \segment.14.Bass.Flute.Music.Voice }

>>


segment.14.Percussion.I.Music.Voice.count.1 = {

    r4.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

}


segment.14.Percussion.I.Music.Voice.count.2 = {

    \once \override Dots.extra-offset = #'(1 . 0)
    \once \override Dots.X-extent = ##f
    \once \override Rest.X-extent = #'(0 . 0)
    r2..
    - \tweak color #(x11-color 'blue)
    \f

}


segment.14.Percussion.I.Music.Voice = {

    % [Percussion_I_Music_Voice measure 120 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-i-markup
    \override Stem.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    c'8
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-f-ancora
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r8

    r2.

    % [Percussion_I_Music_Voice measure 121 / measure 2]
    r2.

    r8

    c'8
    \revert Stem.direction

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 122 / measure 3]
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

            % [Percussion_I_Rest_Voice measure 122 / measure 3]
            R1 * 1/4

        }

    >>

    % [Percussion_I_Music_Voice measure 123 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \override TupletBracket.direction = #up
    r16

    \override Stem.direction = #down
    d'8.
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup

    d'4

    r4

    d'4
    \revert Stem.direction
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_I_Music_Voice measure 124 / measure 5]
            \override Staff.BarLine.bar-extent = #'(-2 . 1)
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

            a8 * 2/5
            )
            ]

        }

        \context Voice = "Percussion_I_Music_Voice"
        { \segment.14.Percussion.I.Music.Voice.count.1 }

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
        { \segment.14.Percussion.I.Music.Voice.count.2 }

    >>

    % [Percussion_I_Music_Voice measure 125 / measure 6]
    \oneVoice
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \once \override Stem.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'8
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-f-ancora
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    r8

    r2.

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 126 / measure 7]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 126 / measure 7]
            R1 * 1

        }

    >>

    % [Percussion_I_Music_Voice measure 127 / measure 8]
    R1 * 1

    % [Percussion_I_Music_Voice measure 128 / measure 9]
    r2.

    r8

    \once \override Stem.direction = #up
    c'8

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 129 / measure 10]
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

            % [Percussion_I_Rest_Voice measure 129 / measure 10]
            R1 * 1/4

        }

    >>

    % [Percussion_I_Music_Voice measure 130 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \once \override Stem.direction = #up
    c'2.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 6
    ^ \baca-brake-drum-paper-towel-markup
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 131 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 131 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.14.Percussion.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.14.Global.Rests }

    \context Voice = "Percussion_I_Music_Voice"
    { \segment.14.Percussion.I.Music.Voice }

>>


segment.14.Percussion.II.Music.Voice.count.1 = {

    r4.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

}


segment.14.Percussion.II.Music.Voice.count.2 = {

    \once \override Dots.extra-offset = #'(1 . 0)
    \once \override Dots.X-extent = ##f
    \once \override Rest.X-extent = #'(0 . 0)
    r2..
    - \tweak color #(x11-color 'blue)
    \f

}


segment.14.Percussion.II.Music.Voice = {

    % [Percussion_II_Music_Voice measure 120 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    r2.
    - \tweak color #(x11-color 'green4)
    \f
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        \override Stem.direction = #down
        d'16
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-effort-ff
        - \accent
        - \tweak self-alignment-X 0.75
        - \tweak staff-padding 6
        ^ \baca-slate-brush-markup

        r16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Percussion_II_Music_Voice measure 121 / measure 2]
        r8

        d'16
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-effort-ff
        - \accent
        \revert Stem.direction

        r8.

    }

    r2.
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 122 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 122 / measure 3]
            R1 * 1/4

        }

    >>

    % [Percussion_II_Music_Voice measure 123 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    R1 * 1
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [Percussion_II_Music_Voice measure 124 / measure 5]
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
        { \segment.14.Percussion.II.Music.Voice.count.1 }

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
        { \segment.14.Percussion.II.Music.Voice.count.2 }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Percussion_II_Music_Voice measure 125 / measure 6]
        \oneVoice
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
        \override Stem.direction = #down
        \override TupletBracket.direction = #up
        \override DynamicLineSpanner.staff-padding = 6
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        d'16
        :32
        - \tweak color #(x11-color 'blue)
        - \tweak self-alignment-X -0.9
        \baca-effort-ff
        - \accent
        - \tweak staff-padding 6
        ^ \baca-slate-brush-markup

        r8.

        d'16
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-effort-ff
        - \accent

        r16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        d'16
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-effort-ff
        - \accent

        r16

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        d'16
        :32
        - \tweak color #(x11-color 'blue)
        \baca-effort-f
        - \accent

        r4

        r16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Percussion_II_Music_Voice measure 126 / measure 7]
        r4

        d'16
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-effort-f
        - \accent

        r16

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        d'16
        :32
        - \tweak color #(x11-color 'blue)
        \mf
        - \accent

        r16

    }

    r4

    % [Percussion_II_Music_Voice measure 127 / measure 8]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        d'16
        :32
        - \tweak color #(x11-color 'blue)
        \mp
        - \accent

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
        - \tweak color #(x11-color 'blue)
        \p
        - \accent

        r16

    }

    % [Percussion_II_Music_Voice measure 128 / measure 9]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        d'16
        :32
        - \tweak color #(x11-color 'blue)
        \pp
        - \accent
        \revert Stem.direction

        r16

    }

    r4
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 129 / measure 10]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 129 / measure 10]
            R1 * 1/4

        }

    >>

    % [Percussion_II_Music_Voice measure 130 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
    c'2.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-pp-ancora
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 131 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 131 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.14.Percussion.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.14.Global.Rests }

    \context Voice = "Percussion_II_Music_Voice"
    { \segment.14.Percussion.II.Music.Voice }

>>


segment.14.Harp.Music.Voice = {

    % [Harp_Music_Voice measure 120 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \override DynamicLineSpanner.staff-padding = 7
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    e,,1
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [Harp_Music_Voice measure 121 / measure 2]
    e,,4
    \repeatTie
    - \tweak stencil ##f
    ~

    e,,8
    \repeatTie

    r8
    - \baca-damp

    r2
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 122 / measure 3]
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

            % [Harp_Rest_Voice measure 122 / measure 3]
            R1 * 1/4

        }

    >>

    % [Harp_Music_Voice measure 123 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2.
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        <b' c''>4
        - \tweak color #(x11-color 'blue)
        \baca-f-ancora
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup

    }

    % [Harp_Music_Voice measure 124 / measure 5]
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
    \revert DynamicLineSpanner.staff-padding

    % [Harp_Music_Voice measure 125 / measure 6]
    \override DynamicLineSpanner.staff-padding = 7
    e,,1
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak stencil ##f
    ~

    % [Harp_Music_Voice measure 126 / measure 7]
    e,,1
    \repeatTie
    - \tweak stencil ##f
    ~

    % [Harp_Music_Voice measure 127 / measure 8]
    e,,1
    \repeatTie
    - \tweak stencil ##f
    ~

    % [Harp_Music_Voice measure 128 / measure 9]
    e,,4
    \repeatTie
    - \tweak stencil ##f
    ~

    e,,8
    \repeatTie

    r8
    - \baca-damp

    r2

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 129 / measure 10]
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

            % [Harp_Rest_Voice measure 129 / measure 10]
            R1 * 1/4

        }

    >>

    % [Harp_Music_Voice measure 130 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    f,,2.
    - \tweak color #(x11-color 'blue)
    \p
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 131 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 131 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.14.Harp.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.14.Global.Rests }

    \context Voice = "Harp_Music_Voice"
    { \segment.14.Harp.Music.Voice }

>>


segment.14.Viola.Music.Voice.count.1 = {

    \voiceTwo
    df!2.
    \bacaStopTextSpanMetricModulation

}


segment.14.Viola.Music.Voice = {

    % [Viola_Music_Voice measure 120 / measure 1]
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
    r2
    - \tweak color #(x11-color 'green4)
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \override NoteHead.style = #'harmonic
    \afterGrace
    ds!4
    :32
    _ \baca-string-iv-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \mp
        \bacaStopTextSpanSCP
        \revert NoteHead.style

    }


    r4

    % [Viola_Music_Voice measure 121 / measure 2]
    r1

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 122 / measure 3]
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

            % [Viola_Rest_Voice measure 122 / measure 3]
            R1 * 1/4

        }

    >>

    % [Viola_Music_Voice measure 123 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override NoteHead.style = #'harmonic-black
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        df!4
        - \tweak color #(x11-color 'blue)
        \f
        - \accent
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanMetricModulation

        df!4
        - \accent

    }

    % [Viola_Music_Voice measure 124 / measure 5]
    df!4
    - \accent

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
        { \segment.14.Viola.Music.Voice.count.1 }

    >>
    \oneVoice

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \revert NoteHead.style

    % [Viola_Music_Voice measure 125 / measure 6]
    \override NoteHead.style = #'harmonic
    \afterGrace
    ds!1
    :32
    _ \baca-string-iv-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \mp
        \bacaStopTextSpanSCP

    }


    % [Viola_Music_Voice measure 126 / measure 7]
    r2.

    \afterGrace
    ds!4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \mf
        \bacaStopTextSpanSCP

    }


    % [Viola_Music_Voice measure 127 / measure 8]
    r1

    % [Viola_Music_Voice measure 128 / measure 9]
    \afterGrace
    ds!4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \f
        \bacaStopTextSpanSCP

    }


    r2

    \afterGrace
    ds!4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \ff
        \bacaStopTextSpanSCP
        \revert NoteHead.style

    }


    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 129 / measure 10]
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

            % [Viola_Rest_Voice measure 129 / measure 10]
            R1 * 1/4

        }

    >>

    % [Viola_Music_Voice measure 130 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    d'8
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \ppp
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT

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

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 131 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanHalfCLT

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 131 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.14.Viola.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.14.Global.Rests }

    \context Voice = "Viola_Music_Voice"
    { \segment.14.Viola.Music.Voice }

>>


segment.14.Cello.I.Music.Voice.count.1 = {

    \voiceTwo
    c2.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

}


segment.14.Cello.I.Music.Voice = {

    % [Cello_I_Music_Voice measure 120 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r2.
    - \tweak color #(x11-color 'green4)
    \p
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r16

        \override Stem.direction = #down
        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \baca-effort-ff
        - \accent

        r8.

    }

    % [Cello_I_Music_Voice measure 121 / measure 2]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8.

        c'16
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-effort-ff
        - \accent
        \revert Stem.direction

        r16

    }

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 122 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 122 / measure 3]
            R1 * 1/4

        }

    >>

    % [Cello_I_Music_Voice measure 123 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    a,8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r4

    a,4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    a,8.
    \repeatTie

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    % [Cello_I_Music_Voice measure 124 / measure 5]
    \override NoteHead.style = #'harmonic-black
    r4

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
        { \segment.14.Cello.I.Music.Voice.count.1 }

    >>
    \oneVoice

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_I_Music_Voice measure 125 / measure 6]
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
        \override TupletBracket.staff-padding = 3
        \override Stem.direction = #down
        \override TupletBracket.direction = #up
        \override DynamicLineSpanner.staff-padding = 6
    %%% \once \override Staff.Clef.X-extent = ##f
    %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
        \clef "percussion"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \baca-effort-ff
        - \accent
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        r8.

        c'16
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-effort-ff
        - \accent

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \baca-effort-f
        - \accent

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8.

        c'16
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \baca-effort-f
        - \accent

        r16

    }

    % [Cello_I_Music_Voice measure 126 / measure 7]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8.

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \mf
        - \accent

        r16

    }

    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_I_Music_Voice measure 127 / measure 8]
        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \mp
        - \accent

        r4

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r4

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \p
        - \accent
        \revert Stem.direction

    }

    r4
    \revert TupletBracket.staff-padding
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    % [Cello_I_Music_Voice measure 128 / measure 9]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    ds!8.
    - \tweak color #(x11-color 'blue)
    \pp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r16
    \bacaStopTextSpanDamp

    ds!8.
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r16
    \bacaStopTextSpanDamp

    r4

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 129 / measure 10]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 129 / measure 10]
            R1 * 1/4

        }

    >>

    % [Cello_I_Music_Voice measure 130 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    ds!8.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-pp-ancora
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r16
    \bacaStopTextSpanDamp

    ds!4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    ds8.
    \repeatTie

    r16
    \bacaStopTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 131 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 131 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.14.Cello.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.14.Global.Rests }

    \context Voice = "Cello_I_Music_Voice"
    { \segment.14.Cello.I.Music.Voice }

>>


segment.14.Cello.II.Music.Voice = {

    % [Cello_II_Music_Voice measure 120 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-vc-ii-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r2
    - \tweak color #(x11-color 'green4)
    \p
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16

    \override Stem.direction = #down
    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \baca-effort-ff
    - \accent

    r8

    r4

    % [Cello_II_Music_Voice measure 121 / measure 2]
    r4

    r16

    c'16
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-effort-ff
    - \accent

    r8

    r16

    c'16
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-effort-ff
    - \accent
    \revert Stem.direction

    r8

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 122 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 122 / measure 3]
            R1 * 1/4

        }

    >>

    % [Cello_II_Music_Voice measure 123 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    g,8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r4

    g,4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    g,8.
    \repeatTie

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Cello_II_Music_Voice measure 124 / measure 5]
        \override TupletBracket.direction = #up
        \override DynamicLineSpanner.staff-padding = 6
        r2

        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
        \once \override Stem.direction = #down
        \once \override TupletBracket.direction = #up
        \clef "percussion"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        c'8
        :32
        - \tweak color #(x11-color 'blue)
        \baca-effort-ff
        - \accent
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        r4.
        \revert TupletBracket.direction

    }

    % [Cello_II_Music_Voice measure 125 / measure 6]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    c'16
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-effort-ff
    - \accent

    r8.

    c'16
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \baca-effort-ff
    - \accent

    r8.

    r8
    \bacaStopTextSpanMetricModulation

    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \accent

    r16

    r4

    % [Cello_II_Music_Voice measure 126 / measure 7]
    r8

    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent

    r16

    r2

    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent

    r8.

    % [Cello_II_Music_Voice measure 127 / measure 8]
    r2

    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent

    r8.

    r4

    % [Cello_II_Music_Voice measure 128 / measure 9]
    r4

    r8

    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    \revert Stem.direction

    r16

    r2
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 129 / measure 10]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 129 / measure 10]
            R1 * 1/4

        }

    >>

    % [Cello_II_Music_Voice measure 130 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    cs!8.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-pp-ancora
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16
    \bacaStopTextSpanDamp

    cs!4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    cs8.
    \repeatTie

    r16
    \bacaStopTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 131 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 131 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.14.Cello.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.14.Global.Rests }

    \context Voice = "Cello_II_Music_Voice"
    { \segment.14.Cello.II.Music.Voice }

>>


segment.14.Contrabass.I.Music.Voice.count.1 = {

    \voiceTwo
    b2.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

}


segment.14.Contrabass.I.Music.Voice = {

    % [Contrabass_I_Music_Voice measure 120 / measure 1]
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
    r2
    - \tweak color #(x11-color 'green4)
    \p
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \override NoteHead.style = #'harmonic
    \afterGrace
    f4
    :32
    _ \baca-string-iv-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \mp
        \bacaStopTextSpanSCP
        \revert NoteHead.style

    }


    r4

    % [Contrabass_I_Music_Voice measure 121 / measure 2]
    r1

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 122 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 122 / measure 3]
            R1 * 1/4

        }

    >>

    % [Contrabass_I_Music_Voice measure 123 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    gs,!8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r4

    gs,!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    gs,8.
    \repeatTie

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    % [Contrabass_I_Music_Voice measure 124 / measure 5]
    \override NoteHead.style = #'harmonic-black
    r4

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
        { \segment.14.Contrabass.I.Music.Voice.count.1 }

    >>
    \oneVoice

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \revert NoteHead.style

    % [Contrabass_I_Music_Voice measure 125 / measure 6]
    \override NoteHead.style = #'harmonic
    \afterGrace
    f1
    :32
    _ \baca-string-iv-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \mp
        \bacaStopTextSpanSCP

    }


    % [Contrabass_I_Music_Voice measure 126 / measure 7]
    r2

    \afterGrace
    f4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \mf
        \bacaStopTextSpanSCP

    }


    r4

    % [Contrabass_I_Music_Voice measure 127 / measure 8]
    r2.

    \afterGrace
    f4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \f
        \bacaStopTextSpanSCP

    }


    % [Contrabass_I_Music_Voice measure 128 / measure 9]
    r2.

    \afterGrace
    f4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \ff
        \bacaStopTextSpanSCP
        \revert NoteHead.style

    }


    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 129 / measure 10]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 129 / measure 10]
            R1 * 1/4

        }

    >>

    % [Contrabass_I_Music_Voice measure 130 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    e'8
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \ppp
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT

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

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 131 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanHalfCLT

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 131 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.14.Contrabass.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.14.Global.Rests }

    \context Voice = "Contrabass_I_Music_Voice"
    { \segment.14.Contrabass.I.Music.Voice }

>>


segment.14.Contrabass.II.Music.Voice = {

    % [Contrabass_II_Music_Voice measure 120 / measure 1]
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
    r2
    - \tweak color #(x11-color 'green4)
    \p
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \override NoteHead.style = #'harmonic
    \afterGrace
    ds!4
    :32
    _ \baca-string-iv-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \mp
        \bacaStopTextSpanSCP
        \revert NoteHead.style

    }


    r4

    % [Contrabass_II_Music_Voice measure 121 / measure 2]
    r1

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 122 / measure 3]
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

            % [Contrabass_II_Rest_Voice measure 122 / measure 3]
            R1 * 1/4

        }

    >>

    % [Contrabass_II_Music_Voice measure 123 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    fs,!8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r4

    fs,!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    fs,8.
    \repeatTie

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    % [Contrabass_II_Music_Voice measure 124 / measure 5]
    r2

    b2.
    - \tweak color #(x11-color 'blue)
    \mp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    % [Contrabass_II_Music_Voice measure 125 / measure 6]
    \override NoteHead.style = #'harmonic
    \afterGrace
    ds!1
    :32
    _ \baca-string-iv-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \bacaStopTextSpanDamp
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \mp
        \bacaStopTextSpanSCP

    }


    % [Contrabass_II_Music_Voice measure 126 / measure 7]
    r2.

    \afterGrace
    ds!4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \mf
        \bacaStopTextSpanSCP

    }


    % [Contrabass_II_Music_Voice measure 127 / measure 8]
    r2

    \afterGrace
    ds!4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \f
        \bacaStopTextSpanSCP

    }


    r4

    % [Contrabass_II_Music_Voice measure 128 / measure 9]
    r2.

    \afterGrace
    ds!4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        e8
        - \tweak color #(x11-color 'blue)
        \ff
        \bacaStopTextSpanSCP
        \revert NoteHead.style

    }


    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 129 / measure 10]
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

            % [Contrabass_II_Rest_Voice measure 129 / measure 10]
            R1 * 1/4

        }

    >>

    % [Contrabass_II_Music_Voice measure 130 / measure 11]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    cs'!8
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \ppp
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT

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

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 131 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanHalfCLT

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 131 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.14.Contrabass.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.14.Global.Rests }

    \context Voice = "Contrabass_II_Music_Voice"
    { \segment.14.Contrabass.II.Music.Voice }

>>
