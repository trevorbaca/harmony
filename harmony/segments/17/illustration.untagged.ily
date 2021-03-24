q_Global_Skips = {

    % [17 Global_Skips measure 151 / measure 1]
    \time 6/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 3/2
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "Q" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "Q" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[Q.1]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [17 Global_Skips measure 152 / measure 2]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶S.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #3 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [17 Global_Skips measure 153 / measure 3]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [17 Global_Skips measure 154 / measure 4]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀O.4]" #darkgreen
    \bacaStartTextSpanSNM

    % [17 Global_Skips measure 155 / measure 5]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[Q.2]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [17 Global_Skips measure 156 / measure 6]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-sixteen
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [17 Global_Skips measure 157 / measure 7]
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


q_Global_Rests = {

    % [17 Global_Rests measure 151 / measure 1]
    R1 * 3/2

    % [17 Global_Rests measure 152 / measure 2]
    R1 * 1

    % [17 Global_Rests measure 153 / measure 3]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-short-fermata-markup

    % [17 Global_Rests measure 154 / measure 4]
    R1 * 3/4

    % [17 Global_Rests measure 155 / measure 5]
    R1 * 5/4

    % [17 Global_Rests measure 156 / measure 6]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [17 Global_Rests measure 157 / measure 7]
    R1 * 1/4

}


q_Bass_Flute_Music_Voice = {

    % [17 Bass_Flute_Music_Voice measure 151 / measure 1]
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
    d'''4
    - \tweak color #(x11-color 'green4)
    \baca-p-ancora
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    d'''4

    r1
    \stopTextSpan
    \bacaStopTextSpanMetricModulation

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9 {

        % [17 Bass_Flute_Music_Voice measure 152 / measure 2]
        r32

        \override NoteHead.font-size = -3
        \override Accidental.font-size = -3
        \override Accidental.X-offset = 0
        \override Accidental.Y-offset = -2
        as'!32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        [
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        - \tweak staff-padding 8
        \startTrillSpan

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

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [17 Bass_Flute_Music_Voice measure 153 / measure 3]
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

            % [17 Bass_Flute_Rest_Voice measure 153 / measure 3]
            R1 * 1/4

        }

    >>

    % [17 Bass_Flute_Music_Voice measure 154 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    r4

    fs'''!2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak bound-details.right.padding 2
    \startTrillSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 9
    \bacaStartTextSpanMetricModulation

    % [17 Bass_Flute_Music_Voice measure 155 / measure 5]
    fs'''!4

    r1
    \stopTrillSpan
    \bacaStopTextSpanMetricModulation
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [17 Bass_Flute_Music_Voice measure 156 / measure 6]
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

            % [17 Bass_Flute_Rest_Voice measure 156 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [17 Bass_Flute_Music_Voice measure 157 / measure 7]
            \abjad-invisible-music-coloring
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t
            R1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [17 Bass_Flute_Rest_Voice measure 157 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


q_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \q_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \q_Bass_Flute_Music_Voice

>>


q_Percussion_I_Music_Voice_A = {

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


q_Percussion_I_Music_Voice = {

    % [17 Percussion_I_Music_Voice measure 151 / measure 1]
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
    e'1.
    - \tweak color #(x11-color 'blue)
    \f
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [17 Percussion_I_Music_Voice measure 152 / measure 2]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    \override DynamicLineSpanner.staff-padding = 5
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
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
        \q_Percussion_I_Music_Voice_A

    >>

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [17 Percussion_I_Music_Voice measure 153 / measure 3]
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

            % [17 Percussion_I_Rest_Voice measure 153 / measure 3]
            R1 * 1/4

        }

    >>

    % [17 Percussion_I_Music_Voice measure 154 / measure 4]
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
    \once \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    d'2.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup

    % [17 Percussion_I_Music_Voice measure 155 / measure 5]
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
    r1
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    e'4
    - \tweak color #(x11-color 'blue)
    \f
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [17 Percussion_I_Music_Voice measure 156 / measure 6]
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

            % [17 Percussion_I_Rest_Voice measure 156 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [17 Percussion_I_Music_Voice measure 157 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [17 Percussion_I_Rest_Voice measure 157 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


q_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \q_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \q_Percussion_I_Music_Voice

>>


q_Percussion_II_Music_Voice_A = {

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


q_Percussion_II_Music_Voice = {

    % [17 Percussion_II_Music_Voice measure 151 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
    \once \override DynamicLineSpanner.staff-padding = 6
    \once \override LaissezVibrerTie.direction = #up
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    c'1.
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [17 Percussion_II_Music_Voice measure 152 / measure 2]
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
        \q_Percussion_II_Music_Voice_A

    >>

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [17 Percussion_II_Music_Voice measure 153 / measure 3]
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

            % [17 Percussion_II_Rest_Voice measure 153 / measure 3]
            R1 * 1/4

        }

    >>

    % [17 Percussion_II_Music_Voice measure 154 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    R1 * 3/4

    % [17 Percussion_II_Music_Voice measure 155 / measure 5]
    \override TupletBracket.direction = #up
    r1

    \once \override Stem.direction = #down
    c'4
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [17 Percussion_II_Music_Voice measure 156 / measure 6]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [17 Percussion_II_Rest_Voice measure 156 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [17 Percussion_II_Music_Voice measure 157 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [17 Percussion_II_Rest_Voice measure 157 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


q_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \q_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \q_Percussion_II_Music_Voice

>>


q_Harp_Music_Voice = {

    % [17 Harp_Music_Voice measure 151 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \ottava -1
    \once \override Staff.OttavaBracket.staff-padding = 8
    \once \override DynamicLineSpanner.staff-padding = 5
    \override Staff.OttavaBracket.staff-padding = 8
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    df,,!1.
    - \tweak color #(x11-color 'blue)
    \f
    \laissezVibrer
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
    \ottava 0

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [17 Harp_Music_Voice measure 152 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [17 Harp_Rest_Voice measure 152 / measure 2]
            R1 * 1

        }

    >>

    % [17 Harp_Music_Voice measure 153 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
    \override Staff.BarLine.bar-extent = #'(0 . 2)

    % [17 Harp_Music_Voice measure 154 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r8

        <b' c''>4
        - \tweak color #(x11-color 'blue)
        \baca-f-ancora
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup
        \revert DynamicLineSpanner.staff-padding

    }

    % [17 Harp_Music_Voice measure 155 / measure 5]
    \override Staff.OttavaBracket.staff-padding = 8
    \override DynamicLineSpanner.staff-padding = 5
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r1
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \ottava -1
    df,,!4
    - \tweak color #(x11-color 'DeepPink1)
    \baca-f-ancora
    \laissezVibrer
    \ottava 0
    \revert Staff.OttavaBracket.staff-padding
    \revert DynamicLineSpanner.staff-padding
    \revert Staff.OttavaBracket.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [17 Harp_Music_Voice measure 156 / measure 6]
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

            % [17 Harp_Rest_Voice measure 156 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [17 Harp_Music_Voice measure 157 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [17 Harp_Rest_Voice measure 157 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


q_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \q_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \q_Harp_Music_Voice

>>


q_Viola_Music_Voice = {

    % [17 Viola_Music_Voice measure 151 / measure 1]
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
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    d'1.
    - \tweak color #(x11-color 'green4)
    \pp
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "poco scr."
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [17 Viola_Music_Voice measure 152 / measure 2]
    \override NoteColumn.glissando-skip = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    \revert Dots.transparent
    \revert Stem.transparent
    d'1

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [17 Viola_Music_Voice measure 153 / measure 3]
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

            % [17 Viola_Rest_Voice measure 153 / measure 3]
            R1 * 1/4

        }

    >>

    % [17 Viola_Music_Voice measure 154 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    f'2.
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    % [17 Viola_Music_Voice measure 155 / measure 5]
    d'2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \bacaStopTextSpanBowSpeed
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "poco scr."
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    - \tweak stencil ##f
    ~

    d'2
    \repeatTie
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [17 Viola_Music_Voice measure 156 / measure 6]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \bacaStopTextSpanBowSpeed
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [17 Viola_Rest_Voice measure 156 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [17 Viola_Music_Voice measure 157 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [17 Viola_Rest_Voice measure 157 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


q_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \q_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \q_Viola_Music_Voice

>>


q_Cello_I_Music_Voice = {

    % [17 Cello_I_Music_Voice measure 151 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

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

    % [17 Cello_I_Music_Voice measure 152 / measure 2]
    \override NoteHead.style = #'harmonic
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <gs''! a'' bf''!>4 * 1/2
    :32
    ^ \baca-quasi-bisb-markup
    - \tweak staff-padding 1.5
    _ \baca-string-i-markup
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

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [17 Cello_I_Music_Voice measure 153 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [17 Cello_I_Rest_Voice measure 153 / measure 3]
            R1 * 1/4

        }

    >>

    % [17 Cello_I_Music_Voice measure 154 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    a,2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    a,8.
    - \tweak color #(x11-color 'blue)
    \baca-fff-scratch
    \repeatTie

    r16
    - \baca-stop-on-string

    % [17 Cello_I_Music_Voice measure 155 / measure 5]
    e4
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
    - \tweak stencil ##f
    ~

    e16
    \repeatTie
    [

    e8.
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    e8.
    \repeatTie
    [

    e16
    - \baca-staccati #3
    ~
    ]

    e8.
    [

    e16
    - \baca-staccati #3
    ~
    ]

    e16
    [

    e8.
    - \baca-staccati #3
    \bacaStopTextSpanSCP
    ]
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [17 Cello_I_Music_Voice measure 156 / measure 6]
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

            % [17 Cello_I_Rest_Voice measure 156 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [17 Cello_I_Music_Voice measure 157 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [17 Cello_I_Rest_Voice measure 157 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


q_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \q_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \q_Cello_I_Music_Voice

>>


q_Cello_II_Music_Voice = {

    % [17 Cello_II_Music_Voice measure 151 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

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

    % [17 Cello_II_Music_Voice measure 152 / measure 2]
    \override NoteHead.style = #'harmonic
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <a'' bf''! cf'''!>4 * 1/2
    :32
    ^ \baca-quasi-bisb-markup
    - \tweak staff-padding 1.5
    _ \baca-string-i-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [17 Cello_II_Music_Voice measure 153 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [17 Cello_II_Rest_Voice measure 153 / measure 3]
            R1 * 1/4

        }

    >>

    % [17 Cello_II_Music_Voice measure 154 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    g,2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    g,8.
    - \tweak color #(x11-color 'blue)
    \baca-fff-scratch
    \repeatTie

    r16
    - \baca-stop-on-string

    % [17 Cello_II_Music_Voice measure 155 / measure 5]
    d4
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
    - \tweak stencil ##f
    ~

    d8
    \repeatTie
    [

    d8
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    d4
    \repeatTie
    - \tweak stencil ##f
    ~

    d8
    \repeatTie
    [

    d8
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    d8
    \repeatTie
    [

    d8
    - \baca-staccati #3
    \bacaStopTextSpanSCP
    ]
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [17 Cello_II_Music_Voice measure 156 / measure 6]
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

            % [17 Cello_II_Rest_Voice measure 156 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [17 Cello_II_Music_Voice measure 157 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [17 Cello_II_Rest_Voice measure 157 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


q_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \q_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \q_Cello_II_Music_Voice

>>


q_Contrabass_I_Music_Voice = {

    % [17 Contrabass_I_Music_Voice measure 151 / measure 1]
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
    r2.
    - \tweak color #(x11-color 'green4)
    \ppp
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

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

    % [17 Contrabass_I_Music_Voice measure 152 / measure 2]
    \override NoteHead.style = #'harmonic
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <b'' c''' df'''!>4 * 1/2
    :32
    ^ \baca-quasi-bisb-markup
    - \tweak staff-padding 1.5
    _ \baca-string-iii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [17 Contrabass_I_Music_Voice measure 153 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [17 Contrabass_I_Rest_Voice measure 153 / measure 3]
            R1 * 1/4

        }

    >>

    % [17 Contrabass_I_Music_Voice measure 154 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    gs,!2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    gs,8.
    - \tweak color #(x11-color 'blue)
    \baca-fff-scratch
    \repeatTie

    r16
    - \baca-stop-on-string

    % [17 Contrabass_I_Music_Voice measure 155 / measure 5]
    e'16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-staccati #3
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    [
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P4"
    - \baca-text-spanner-right-text "T4"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    e'8.
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    e'4
    \repeatTie

    e'2
    - \baca-staccati #3

    e'4
    - \baca-staccati #3
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [17 Contrabass_I_Music_Voice measure 156 / measure 6]
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

            % [17 Contrabass_I_Rest_Voice measure 156 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [17 Contrabass_I_Music_Voice measure 157 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [17 Contrabass_I_Rest_Voice measure 157 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


q_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \q_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \q_Contrabass_I_Music_Voice

>>


q_Contrabass_II_Music_Voice = {

    % [17 Contrabass_II_Music_Voice measure 151 / measure 1]
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
    d'8.
    - \tweak color #(x11-color 'blue)
    \p
    - \baca-staccati #3
    - \tweak color #(x11-color 'blue)
    \<
    [
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T4"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

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

    % [17 Contrabass_II_Music_Voice measure 152 / measure 2]
    \override NoteHead.style = #'harmonic
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <as''! b'' c'''>4 * 1/2
    :32
    ^ \baca-quasi-bisb-markup
    - \tweak staff-padding 1.5
    _ \baca-string-iii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [17 Contrabass_II_Music_Voice measure 153 / measure 3]
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

            % [17 Contrabass_II_Rest_Voice measure 153 / measure 3]
            R1 * 1/4

        }

    >>

    % [17 Contrabass_II_Music_Voice measure 154 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    fs,!2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    fs,8.
    - \tweak color #(x11-color 'blue)
    \baca-fff-scratch
    \repeatTie

    r16
    - \baca-stop-on-string

    % [17 Contrabass_II_Music_Voice measure 155 / measure 5]
    d'4
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
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie
    [

    d'8.
    - \baca-staccati #3
    ]
    - \tweak stencil ##f
    ~

    d'4
    \repeatTie

    d'2
    - \baca-staccati #3
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [17 Contrabass_II_Music_Voice measure 156 / measure 6]
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

            % [17 Contrabass_II_Rest_Voice measure 156 / measure 6]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [17 Contrabass_II_Music_Voice measure 157 / measure 7]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [17 Contrabass_II_Rest_Voice measure 157 / measure 7]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


q_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \q_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \q_Contrabass_II_Music_Voice

>>
