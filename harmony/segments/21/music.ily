segment.21.Global.Skips = {

    % [Global_Skips measure 191 / measure 1]
    \bar ".|:"
    \once \override Score.BarLine.X-extent = #'(0 . 2)
%%% \once \override Score.BarLine.X-extent = #'(0 . 3)
    \time 6/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 3/2
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶W.4]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 192 / measure 2]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "U" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "U" #4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[U.1]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 193 / measure 3]
    \bar ":|."
    \once \override Score.BarLine.X-extent = #'(0 . 1.5)
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-twenty
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 194 / measure 4]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶W.4]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 195 / measure 5]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[U.2]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 196 / measure 6]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


segment.21.Global.Rests = {

    % [Global_Rests measure 191 / measure 1]
    R1 * 3/2

    % [Global_Rests measure 192 / measure 2]
    R1 * 1

    % [Global_Rests measure 193 / measure 3]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [Global_Rests measure 194 / measure 4]
    R1 * 3/2

    % [Global_Rests measure 195 / measure 5]
    R1 * 5/4

    % [Global_Rests measure 196 / measure 6]
    R1 * 1/4

}


segment.21.Bass.Flute.Music.Voice = {

    % [Bass_Flute_Music_Voice measure 191 / measure 1]
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
    <b' dqf''!>4
    - \tweak color #(x11-color 'blue)
    \p
    - \espressivo
    ^ \baca-boxed-markup "L.42"
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    <b' dqf''!>4
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    % [Bass_Flute_Music_Voice measure 192 / measure 2]
    r4

    \pitchedTrill
    e'''4 * 1/2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \startTrillSpan f'''

    \abjad-invisible-music-coloring
    e'''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    \pitchedTrill
    e'''4 * 1/2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak bound-details.right.padding 3
    \startTrillSpan f'''

    \abjad-invisible-music-coloring
    e'''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 193 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \stopTrillSpan
            \override Staff.BarLine.bar-extent = #'(0 . 0)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 193 / measure 3]
            R1 * 1/4

        }

    >>

    % [Bass_Flute_Music_Voice measure 194 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    <b' dqf''!>4
    - \tweak color #(x11-color 'blue)
    \p
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    % [Bass_Flute_Music_Voice measure 195 / measure 5]
    e'''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan

    r4
    \stopTextSpan

    e'''4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan

    r4
    \stopTextSpan

    e'''4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \startTextSpan
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 196 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \stopTextSpan

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 196 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.21.Bass.Flute.Music.Staff = <<

    \context GlobalRests = "Global_Rests"
    { \segment.21.Global.Rests }

    \context Voice = "Bass_Flute_Music_Voice"
    { \segment.21.Bass.Flute.Music.Voice }

>>


segment.21.Percussion.I.Music.Voice = {

    % [Percussion_I_Music_Voice measure 191 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-i-markup
    \once \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    b4
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-bd-struck-markup
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r1

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Percussion_I_Music_Voice measure 192 / measure 2]
        \override Staff.BarLine.bar-extent = #'(-2 . 1)
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 3
        \startStaff
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 0.5
        \override DynamicLineSpanner.staff-padding = 5
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r16

        \override Stem.direction = #down
        e'8
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak staff-padding 5
        ^ \baca-purpleheart-markup
        [

        a16

        c'16
        ]

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r16

        r16

        e'16
        [

        a8

        c'16
        ]
        \revert Stem.direction

    }

    r4
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 193 / measure 3]
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

            % [Percussion_I_Rest_Voice measure 193 / measure 3]
            R1 * 1/4

        }

    >>

    % [Percussion_I_Music_Voice measure 194 / measure 4]
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override TupletBracket.direction = #down
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    b4
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-bd-struck-markup

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/3
    {

        r4

        \once \override Stem.direction = #up
        c'4
        - \tweak color #(x11-color 'blue)
        \baca-mp-ancora
        - \tweak staff-padding 6
        ^ \baca-brake-drum-paper-towel-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 10.5
        \bacaStartTextSpanMetricModulation

        r4
        \revert TupletBracket.direction

    }

    % [Percussion_I_Music_Voice measure 195 / measure 5]
    \override Stem.direction = #up
    c'4

    r4

    c'4

    r4

    c'4
    \bacaStopTextSpanMetricModulation
    \revert Stem.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 196 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 196 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.21.Percussion.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.21.Global.Rests }

    \context Voice = "Percussion_I_Music_Voice"
    { \segment.21.Percussion.I.Music.Voice }

>>


segment.21.Percussion.II.Music.Voice = {

    % [Percussion_II_Music_Voice measure 191 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    e'4
    - \tweak color #(x11-color 'blue)
    \pp
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/3
    {

        r2
        \revert DynamicLineSpanner.staff-padding

        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
        \once \override Stem.direction = #down
        \once \override TupletBracket.direction = #up
        \override DynamicLineSpanner.staff-padding = 6
        \clef "percussion"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        b4
        - \tweak color #(x11-color 'blue)
        \mp
        \laissezVibrer
        - \tweak staff-padding 6
        ^ \baca-bd-struck-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 10.5
        \bacaStartTextSpanMetricModulation
        \revert TupletBracket.direction
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    }

    % [Percussion_II_Music_Voice measure 192 / measure 2]
    \override TupletBracket.direction = #up
    r4

    \override Stem.direction = #down
    b4
    \laissezVibrer

    r4

    b4
    \laissezVibrer
    \bacaStopTextSpanMetricModulation
    \revert Stem.direction
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 193 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 193 / measure 3]
            R1 * 1/4

        }

    >>

    % [Percussion_II_Music_Voice measure 194 / measure 4]
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
    e'4
    - \tweak color #(x11-color 'blue)
    \pp
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r1

    r4
    \revert DynamicLineSpanner.staff-padding

    % [Percussion_II_Music_Voice measure 195 / measure 5]
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
    b4
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \espressivo
    - \tweak staff-padding 6
    ^ \baca-bd-fingertips-markup
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    b8
    :32
    \repeatTie
    [

    b8
    :32
    - \espressivo
    ]
    - \tweak stencil ##f
    ~

    b16
    :32
    \repeatTie
    [

    b8.
    :32
    - \espressivo
    ]
    - \tweak stencil ##f
    ~

    b4
    :32
    \repeatTie

    b4
    :32
    - \espressivo
    \revert Stem.direction
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 196 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 196 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.21.Percussion.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.21.Global.Rests }

    \context Voice = "Percussion_II_Music_Voice"
    { \segment.21.Percussion.II.Music.Voice }

>>


segment.21.Harp.Music.Voice = {

    % [Harp_Music_Voice measure 191 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    e'4
    - \tweak color #(x11-color 'blue)
    \f
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-xyl-markup
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r1

    r4

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 192 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 192 / measure 2]
            R1 * 1

        }

    >>

    % [Harp_Music_Voice measure 193 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
    \override Staff.BarLine.bar-extent = #'(0 . 2)

    % [Harp_Music_Voice measure 194 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    e'4
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-f-ancora
    \laissezVibrer

    r1

    r4

    % [Harp_Music_Voice measure 195 / measure 5]
    \override TupletBracket.direction = #up
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r2

        f''4
        - \tweak color #(x11-color 'blue)
        \f
        - \flageolet
        \laissezVibrer
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation

        e''4
        - \flageolet
        \laissezVibrer

        ef''!4
        - \flageolet
        \laissezVibrer
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 196 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 196 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.21.Harp.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.21.Global.Rests }

    \context Voice = "Harp_Music_Voice"
    { \segment.21.Harp.Music.Voice }

>>


segment.21.Viola.Music.Voice = {

    % [Viola_Music_Voice measure 191 / measure 1]
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
    e'4
    - \tweak color #(x11-color 'blue)
    \p
    - \baca-staccati #3
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P4"
    - \baca-text-spanner-right-text "T1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    e'4
    - \baca-staccati #3

    e'4
    - \baca-staccati #3

    e'4
    - \baca-staccati #3

    e'4
    - \baca-staccati #3

    e'4
    - \baca-staccati #3
    \bacaStopTextSpanSCP

    % [Viola_Music_Voice measure 192 / measure 2]
    r4
    \bacaStopTextSpanMetricModulation

    bf!4
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    r4
    \bacaStopTextSpanBowSpeed

    bf!4
    \laissezVibrer
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 193 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanBowSpeed
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 193 / measure 3]
            R1 * 1/4

        }

    >>

    % [Viola_Music_Voice measure 194 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    e'4
    - \tweak color #(x11-color 'blue)
    \p
    - \baca-staccati #3
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P4"
    - \baca-text-spanner-right-text "T1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    e'4
    - \baca-staccati #3

    e'4
    - \baca-staccati #3

    e'4
    - \baca-staccati #3

    e'4
    - \baca-staccati #3

    e'4
    - \baca-staccati #3
    \bacaStopTextSpanSCP

    % [Viola_Music_Voice measure 195 / measure 5]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r16

        \override NoteHead.style = #'harmonic
        bf!16
        - \tweak color #(x11-color 'blue)
        \mf
        - \accent
        \laissezVibrer
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-markup \baca-pizz-markup
        - \tweak bound-details.left-broken.text \baca-pizz-markup
        - \tweak staff-padding 8
        \bacaStartTextSpanPizzicato

        r8.

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8

        bf!16
        - \accent
        \laissezVibrer
        \revert NoteHead.style

        r8

    }

    r4
    \bacaStopTextSpanPizzicato
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 196 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 196 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.21.Viola.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.21.Global.Rests }

    \context Voice = "Viola_Music_Voice"
    { \segment.21.Viola.Music.Voice }

>>


segment.21.Cello.I.Music.Voice = {

    % [Cello_I_Music_Voice measure 191 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r2
    - \tweak color #(x11-color 'green4)
    \baca-pp-sempre
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/3
    {

        e,4
        - \tweak color #(x11-color 'blue)
        \p
        - \baca-staccati #3
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "T"
        - \baca-text-spanner-right-text "P"
        - \tweak bound-details.right.padding 0.5
        - \tweak bound-details.right.stencil-align-dir-y #center
        - \tweak staff-padding 5.5
        \bacaStartTextSpanSCP

        e,4
        - \baca-staccati #3

        e,4
        - \baca-staccati #3
        \bacaStopTextSpanSCP

    }

    % [Cello_I_Music_Voice measure 192 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    aqf'!8.
    ^ \baca-eleven-e-flat
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r4

    aqf'!8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 193 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 193 / measure 3]
            R1 * 1/4

        }

    >>

    % [Cello_I_Music_Voice measure 194 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/3
    {

        e,4
        - \tweak color #(x11-color 'blue)
        \p
        - \baca-staccati #3
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "T"
        - \baca-text-spanner-right-text "P"
        - \tweak bound-details.right.padding 0.5
        - \tweak bound-details.right.stencil-align-dir-y #center
        - \tweak staff-padding 5.5
        \bacaStartTextSpanSCP

        e,4
        - \baca-staccati #3

        e,4
        - \baca-staccati #3
        \bacaStopTextSpanSCP

    }

    % [Cello_I_Music_Voice measure 195 / measure 5]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    aqf'!8.
    - \tweak color #(x11-color 'blue)
    \pp
    - \espressivo
    ^ \baca-eleven-e-flat
    [
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanBowSpeed
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    aqf'!16
    - \espressivo
    ~
    ]

    aqf'4
    - \tweak stencil ##f
    ~

    aqf'8
    \repeatTie
    [

    aqf'!8
    - \espressivo
    ]
    - \tweak stencil ##f
    ~

    aqf'8
    \repeatTie
    [

    aqf'!8
    - \espressivo
    ]
    - \tweak stencil ##f
    ~

    aqf'4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 196 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanBowSpeed

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 196 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.21.Cello.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.21.Global.Rests }

    \context Voice = "Cello_I_Music_Voice"
    { \segment.21.Cello.I.Music.Voice }

>>


segment.21.Cello.II.Music.Voice = {

    % [Cello_II_Music_Voice measure 191 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    dqf!1.
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "poco scr."
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [Cello_II_Music_Voice measure 192 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    \bacaStopTextSpanBowSpeed
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    f'8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r4

    f'8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 193 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 193 / measure 3]
            R1 * 1/4

        }

    >>

    % [Cello_II_Music_Voice measure 194 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    dqf!1.
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "poco scr."
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [Cello_II_Music_Voice measure 195 / measure 5]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    f'4
    - \tweak color #(x11-color 'blue)
    \pp
    - \espressivo
    \bacaStopTextSpanBowSpeed
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    f'8.
    \repeatTie
    [

    f'16
    - \espressivo
    ~
    ]

    f'8.
    [

    f'16
    - \espressivo
    ~
    ]

    f'4
    - \tweak stencil ##f
    ~

    f'16
    \repeatTie
    [

    f'8.
    - \espressivo
    ]
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 196 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanBowSpeed

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 196 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.21.Cello.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.21.Global.Rests }

    \context Voice = "Cello_II_Music_Voice"
    { \segment.21.Cello.II.Music.Voice }

>>


segment.21.Contrabass.I.Music.Voice = {

    % [Contrabass_I_Music_Voice measure 191 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r2
    - \tweak color #(x11-color 'green4)
    \baca-pp-sempre
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/3
    {

        e,4
        - \tweak color #(x11-color 'blue)
        \p
        - \baca-staccati #3
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "T"
        - \baca-text-spanner-right-text "P"
        - \tweak bound-details.right.padding 0.5
        - \tweak bound-details.right.stencil-align-dir-y #center
        - \tweak staff-padding 5.5
        \bacaStartTextSpanSCP

        e,4
        - \baca-staccati #3

        e,4
        - \baca-staccati #3
        \bacaStopTextSpanSCP

    }

    % [Contrabass_I_Music_Voice measure 192 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    dtqf''!8.
    ^ \baca-seven-e-flat
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r4

    dtqf''!8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 193 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 193 / measure 3]
            R1 * 1/4

        }

    >>

    % [Contrabass_I_Music_Voice measure 194 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/3
    {

        e,4
        - \tweak color #(x11-color 'blue)
        \p
        - \baca-staccati #3
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "T"
        - \baca-text-spanner-right-text "P"
        - \tweak bound-details.right.padding 0.5
        - \tweak bound-details.right.stencil-align-dir-y #center
        - \tweak staff-padding 5.5
        \bacaStartTextSpanSCP

        e,4
        - \baca-staccati #3

        e,4
        - \baca-staccati #3
        \bacaStopTextSpanSCP

    }

    % [Contrabass_I_Music_Voice measure 195 / measure 5]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    dtqf''!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \espressivo
    ^ \baca-seven-e-flat
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanBowSpeed
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    dtqf''!4
    - \espressivo
    - \tweak stencil ##f
    ~

    dtqf''8
    \repeatTie
    [

    dtqf''!8
    - \espressivo
    ]
    - \tweak stencil ##f
    ~

    dtqf''16
    \repeatTie
    [

    dtqf''!8.
    - \espressivo
    ]
    - \tweak stencil ##f
    ~

    dtqf''4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 196 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanBowSpeed

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 196 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.21.Contrabass.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.21.Global.Rests }

    \context Voice = "Contrabass_I_Music_Voice"
    { \segment.21.Contrabass.I.Music.Voice }

>>


segment.21.Contrabass.II.Music.Voice = {

    % [Contrabass_II_Music_Voice measure 191 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    e,4
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \baca-text-spanner-right-text "T1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    e,4

    e,4

    e,4

    e,4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    e,4
    \bacaStopTextSpanSCP

    % [Contrabass_II_Music_Voice measure 192 / measure 2]
    r4
    - \tweak color #(x11-color 'blue)
    \!

    ef!8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r4

    ef!8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 193 / measure 3]
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

            % [Contrabass_II_Rest_Voice measure 193 / measure 3]
            R1 * 1/4

        }

    >>

    % [Contrabass_II_Music_Voice measure 194 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    e,4
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \baca-text-spanner-right-text "T1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    e,4

    e,4

    e,4

    e,4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    e,4
    \bacaStopTextSpanSCP

    % [Contrabass_II_Music_Voice measure 195 / measure 5]
    ef!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \espressivo
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    - \tweak stencil ##f
    ~

    ef8
    \repeatTie
    [

    ef!8
    - \espressivo
    ]
    - \tweak stencil ##f
    ~

    ef16
    \repeatTie
    [

    ef!8.
    - \espressivo
    ]
    - \tweak stencil ##f
    ~

    ef4
    \repeatTie

    ef!4
    - \espressivo
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 196 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanBowSpeed

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 196 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.21.Contrabass.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.21.Global.Rests }

    \context Voice = "Contrabass_II_Music_Voice"
    { \segment.21.Contrabass.II.Music.Voice }

>>
