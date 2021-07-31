r_Global_Skips = {

    % [Global_Skips measure 157 / measure 1]
    \time 4/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 1
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "R" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "R" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[R.1-2]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 158 / measure 2]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 159 / measure 3]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶S.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 160 / measure 4]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀P.7-8]" #darkgreen
    \bacaStartTextSpanSNM

    % [Global_Skips measure 161 / measure 5]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 162 / measure 6]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀Q.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 163 / measure 7]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-seventeen
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 164 / measure 8]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[R.3]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 165 / measure 9]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[R.4-6]"
    \bacaStartTextSpanSNM

    % [Global_Skips measure 166 / measure 10]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 167 / measure 11]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 168 / measure 12]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


r_Global_Rests = {

    % [Global_Rests measure 157 / measure 1]
    R1 * 1

    % [Global_Rests measure 158 / measure 2]
    R1 * 3/4

    % [Global_Rests measure 159 / measure 3]
    R1 * 1

    % [Global_Rests measure 160 / measure 4]
    R1 * 3/4

    % [Global_Rests measure 161 / measure 5]
    R1 * 3/4

    % [Global_Rests measure 162 / measure 6]
    R1 * 3/2

    % [Global_Rests measure 163 / measure 7]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [Global_Rests measure 164 / measure 8]
    R1 * 1

    % [Global_Rests measure 165 / measure 9]
    R1 * 3/4

    % [Global_Rests measure 166 / measure 10]
    R1 * 1

    % [Global_Rests measure 167 / measure 11]
    R1 * 3/4

    % [Global_Rests measure 168 / measure 12]
    R1 * 1/4

}


r_Bass_Flute_Music_Voice = {

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 157 / measure 1]
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
            \p
            \set Staff.shortInstrumentName = \harmony-bfl-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 157 / measure 1]
            R1 * 1

        }

    >>

    % [Bass_Flute_Music_Voice measure 158 / measure 2]
    R1 * 3/4

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9
    {

        % [Bass_Flute_Music_Voice measure 159 / measure 3]
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
        - \tweak staff-padding 8
        \startTrillSpan

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
        - \tweak color #(x11-color 'blue)
        \!
        \stopTrillSpan
        ]
        \revert NoteHead.font-size
        \revert Accidental.font-size
        \revert Accidental.X-offset
        \revert Accidental.Y-offset

    }

    r2

    % [Bass_Flute_Music_Voice measure 160 / measure 4]
    d''8.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-p-sempre
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \startTextSpan

    r16
    \stopTextSpan

    d''2
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \startTextSpan

    % [Bass_Flute_Music_Voice measure 161 / measure 5]
    r4
    \stopTextSpan

    d''2
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \startTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation

    % [Bass_Flute_Music_Voice measure 162 / measure 6]
    d''4

    d''4

    r1
    \stopTextSpan
    \bacaStopTextSpanMetricModulation
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 163 / measure 7]
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

            % [Bass_Flute_Rest_Voice measure 163 / measure 7]
            R1 * 1/4

        }

    >>

    % [Bass_Flute_Music_Voice measure 164 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t
    R1 * 1

    % [Bass_Flute_Music_Voice measure 165 / measure 9]
    R1 * 3/4

    % [Bass_Flute_Music_Voice measure 166 / measure 10]
    R1 * 1

    % [Bass_Flute_Music_Voice measure 167 / measure 11]
    R1 * 3/4

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 168 / measure 12]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 168 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


r_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \r_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \r_Bass_Flute_Music_Voice

>>


r_Percussion_I_Music_Voice_A = {

    r8.
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

    \once \override Dots.extra-offset = #'(2 . 0)
    \once \override Dots.X-extent = ##f
    \once \override Rest.X-extent = #'(0 . 0)
    r2
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

}


r_Percussion_I_Music_Voice = {

    % [Percussion_I_Music_Voice measure 157 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-i-markup
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    a'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak staff-padding 6
    ^ \baca-bd-struck-then-superball-markup
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    a'8
    \laissezVibrer
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \revert Stem.direction

    r8
    - \tweak color #(x11-color 'blue)
    \mf

    r2
    \revert TupletBracket.direction

    % [Percussion_I_Music_Voice measure 158 / measure 2]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    a'8
    - \tweak color #(x11-color 'blue)
    \mp
    [

    a'8
    \laissezVibrer
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    ]
    \revert Stem.direction

    r2
    - \tweak color #(x11-color 'blue)
    \mf
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    % [Percussion_I_Music_Voice measure 159 / measure 3]
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override Stem.direction = #down
            \slash
            \voiceOne
            e'8 * 2/5
            [
            (

            e'8 * 2/5

            e'8 * 2/5

            e'8 * 2/5

            e'8 * 2/5
            )
            ]
            \revert Stem.direction

        }

        \context Voice = "Percussion_I_Music_Voice"
        \r_Percussion_I_Music_Voice_A

    >>

    % [Percussion_I_Music_Voice measure 160 / measure 4]
    \oneVoice
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Stem.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'2.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 6
    ^ \baca-brake-drum-paper-towel-markup
    \glissando
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    % [Percussion_I_Music_Voice measure 161 / measure 5]
    c'2
    \glissando

    c'16
    \revert Stem.direction

    r8.
    \revert DynamicLineSpanner.staff-padding

    % [Percussion_I_Music_Voice measure 162 / measure 6]
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    e'1.
    - \tweak color #(x11-color 'blue)
    \f
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 163 / measure 7]
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

            % [Percussion_I_Rest_Voice measure 163 / measure 7]
            R1 * 1/4

        }

    >>

    % [Percussion_I_Music_Voice measure 164 / measure 8]
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \once \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    b8
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-bd-superball-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8
    - \tweak color #(x11-color 'blue)
    \mf

    r2.
    \revert TupletBracket.direction

    % [Percussion_I_Music_Voice measure 165 / measure 9]
    \once \override Stem.direction = #down
    \override TupletBracket.direction = #up
    b8
    \laissezVibrer
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    r8
    - \tweak color #(x11-color 'blue)
    \mp

    r2
    \revert TupletBracket.direction

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Percussion_I_Music_Voice measure 166 / measure 10]
        \once \override Stem.direction = #down
        \override TupletBracket.direction = #up
        b8
        \laissezVibrer
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        r8
        - \tweak color #(x11-color 'blue)
        \mp

        r1
        \revert TupletBracket.direction

    }

    % [Percussion_I_Music_Voice measure 167 / measure 11]
    \once \override Stem.direction = #down
    \override TupletBracket.direction = #up
    b8
    \laissezVibrer
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    r8
    - \tweak color #(x11-color 'blue)
    \mp

    r2
    \revert TupletBracket.direction
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 168 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 168 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


r_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \r_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \r_Percussion_I_Music_Voice

>>


r_Percussion_II_Music_Voice_A = {

    r8.
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

    \once \override Dots.extra-offset = #'(2 . 0)
    \once \override Dots.X-extent = ##f
    \once \override Rest.X-extent = #'(0 . 0)
    r2
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding
    \revert DynamicLineSpanner.staff-padding

}


r_Percussion_II_Music_Voice = {

    % [Percussion_II_Music_Voice measure 157 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \override Stem.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    c'4
    - \tweak color #(x11-color 'blue)
    \p
    - \baca-damp
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    c'8
    - \tweak color #(x11-color 'blue)
    \f
    \revert Stem.direction

    r8

    r2

    % [Percussion_II_Music_Voice measure 158 / measure 2]
    \override Stem.direction = #up
    c'8
    - \tweak color #(x11-color 'blue)
    \p
    - \baca-damp
    [

    c'8
    - \tweak color #(x11-color 'blue)
    \f
    \laissezVibrer
    ]
    \revert Stem.direction

    r2
    \revert DynamicLineSpanner.staff-padding

    % [Percussion_II_Music_Voice measure 159 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    \override DynamicLineSpanner.staff-padding = 5
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4

    r16

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            \override Stem.direction = #down
            \slash
            \voiceOne
            e'8 * 2/5
            [
            (

            e'8 * 2/5

            e'8 * 2/5

            e'8 * 2/5
            )
            ]
            \revert Stem.direction

        }

        \context Voice = "Percussion_II_Music_Voice"
        \r_Percussion_II_Music_Voice_A

    >>

    % [Percussion_II_Music_Voice measure 160 / measure 4]
    \oneVoice
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    - \tweak stencil ##f
    ~

    % [Percussion_II_Music_Voice measure 161 / measure 5]
    c'2
    \repeatTie
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie
    \revert Stem.direction

    r8.
    - \baca-damp
    \revert TupletBracket.direction

    % [Percussion_II_Music_Voice measure 162 / measure 6]
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
    \once \override LaissezVibrerTie.direction = #up
    c'1.
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 163 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 163 / measure 7]
            R1 * 1/4

        }

    >>

    % [Percussion_II_Music_Voice measure 164 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \once \override Stem.direction = #up
    c'8
    - \tweak color #(x11-color 'blue)
    \f
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup

    r8

    r2.

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 165 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 3/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 165 / measure 9]
            R1 * 3/4

        }

    >>

    % [Percussion_II_Music_Voice measure 166 / measure 10]
    R1 * 1
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/4
    {

        % [Percussion_II_Music_Voice measure 167 / measure 11]
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 3
        \startStaff
        \override TupletBracket.direction = #up
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 0.5
        \override DynamicLineSpanner.staff-padding = 5
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r2

        \override Stem.direction = #down
        c'4
        - \tweak color #(x11-color 'blue)
        \ff
        - \tweak staff-padding 6
        ^ \baca-purpleheart-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 10.5
        \bacaStartTextSpanMetricModulation

        c'4
        \revert TupletBracket.direction
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 168 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 168 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


r_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \r_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \r_Percussion_II_Music_Voice

>>


r_Harp_Music_Voice = {

    % [Harp_Music_Voice measure 157 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    \baca-f-ancora
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    g'8
    - \tweak color #(x11-color 'blue)
    \mf
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-pdlt-markup

    r8

    r2

    % [Harp_Music_Voice measure 158 / measure 2]
    r8

    g'8
    \laissezVibrer

    r2
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 159 / measure 3]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 159 / measure 3]
            R1 * 1

        }

    >>

    % [Harp_Music_Voice measure 160 / measure 4]
    \override DynamicLineSpanner.staff-padding = 7
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    f,,2.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [Harp_Music_Voice measure 161 / measure 5]
    f,,2
    \repeatTie
    - \tweak stencil ##f
    ~

    f,,16
    \repeatTie

    r8.
    - \baca-damp
    \revert DynamicLineSpanner.staff-padding

    % [Harp_Music_Voice measure 162 / measure 6]
    \ottava -1
    \once \override Staff.OttavaBracket.staff-padding = 8
    \once \override DynamicLineSpanner.staff-padding = 5
    df,,!1.
    - \tweak color #(x11-color 'blue)
    \f
    \laissezVibrer
    \ottava 0

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 163 / measure 7]
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

            % [Harp_Rest_Voice measure 163 / measure 7]
            R1 * 1/4

        }

    >>

    % [Harp_Music_Voice measure 164 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    g'8
    - \tweak color #(x11-color 'blue)
    \mf
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-pdlt-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8

    r2.
    \revert DynamicLineSpanner.staff-padding

    % [Harp_Music_Voice measure 165 / measure 9]
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
    c'8.
    - \tweak staff-padding 6
    ^ \baca-whisk-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    [
    \glissando
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    c'16
    - \tweak color #(x11-color 'blue)
    \baca-effort-mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ]

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    c'8
    \revert Stem.direction

    r8
    - \tweak color #(x11-color 'blue)
    \!

    r4
    \revert TupletBracket.direction

    % [Harp_Music_Voice measure 166 / measure 10]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    c'8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    [
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    c'16
    - \tweak color #(x11-color 'blue)
    \baca-effort-mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ]

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    c'8
    \revert Stem.direction

    r8
    - \tweak color #(x11-color 'blue)
    \!

    r2
    \revert TupletBracket.direction

    % [Harp_Music_Voice measure 167 / measure 11]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    c'8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    [
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    c'16
    - \tweak color #(x11-color 'blue)
    \baca-effort-mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ]

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    c'8
    \revert Stem.direction

    r8
    - \tweak color #(x11-color 'blue)
    \!

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 168 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 168 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


r_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \r_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \r_Harp_Music_Voice

>>


r_Viola_Music_Voice = {

    % [Viola_Music_Voice measure 157 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    c4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    c8
    [

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    c8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ]

    r4
    - \tweak color #(x11-color 'blue)
    \!

    % [Viola_Music_Voice measure 158 / measure 2]
    r8

    c8
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    c4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    c8.
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    \once \override Rest.extra-offset = #'(-1.5 . 0)
    r16
    - \tweak color #(x11-color 'blue)
    \!

    % [Viola_Music_Voice measure 159 / measure 3]
    \override NoteHead.style = #'harmonic
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <gs''! a'' bf''!>4 * 1/2
    :32
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \once \override DynamicText.X-offset = -3
    \abjad-invisible-music-coloring
    <gs''! a'' bf''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    <gs''! a'' bf''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \pp

    \abjad-invisible-music-coloring
    <gs''! a'' bf''!>4 * 1/2
    :32

    <gs''! a'' bf''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \once \override DynamicText.X-offset = -0.25
    \abjad-invisible-music-coloring
    <gs''! a'' bf''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>
    \revert NoteHead.style

    r4
    - \tweak color #(x11-color 'blue)
    \!

    % [Viola_Music_Voice measure 160 / measure 4]
    d'8
    - \tweak color #(x11-color 'blue)
    \ppp
    - \tweak staff-padding 1.5
    - \baca-full-downbow
    [
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanHalfCLT

    ef'!16
    ]

    r16

    d'4
    - \tweak staff-padding 1.5
    - \baca-full-upbow
    \glissando

    ef'!8
    - \tweak staff-padding 1.5
    - \baca-full-downbow
    [
    \glissando

    d'16
    ]

    r16

    % [Viola_Music_Voice measure 161 / measure 5]
    r2

    ef'!8
    - \tweak staff-padding 1.5
    - \baca-full-upbow
    [
    \glissando

    d'16
    ]

    r16

    % [Viola_Music_Voice measure 162 / measure 6]
    d'1.
    - \tweak color #(x11-color 'blue)
    \pp
    \bacaStopTextSpanHalfCLT
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "poco scr."
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 163 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanBowSpeed
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 163 / measure 7]
            R1 * 1/4

        }

    >>

    % [Viola_Music_Voice measure 164 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "alto"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    c2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    c4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    r4
    - \tweak color #(x11-color 'blue)
    \!

    % [Viola_Music_Voice measure 165 / measure 9]
    \override NoteHead.style = #'harmonic
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    g'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak staff-padding 1.5
    _ \baca-string-iv-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \tweak bound-details.right.padding 6
    - \tweak staff-padding 3
    \startTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \abjad-invisible-music-coloring
    g'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    g'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    g'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    g'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    g'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Viola_Music_Voice measure 166 / measure 10]
        g'4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        g'4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

        g'4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        g'4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

        g'4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        g'4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

        g'4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        g'4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

        g'4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        g'4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

    }

    % [Viola_Music_Voice measure 167 / measure 11]
    g'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    g'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    g'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    g'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    g'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    g'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 168 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \stopTrillSpan

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 168 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


r_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \r_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \r_Viola_Music_Voice

>>


r_Cello_I_Music_Voice = {

    % [Cello_I_Music_Voice measure 157 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    - \tweak color #(x11-color 'green4)
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.style = #'harmonic
    d''4
    - \tweak staff-padding 1.5
    _ \baca-string-iv-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    \startTrillSpan

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    d''8
    [

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    d''8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ]

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    % [Cello_I_Music_Voice measure 158 / measure 2]
    r8

    d''8
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    \startTrillSpan

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    d''4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    d''8.
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \revert NoteHead.style

    r16
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    % [Cello_I_Music_Voice measure 159 / measure 3]
    \override NoteHead.style = #'harmonic
    <gs''! a'' bf''!>4 * 1/2
    :32
    ^ \baca-quasi-bisb-markup
    - \tweak staff-padding 1.5
    _ \baca-string-i-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    \once \override DynamicText.X-offset = -3
    \abjad-invisible-music-coloring
    <gs''! a'' bf''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    <gs''! a'' bf''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \pp

    \abjad-invisible-music-coloring
    <gs''! a'' bf''!>4 * 1/2
    :32

    <gs''! a'' bf''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \once \override DynamicText.X-offset = -0.25
    \abjad-invisible-music-coloring
    <gs''! a'' bf''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>
    \revert NoteHead.style

    r4
    - \tweak color #(x11-color 'blue)
    \!

    % [Cello_I_Music_Voice measure 160 / measure 4]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    ds!8.
    - \tweak color #(x11-color 'blue)
    \pp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16
    \bacaStopTextSpanDamp

    ds!2
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    % [Cello_I_Music_Voice measure 161 / measure 5]
    r2
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

    % [Cello_I_Music_Voice measure 162 / measure 6]
    r4

    r8.

    e16
    - \tweak color #(x11-color 'blue)
    \p
    - \baca-staccati #3
    - \tweak color #(x11-color 'blue)
    \<
    ~
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T4"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    e2.
    - \tweak stencil ##f
    ~

    e16
    \repeatTie
    [

    e8.
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-staccati #3
    \bacaStopTextSpanSCP
    ]

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 163 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 163 / measure 7]
            R1 * 1/4

        }

    >>

    % [Cello_I_Music_Voice measure 164 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    d''2
    - \tweak staff-padding 1.5
    _ \baca-string-iv-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    \startTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    d''4
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

    % [Cello_I_Music_Voice measure 165 / measure 9]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    d8.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanDamp

    r4

    r8

    d8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    % [Cello_I_Music_Voice measure 166 / measure 10]
    d16
    \repeatTie

    r8.
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanDamp

    r4

    d8.
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r16
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanDamp

    r4

    % [Cello_I_Music_Voice measure 167 / measure 11]
    r8

    d8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    d16
    \repeatTie

    r8.
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanDamp

    r4
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 168 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 168 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


r_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \r_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \r_Cello_I_Music_Voice

>>


r_Cello_II_Music_Voice = {

    % [Cello_II_Music_Voice measure 157 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    - \tweak color #(x11-color 'green4)
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.style = #'harmonic
    btqf'!4
    ^ \baca-seven-c
    - \tweak staff-padding 1.5
    _ \baca-string-iv-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    \startTrillSpan

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    btqf'!8
    [

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    btqf'!8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ]

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    % [Cello_II_Music_Voice measure 158 / measure 2]
    r8

    btqf'!8
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    \startTrillSpan

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    btqf'!4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    btqf'!8.
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \revert NoteHead.style

    r16
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    % [Cello_II_Music_Voice measure 159 / measure 3]
    \override NoteHead.style = #'harmonic
    <a'' bf''! cf'''!>4 * 1/2
    :32
    ^ \baca-quasi-bisb-markup
    - \tweak staff-padding 1.5
    _ \baca-string-i-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    \once \override DynamicText.X-offset = -3
    \abjad-invisible-music-coloring
    <a'' bf''! cf'''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    <a'' bf''! cf'''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \pp

    \abjad-invisible-music-coloring
    <a'' bf''! cf'''!>4 * 1/2
    :32

    <a'' bf''! cf'''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \once \override DynamicText.X-offset = -0.25
    \abjad-invisible-music-coloring
    <a'' bf''! cf'''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>
    \revert NoteHead.style

    r4
    - \tweak color #(x11-color 'blue)
    \!

    % [Cello_II_Music_Voice measure 160 / measure 4]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    cs!8.
    - \tweak color #(x11-color 'blue)
    \pp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16
    \bacaStopTextSpanDamp

    cs!2
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    % [Cello_II_Music_Voice measure 161 / measure 5]
    r2
    \bacaStopTextSpanDamp

    cs!8.
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r16
    \bacaStopTextSpanDamp

    % [Cello_II_Music_Voice measure 162 / measure 6]
    r4

    r8

    d8
    - \tweak color #(x11-color 'blue)
    \p
    - \baca-staccati #3
    - \tweak color #(x11-color 'blue)
    \<
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T4"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    d16
    \repeatTie
    [

    d8.
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    d4
    \repeatTie

    d2
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-staccati #3
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 163 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 163 / measure 7]
            R1 * 1/4

        }

    >>

    % [Cello_II_Music_Voice measure 164 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    btqf'!2
    - \tweak staff-padding 1.5
    _ \baca-string-iv-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    \startTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    btqf'!4
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

    % [Cello_II_Music_Voice measure 165 / measure 9]
    \override NoteHead.style = #'harmonic
    btqf'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \tweak bound-details.right.padding 6
    - \tweak staff-padding 3
    \startTrillSpan

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \abjad-invisible-music-coloring
    btqf'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    btqf'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    btqf'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    btqf'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    btqf'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_II_Music_Voice measure 166 / measure 10]
        btqf'!4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        btqf'!4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

        btqf'!4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        btqf'!4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

        btqf'!4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        btqf'!4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

        btqf'!4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        btqf'!4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

        btqf'!4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        btqf'!4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

    }

    % [Cello_II_Music_Voice measure 167 / measure 11]
    btqf'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    btqf'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    btqf'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    btqf'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    btqf'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    btqf'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 168 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \stopTrillSpan

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 168 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


r_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \r_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \r_Cello_II_Music_Voice

>>


r_Contrabass_I_Music_Voice = {

    % [Contrabass_I_Music_Voice measure 157 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    - \tweak color #(x11-color 'green4)
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \pitchedTrill
    e''4
    ^ \baca-eleven-c
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    \startTrillSpan fqs''

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    e''8
    [

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    e''8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ]

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    % [Contrabass_I_Music_Voice measure 158 / measure 2]
    r8

    \override NoteHead.style = #'harmonic
    <b'' c''' df'''!>8
    - \tweak staff-padding 1.5
    _ \baca-string-iii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    <b'' c''' df'''!>4

    <b'' c''' df'''!>8.
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \revert NoteHead.style

    r16
    - \tweak color #(x11-color 'blue)
    \!

    % [Contrabass_I_Music_Voice measure 159 / measure 3]
    \override NoteHead.style = #'harmonic
    <b'' c''' df'''!>4 * 1/2
    :32
    ^ \baca-quasi-bisb-markup
    - \tweak staff-padding 1.5
    _ \baca-string-iii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    \once \override DynamicText.X-offset = -3
    \abjad-invisible-music-coloring
    <b'' c''' df'''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    <b'' c''' df'''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \pp

    \abjad-invisible-music-coloring
    <b'' c''' df'''!>4 * 1/2
    :32

    <b'' c''' df'''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \once \override DynamicText.X-offset = -0.25
    \abjad-invisible-music-coloring
    <b'' c''' df'''!>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>
    \revert NoteHead.style

    r4
    - \tweak color #(x11-color 'blue)
    \!

    % [Contrabass_I_Music_Voice measure 160 / measure 4]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    e'8
    - \tweak color #(x11-color 'blue)
    \ppp
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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

    % [Contrabass_I_Music_Voice measure 161 / measure 5]
    r2

    ds'!8
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    e'16
    ]

    r16

    % [Contrabass_I_Music_Voice measure 162 / measure 6]
    r2.
    \bacaStopTextSpanHalfCLT

    r8

    e'8
    - \tweak color #(x11-color 'blue)
    \p
    - \baca-staccati #3
    - \tweak color #(x11-color 'blue)
    \<
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T4"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    e'4
    - \baca-staccati #3
    - \tweak stencil ##f
    ~

    e'8
    \repeatTie
    [

    e'8
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-staccati #3
    \bacaStopTextSpanSCP
    ]

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 163 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 163 / measure 7]
            R1 * 1/4

        }

    >>

    % [Contrabass_I_Music_Voice measure 164 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \pitchedTrill
    e''2
    ^ \baca-eleven-c
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    \startTrillSpan fqs''
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    e''4
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

    % [Contrabass_I_Music_Voice measure 165 / measure 9]
    e''16
    :32
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    [
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \baca-text-spanner-right-text "P4"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    e''8.
    :32
    - \accent
    ]
    - \tweak stencil ##f
    ~

    e''16
    :32
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    [

    e''16
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]

    r8
    - \tweak color #(x11-color 'blue)
    \!

    r4

    % [Contrabass_I_Music_Voice measure 166 / measure 10]
    e''8
    :32
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    [
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \baca-text-spanner-right-text "P4"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    e''8
    :32
    - \accent
    ]
    - \tweak stencil ##f
    ~

    e''16
    :32
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    [

    e''16
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]

    r8
    - \tweak color #(x11-color 'blue)
    \!

    r2

    % [Contrabass_I_Music_Voice measure 167 / measure 11]
    e''16
    :32
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    [
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \baca-text-spanner-right-text "P4"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    e''8.
    :32
    - \accent
    ]

    e''8
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \bacaStopTextSpanSCP

    r8
    - \tweak color #(x11-color 'blue)
    \!

    r4
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 168 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 168 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


r_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \r_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \r_Contrabass_I_Music_Voice

>>


r_Contrabass_II_Music_Voice = {

    % [Contrabass_II_Music_Voice measure 157 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \override NoteHead.style = #'harmonic
    g'4
    - \tweak staff-padding 1.5
    _ \baca-string-i-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    g'8
    [

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    g'8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ]
    \revert NoteHead.style

    r4
    - \tweak color #(x11-color 'blue)
    \!

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/4
    {

        % [Contrabass_II_Music_Voice measure 158 / measure 2]
        \once \override Staff.Clef.X-extent = ##f
        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
        \clef "treble"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        r2
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        \override NoteHead.style = #'harmonic
        <as''! b'' c'''>4 * 1/2
        :32
        ^ \baca-quasi-bisb-markup
        - \tweak staff-padding 1.5
        _ \baca-string-iii-markup
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        - \tweak stencil #abjad-flared-hairpin
        \<
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation

        \abjad-invisible-music-coloring
        <as''! b'' c'''>4 * 1/2
        :32
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        - \tweak stencil #abjad-flared-hairpin
        \>

        <as''! b'' c'''>4 * 1/2
        :32
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        - \tweak stencil #abjad-flared-hairpin
        \<

        \abjad-invisible-music-coloring
        <as''! b'' c'''>4 * 1/2
        :32
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        - \tweak stencil #abjad-flared-hairpin
        \>

    }

    % [Contrabass_II_Music_Voice measure 159 / measure 3]
    <as''! b'' c'''>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    \once \override DynamicText.X-offset = -3
    \abjad-invisible-music-coloring
    <as''! b'' c'''>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    <as''! b'' c'''>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \pp

    \abjad-invisible-music-coloring
    <as''! b'' c'''>4 * 1/2
    :32

    <as''! b'' c'''>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \once \override DynamicText.X-offset = -0.25
    \abjad-invisible-music-coloring
    <as''! b'' c'''>4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>
    \revert NoteHead.style

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanMetricModulation

    % [Contrabass_II_Music_Voice measure 160 / measure 4]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    cs'!8
    - \tweak color #(x11-color 'blue)
    \ppp
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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

    % [Contrabass_II_Music_Voice measure 161 / measure 5]
    r2

    d'8
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    cs'!16
    ]

    r16

    % [Contrabass_II_Music_Voice measure 162 / measure 6]
    d'8.
    - \tweak color #(x11-color 'blue)
    \p
    - \baca-staccati #3
    - \tweak color #(x11-color 'blue)
    \<
    \bacaStopTextSpanHalfCLT
    [
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T4"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    d'16
    - \baca-staccati #3
    ~
    ]

    d'8.
    [

    d'16
    - \baca-staccati #3
    ~
    ]

    d'2.
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie
    [

    d'16
    - \baca-staccati #3
    ~

    d'16

    d'16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-staccati #3
    \bacaStopTextSpanSCP
    ]

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 163 / measure 7]
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

            % [Contrabass_II_Rest_Voice measure 163 / measure 7]
            R1 * 1/4

        }

    >>

    % [Contrabass_II_Music_Voice measure 164 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override NoteHead.style = #'harmonic
    g'2
    - \tweak staff-padding 1.5
    _ \baca-string-i-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    g'4
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

    % [Contrabass_II_Music_Voice measure 165 / measure 9]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \pitchedTrill
    e''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    ^ \baca-eleven-c
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \tweak bound-details.right.padding 6
    - \tweak staff-padding 3
    \startTrillSpan fqs''
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \abjad-invisible-music-coloring
    e''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    e''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    e''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    e''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    e''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Contrabass_II_Music_Voice measure 166 / measure 10]
        e''4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        e''4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

        e''4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        e''4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

        e''4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        e''4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

        e''4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        e''4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

        e''4 * 1/2
        - \tweak color #(x11-color 'blue)
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<

        \abjad-invisible-music-coloring
        e''4 * 1/2
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>

    }

    % [Contrabass_II_Music_Voice measure 167 / measure 11]
    e''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    e''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    e''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    e''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    e''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    e''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 168 / measure 12]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \stopTrillSpan

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 168 / measure 12]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


r_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \r_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \r_Contrabass_II_Music_Voice

>>
