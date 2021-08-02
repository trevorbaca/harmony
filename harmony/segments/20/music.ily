segment.20.Global.Skips = {

    % [Global_Skips measure 181 / measure 1]
    \time 4/4
    \bar ""
    \baca-time-signature-color #'green4
    s1 * 1
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶U.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 182 / measure 2]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶V.3]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 183 / measure 3]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "T" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "T" #4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[T.1-8]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"144" #3 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 184 / measure 4]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 185 / measure 5]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 186 / measure 6]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 187 / measure 7]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 188 / measure 8]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 189 / measure 9]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 190 / measure 10]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 191 / measure 11]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


segment.20.Global.Rests = {

    % [Global_Rests measure 181 / measure 1]
    R1 * 1

    % [Global_Rests measure 182 / measure 2]
    R1 * 3/4

    % [Global_Rests measure 183 / measure 3]
    R1 * 1

    % [Global_Rests measure 184 / measure 4]
    R1 * 1

    % [Global_Rests measure 185 / measure 5]
    R1 * 1

    % [Global_Rests measure 186 / measure 6]
    R1 * 1

    % [Global_Rests measure 187 / measure 7]
    R1 * 1

    % [Global_Rests measure 188 / measure 8]
    R1 * 1

    % [Global_Rests measure 189 / measure 9]
    R1 * 1

    % [Global_Rests measure 190 / measure 10]
    R1 * 1

    % [Global_Rests measure 191 / measure 11]
    R1 * 1/4

}


segment.20.Bass.Flute.Music.Voice = {

    % [Bass_Flute_Music_Voice measure 181 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

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

    % [Bass_Flute_Music_Voice measure 182 / measure 2]
    r4
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    \pitchedTrill
    gqs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak staff-padding 3
    \startTrillSpan a'''

    \abjad-invisible-music-coloring
    gqs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    % [Bass_Flute_Music_Voice measure 183 / measure 3]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8.

        ef'!8
        - \tweak color #(x11-color 'blue)
        \baca-pp-sempre
        ~
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-markup \baca-covered-markup
        - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 5.5
        \bacaStartTextSpanCovered

    }

    ef'4
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        ef'16
        \repeatTie

        r4

    }

    % [Bass_Flute_Music_Voice measure 184 / measure 4]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8

        ef'!8.
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        ef'16
        \repeatTie

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Bass_Flute_Music_Voice measure 185 / measure 5]
        r4

        ef'!16
        ~

    }

    ef'4
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        ef'8
        \repeatTie

        r8.

    }

    r4

    % [Bass_Flute_Music_Voice measure 186 / measure 6]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8.

        ef'!8
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        ef'8

        r8.

    }

    r4

    % [Bass_Flute_Music_Voice measure 187 / measure 7]
    ef'!4
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        ef'8.
        \repeatTie

        r8

    }

    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Bass_Flute_Music_Voice measure 188 / measure 8]
        r4

        ef'!16
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        ef'8.

        r8

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r16

        ef'!4
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Bass_Flute_Music_Voice measure 189 / measure 9]
        ef'4
        \repeatTie

        r16

    }

    r2.

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Bass_Flute_Music_Voice measure 190 / measure 10]
        ef'!4

        r16

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8

        ef'!8.
        - \tweak stencil ##f
        ~

    }

    ef'4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 191 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanCovered

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 191 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.20.Bass.Flute.Music.Staff = <<

    \context GlobalRests = "Global_Rests"
    { \segment.20.Global.Rests }

    \context Voice = "Bass_Flute_Music_Voice"
    { \segment.20.Bass.Flute.Music.Voice }

>>


segment.20.Percussion.I.Music.Voice = {

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Percussion_I_Music_Voice measure 181 / measure 1]
        \set Staff.shortInstrumentName = \harmony-perc-i-markup
        \override Staff.BarLine.bar-extent = #'(-2 . 1)
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 3
        \startStaff
        \set Staff.instrumentName = \harmony-perc-i-markup
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 0.5
        \override DynamicLineSpanner.staff-padding = 5
        \clef "percussion"
        \once \override Staff.Clef.color = #(x11-color 'green4)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r16
        - \tweak color #(x11-color 'green4)
        \pp
        \set Staff.shortInstrumentName = \harmony-perc-i-markup
        \override Staff.Clef.color = #(x11-color 'OliveDrab)

        \override Stem.direction = #down
        e'8
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak staff-padding 6
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

    % [Percussion_I_Music_Voice measure 182 / measure 2]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    \override Stem.direction = #up
    d'4 * 1/2
    :32
    - \tweak staff-padding 7
    ^ \baca-triangle-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    d'4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \revert Stem.direction

    r4
    - \tweak color #(x11-color 'blue)
    \!

    % [Percussion_I_Music_Voice measure 183 / measure 3]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'4
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-pp-sempre
    - \tweak staff-padding 7
    ^ \baca-slate-scrape-markup
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        d'8
        \repeatTie

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        d'8
        ~

    }

    d'4

    % [Percussion_I_Music_Voice measure 184 / measure 4]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        d'4
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        d'4
        \repeatTie

        r8

    }

    r4

    % [Percussion_I_Music_Voice measure 185 / measure 5]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        d'4
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        d'4
        \repeatTie

        r8

    }

    r4

    % [Percussion_I_Music_Voice measure 186 / measure 6]
    d'4
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        d'8
        \repeatTie

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        d'8
        ~

    }

    d'4

    % [Percussion_I_Music_Voice measure 187 / measure 7]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        d'8
        ~

    }

    d'4

    % [Percussion_I_Music_Voice measure 188 / measure 8]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        d'4
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        d'4
        \repeatTie

        r8

    }

    r4

    % [Percussion_I_Music_Voice measure 189 / measure 9]
    d'4
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        d'8
        \repeatTie

        r4

    }

    r2

    % [Percussion_I_Music_Voice measure 190 / measure 10]
    d'4
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        d'8
        \repeatTie

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        d'8
        ~

    }

    d'4
    \revert DynamicLineSpanner.staff-padding
    \revert Stem.direction
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 191 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 191 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.20.Percussion.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.20.Global.Rests }

    \context Voice = "Percussion_I_Music_Voice"
    { \segment.20.Percussion.I.Music.Voice }

>>


segment.20.Percussion.II.Music.Voice = {

    % [Percussion_II_Music_Voice measure 181 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    \mp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \override Stem.direction = #down
    b4
    - \accent
    \laissezVibrer

    r4
    \bacaStopTextSpanMetricModulation

    b4
    - \accent
    \laissezVibrer
    \revert Stem.direction
    \revert TupletBracket.direction

    % [Percussion_II_Music_Voice measure 182 / measure 2]
    \override TupletBracket.direction = #up
    r4

    \once \override Stem.direction = #down
    c'4
    - \tweak color #(x11-color 'blue)
    \p
    \laissezVibrer
    - \accent
    - \tweak staff-padding 8
    ^ \baca-tam-tam-markup

    r4
    \revert TupletBracket.direction

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Percussion_II_Music_Voice measure 183 / measure 3]
        \override TupletBracket.staff-padding = 3
        \override Stem.direction = #down
        \override TupletBracket.direction = #up
        d'8
        :32
        - \tweak color #(x11-color 'blue)
        - \tweak self-alignment-X -0.9
        \baca-pp-sempre
        - \accent
        - \tweak staff-padding 8
        ^ \baca-slate-brush-markup

        r8.

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        d'8
        :32
        - \accent

        r8.

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Percussion_II_Music_Voice measure 184 / measure 4]
        d'8
        :32
        - \accent

        r8.

    }

    r2.

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Percussion_II_Music_Voice measure 185 / measure 5]
        r8

        d'8
        :32
        - \accent

        r16

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8

        d'8
        :32
        - \accent

        r16

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Percussion_II_Music_Voice measure 186 / measure 6]
        r8

        d'8
        :32
        - \accent

        r16

    }

    r2.

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Percussion_II_Music_Voice measure 187 / measure 7]
        r4

        d'16
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        d'16
        :32

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r4

        d'16
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        d'16
        :32

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Percussion_II_Music_Voice measure 188 / measure 8]
        r4

        d'16
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        d'16
        :32

        r4

    }

    r2

    % [Percussion_II_Music_Voice measure 189 / measure 9]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r16

        d'8
        :32
        - \accent

        r8

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r16

        d'8
        :32
        - \accent

        r8

    }

    % [Percussion_II_Music_Voice measure 190 / measure 10]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r16

        d'8
        :32
        - \accent
        \revert Stem.direction

        r8

    }

    r2
    \revert TupletBracket.staff-padding
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 191 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 191 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.20.Percussion.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.20.Global.Rests }

    \context Voice = "Percussion_II_Music_Voice"
    { \segment.20.Percussion.II.Music.Voice }

>>


segment.20.Harp.Music.Voice = {

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Harp_Music_Voice measure 181 / measure 1]
        \set Staff.shortInstrumentName = \harmony-hp-markup
        \override Staff.BarLine.bar-extent = #'(-2 . 2)
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        \set Staff.instrumentName = \harmony-hp-markup
        \override TupletBracket.direction = #up
        \override DynamicLineSpanner.staff-padding = 4
        \clef "treble"
        \once \override Staff.Clef.color = #(x11-color 'green4)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
        r2
        - \tweak color #(x11-color 'green4)
        \p
        \set Staff.shortInstrumentName = \harmony-hp-markup
        \override Staff.Clef.color = #(x11-color 'OliveDrab)

        f''4
        - \tweak color #(x11-color 'blue)
        \f
        - \flageolet
        \laissezVibrer
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation

        e''4
        - \flageolet
        \laissezVibrer

        ef''!4
        - \flageolet
        \laissezVibrer
        \revert TupletBracket.direction

    }

    % [Harp_Music_Voice measure 182 / measure 2]
    \override Staff.OttavaBracket.staff-padding = 8
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \ottava -1
    d,,4
    - \tweak color #(x11-color 'blue)
    \p
    \laissezVibrer
    \ottava 0

    r4
    \bacaStopTextSpanMetricModulation
    \revert Staff.OttavaBracket.staff-padding

    % [Harp_Music_Voice measure 183 / measure 3]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    fs'!8
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-p-sempre
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-sons-xylophoniques-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8

    r2.

    % [Harp_Music_Voice measure 184 / measure 4]
    r4

    r8

    fs'!8
    \laissezVibrer

    r2

    % [Harp_Music_Voice measure 185 / measure 5]
    r1

    % [Harp_Music_Voice measure 186 / measure 6]
    fs'!8
    \laissezVibrer

    r8

    r2.

    % [Harp_Music_Voice measure 187 / measure 7]
    r4

    r8

    fs'!8
    \laissezVibrer

    r2

    % [Harp_Music_Voice measure 188 / measure 8]
    r1

    % [Harp_Music_Voice measure 189 / measure 9]
    fs'!8
    \laissezVibrer

    r8

    r2.

    % [Harp_Music_Voice measure 190 / measure 10]
    r4

    r8

    fs'!8
    \laissezVibrer

    r2
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 191 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 191 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.20.Harp.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.20.Global.Rests }

    \context Voice = "Harp_Music_Voice"
    { \segment.20.Harp.Music.Voice }

>>


segment.20.Viola.Music.Voice = {

    % [Viola_Music_Voice measure 181 / measure 1]
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-va-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "alto"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Viola_Music_Voice measure 182 / measure 2]
        \override TupletBracket.direction = #up
        d'8
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        \bacaStopTextSpanBowSpeed
        [
        \glissando

        cs'!8.
        ]
        - \tweak stencil ##f
        ~

    }

    \afterGrace
    cs'2
    \repeatTie
    \glissando
    {

        d'8
        - \tweak color #(x11-color 'blue)
        \mf
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }


    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Viola_Music_Voice measure 183 / measure 3]
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
        \override TupletBracket.staff-padding = 2
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
        :32
        - \tweak color #(x11-color 'blue)
        - \tweak self-alignment-X -0.9
        \baca-pp-sempre
        - \accent
        \override Staff.BarLine.bar-extent = #'(-2 . 0)
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        c'8
        :32
        - \accent

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        c'8
        :32
        - \accent

    }

    r4

    % [Viola_Music_Voice measure 184 / measure 4]
    r2.

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        c'8
        :32
        - \accent

        r8

    }

    % [Viola_Music_Voice measure 185 / measure 5]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        c'8
        :32
        - \accent

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        c'8
        :32
        - \accent

        r4

    }

    r4

    % [Viola_Music_Voice measure 186 / measure 6]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        c'8
        :32
        - \accent

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Viola_Music_Voice measure 187 / measure 7]
        r8

        c'8
        :32
        - \accent

        r8

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        c'8
        :32
        - \accent

        r8

    }

    r2

    % [Viola_Music_Voice measure 188 / measure 8]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        c'8
        :32
        - \accent

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        c'8
        :32
        - \accent
        \revert DynamicLineSpanner.staff-padding

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Viola_Music_Voice measure 189 / measure 9]
        r4

        c'8
        :32
        - \accent
        \revert TupletBracket.staff-padding
        \revert Stem.direction
        \revert TupletBracket.direction

    }

    r4

    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 4
    \clef "alto"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    e4
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
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    e8
    \repeatTie
    [

    e8
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    % [Viola_Music_Voice measure 190 / measure 10]
    e4
    \repeatTie

    e4
    - \baca-staccati #3
    - \tweak stencil ##f
    ~

    e8
    \repeatTie
    [

    e8
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    e4
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 191 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanSCP
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 191 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.20.Viola.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.20.Global.Rests }

    \context Voice = "Viola_Music_Voice"
    { \segment.20.Viola.Music.Voice }

>>


segment.20.Cello.I.Music.Voice = {

    % [Cello_I_Music_Voice measure 181 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
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

    % [Cello_I_Music_Voice measure 182 / measure 2]
    r4

    \override NoteHead.style = #'harmonic
    fs''!4 * 1/2
    - \tweak staff-padding 1.5
    _ \baca-string-ii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak staff-padding 3
    \startTrillSpan

    \abjad-invisible-music-coloring
    fs''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \revert NoteHead.style

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_I_Music_Voice measure 183 / measure 3]
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
        \override TupletBracket.staff-padding = 2
        \override DynamicLineSpanner.staff-padding = 6
        \override Stem.direction = #down
        \override TupletBracket.direction = #up
        \once \override Staff.Clef.X-extent = ##f
        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
        \clef "percussion"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        c'8.
        :32
        - \tweak color #(x11-color 'blue)
        - \tweak self-alignment-X -0.9
        \baca-pp-sempre
        - \accent
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        r8

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'8.
        :32
        - \accent

        r8

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_I_Music_Voice measure 184 / measure 4]
        c'8.
        :32
        - \accent

        r8

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'8.
        :32
        - \accent

        r8

    }

    r4

    % [Cello_I_Music_Voice measure 185 / measure 5]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8

        c'8.
        :32
        - \accent

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8

        c'8.
        :32
        - \accent

    }

    % [Cello_I_Music_Voice measure 186 / measure 6]
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8

        c'8.
        :32
        - \accent

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8

        c'8.
        :32
        - \accent

    }

    % [Cello_I_Music_Voice measure 187 / measure 7]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r4

        c'16
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'8
        :32

        r8.

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_I_Music_Voice measure 188 / measure 8]
        r4

        c'16
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'8
        :32

        r8.

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r4

        c'16
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'8
        :32

        r8.

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_I_Music_Voice measure 189 / measure 9]
        r4

        c'16
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'8
        :32

        r8.

    }

    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_I_Music_Voice measure 190 / measure 10]
        r16

        c'8.
        :32
        - \accent

        r16

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r16

        c'8.
        :32
        - \accent
        \revert Stem.direction

        r16

    }

    r4
    \revert TupletBracket.staff-padding
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 191 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 191 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.20.Cello.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.20.Global.Rests }

    \context Voice = "Cello_I_Music_Voice"
    { \segment.20.Cello.I.Music.Voice }

>>


segment.20.Cello.II.Music.Voice = {

    % [Cello_II_Music_Voice measure 181 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
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

    % [Cello_II_Music_Voice measure 182 / measure 2]
    \override TupletBracket.staff-padding = 2
    gf'!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        gf'4
        \repeatTie
        \glissando

        f'8
        ~

    }

    \afterGrace
    f'4
    \glissando
    {

        gf'!8
        - \tweak color #(x11-color 'blue)
        \mf
        \revert TupletBracket.staff-padding
        \revert DynamicLineSpanner.staff-padding

    }


    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_II_Music_Voice measure 183 / measure 3]
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
        \override TupletBracket.staff-padding = 2
        \override DynamicLineSpanner.staff-padding = 6
        \override Stem.direction = #down
        \override TupletBracket.direction = #up
        \once \override Staff.Clef.X-extent = ##f
        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
        \clef "percussion"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        c'8.
        :32
        - \tweak color #(x11-color 'blue)
        - \tweak self-alignment-X -0.9
        \baca-pp-sempre
        - \accent
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        r8

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8.

        c'8
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'16
        :32

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r16

        c'8.
        :32
        - \accent

        r16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_II_Music_Voice measure 184 / measure 4]
        r4

        c'16
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'8
        :32

        r8.

    }

    r2

    % [Cello_II_Music_Voice measure 185 / measure 5]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'8.
        :32
        - \accent

        r8

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8.

        c'8
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_II_Music_Voice measure 186 / measure 6]
        c'16
        :32

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r16

        c'8.
        :32
        - \accent

        r16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r4

        c'16
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'8
        :32

        r8.

    }

    % [Cello_II_Music_Voice measure 187 / measure 7]
    r1

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_II_Music_Voice measure 188 / measure 8]
        c'8.
        :32
        - \accent

        r8

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8.

        c'8
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'16
        :32

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r16

        c'8.
        :32
        - \accent

        r16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_II_Music_Voice measure 189 / measure 9]
        r4

        c'16
        :32
        - \accent
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'8
        :32

        r8.

    }

    r2

    % [Cello_II_Music_Voice measure 190 / measure 10]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        c'8.
        :32
        - \accent

        r8

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        r8.

        c'8
        :32
        - \accent
        \revert TupletBracket.staff-padding
        \revert DynamicLineSpanner.staff-padding
        \revert Stem.direction
        \revert TupletBracket.direction

    }

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 191 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 191 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.20.Cello.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.20.Global.Rests }

    \context Voice = "Cello_II_Music_Voice"
    { \segment.20.Cello.II.Music.Voice }

>>


segment.20.Contrabass.I.Music.Voice = {

    % [Contrabass_I_Music_Voice measure 181 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    dtqf''!8.
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

    % [Contrabass_I_Music_Voice measure 182 / measure 2]
    d8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    [
    \glissando

    cs!16
    ~
    ]

    \afterGrace
    cs2
    \glissando
    {

        d8
        - \tweak color #(x11-color 'blue)
        \mf
        \revert DynamicLineSpanner.staff-padding

    }


    % [Contrabass_I_Music_Voice measure 183 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override DynamicLineSpanner.staff-padding = 6
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'8.
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-pp-sempre
    - \accent
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16

    r4

    r8

    c'8
    :32
    - \accent
    - \tweak stencil ##f
    ~

    c'16
    :32
    \repeatTie

    r8.

    % [Contrabass_I_Music_Voice measure 184 / measure 4]
    r4

    c'8.
    :32
    - \accent

    r16

    r4

    r8

    c'8
    :32
    - \accent
    - \tweak stencil ##f
    ~

    % [Contrabass_I_Music_Voice measure 185 / measure 5]
    c'16
    :32
    \repeatTie

    r8.

    r2

    r8.

    c'16
    :32
    - \accent
    ~

    % [Contrabass_I_Music_Voice measure 186 / measure 6]
    c'8
    :32

    r8

    r4

    r16

    c'8.
    :32
    - \accent

    r4

    % [Contrabass_I_Music_Voice measure 187 / measure 7]
    r8.

    c'16
    :32
    - \accent
    ~

    c'8
    :32

    r8

    r4

    r16

    c'8.
    :32
    - \accent

    % [Contrabass_I_Music_Voice measure 188 / measure 8]
    r2.

    r8

    c'8
    :32
    - \accent
    - \tweak stencil ##f
    ~

    % [Contrabass_I_Music_Voice measure 189 / measure 9]
    c'16
    :32
    \repeatTie

    r8.

    r4

    c'8.
    :32
    - \accent

    r16

    r4

    % [Contrabass_I_Music_Voice measure 190 / measure 10]
    r8

    c'8
    :32
    - \accent
    - \tweak stencil ##f
    ~

    c'16
    :32
    \repeatTie

    r8.

    r4

    c'8.
    :32
    - \accent
    \revert Stem.direction

    \once \override Rest.extra-offset = #'(-1.5 . 0)
    r16
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 191 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 191 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.20.Contrabass.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.20.Global.Rests }

    \context Voice = "Contrabass_I_Music_Voice"
    { \segment.20.Contrabass.I.Music.Voice }

>>


segment.20.Contrabass.II.Music.Voice = {

    % [Contrabass_II_Music_Voice measure 181 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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
    \revert DynamicLineSpanner.staff-padding

    % [Contrabass_II_Music_Voice measure 182 / measure 2]
    \override TupletBracket.direction = #up
    r4

    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Stem.direction = #down
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'16.
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-pp-sempre
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r32

    r8

    c'16.
    :32
    - \accent
    \revert Stem.direction

    r32

    r8
    \revert TupletBracket.direction

    % [Contrabass_II_Music_Voice measure 183 / measure 3]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    c'8.
    :32
    - \accent

    r16

    r4

    c'8.
    :32
    - \accent

    r16

    r4

    % [Contrabass_II_Music_Voice measure 184 / measure 4]
    c'8.
    :32
    - \accent

    r16

    r4

    c'8.
    :32
    - \accent

    r16

    r4

    % [Contrabass_II_Music_Voice measure 185 / measure 5]
    r1
    \bacaStopTextSpanMetricModulation

    % [Contrabass_II_Music_Voice measure 186 / measure 6]
    r8

    c'8
    :32
    - \accent
    - \tweak stencil ##f
    ~

    c'16
    :32
    \repeatTie

    r8.

    r8

    c'8
    :32
    - \accent
    - \tweak stencil ##f
    ~

    c'16
    :32
    \repeatTie

    r8.

    % [Contrabass_II_Music_Voice measure 187 / measure 7]
    r8

    c'8
    :32
    - \accent
    - \tweak stencil ##f
    ~

    c'16
    :32
    \repeatTie

    r8.

    r8

    c'8
    :32
    - \accent
    - \tweak stencil ##f
    ~

    c'16
    :32
    \repeatTie

    r8.

    % [Contrabass_II_Music_Voice measure 188 / measure 8]
    r1

    % [Contrabass_II_Music_Voice measure 189 / measure 9]
    r4

    c'8.
    :32
    - \accent

    r16

    r4

    c'8.
    :32
    - \accent

    r16

    % [Contrabass_II_Music_Voice measure 190 / measure 10]
    r4

    c'8.
    :32
    - \accent

    r16

    r4

    c'8.
    :32
    - \accent
    \revert Stem.direction

    \once \override Rest.extra-offset = #'(-1.5 . 0)
    r16
    \revert DynamicLineSpanner.staff-padding
    \revert TupletBracket.direction

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 191 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 191 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.20.Contrabass.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.20.Global.Rests }

    \context Voice = "Contrabass_II_Music_Voice"
    { \segment.20.Contrabass.II.Music.Voice }

>>
