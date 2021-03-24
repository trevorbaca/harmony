w_Global_Skips = {

    % [23 Global_Skips measure 209 / measure 1]
    \time 5/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 5/4
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "W" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "W" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[W.1]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [23 Global_Skips measure 210 / measure 2]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶Y.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [23 Global_Skips measure 211 / measure 3]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [23 Global_Skips measure 212 / measure 4]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[W.2-3]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [23 Global_Skips measure 213 / measure 5]
    s1 * 5/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [23 Global_Skips measure 214 / measure 6]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[W.4]"
    \bacaStartTextSpanSNM

    % [23 Global_Skips measure 215 / measure 7]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀V.6]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [23 Global_Skips measure 216 / measure 8]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀T.3]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"144" #3 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [23 Global_Skips measure 217 / measure 9]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


w_Global_Rests = {

    % [23 Global_Rests measure 209 / measure 1]
    R1 * 5/4

    % [23 Global_Rests measure 210 / measure 2]
    R1 * 3/2

    % [23 Global_Rests measure 211 / measure 3]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [23 Global_Rests measure 212 / measure 4]
    R1 * 5/4

    % [23 Global_Rests measure 213 / measure 5]
    R1 * 5/4

    % [23 Global_Rests measure 214 / measure 6]
    R1 * 3/2

    % [23 Global_Rests measure 215 / measure 7]
    R1 * 3/4

    % [23 Global_Rests measure 216 / measure 8]
    R1 * 1

    % [23 Global_Rests measure 217 / measure 9]
    R1 * 1/4

}


w_Bass_Flute_Music_Voice = {

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [23 Bass_Flute_Music_Voice measure 209 / measure 1]
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
            b'1 * 5/4
            - \tweak color #(x11-color 'green4)
            \pp
            \set Staff.shortInstrumentName = \harmony-bfl-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [23 Bass_Flute_Rest_Voice measure 209 / measure 1]
            R1 * 5/4

        }

    >>

    % [23 Bass_Flute_Music_Voice measure 210 / measure 2]
    r2

    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 8/9 {

        r32

        \override NoteHead.font-size = -3
        \override Accidental.font-size = -3
        \override Accidental.X-offset = 0
        \override Accidental.Y-offset = -2
        cs''!32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        [
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        \startTrillSpan

        c''32

        b'32

        bf'!32

        a'32

        af'!32

        g'32

        gs'!32

        a'32
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>

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
        \revert NoteHead.font-size
        \revert Accidental.font-size
        \revert Accidental.X-offset
        \revert Accidental.Y-offset

    }

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [23 Bass_Flute_Music_Voice measure 211 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \stopTrillSpan
            \override Staff.BarLine.bar-extent = #'(0 . 0)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [23 Bass_Flute_Rest_Voice measure 211 / measure 3]
            R1 * 1/4

        }

    >>

    % [23 Bass_Flute_Music_Voice measure 212 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    <b' dqf''!>4
    - \tweak color #(x11-color 'blue)
    \mp
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    <b' dqf''!>4
    - \espressivo

    % [23 Bass_Flute_Music_Voice measure 213 / measure 5]
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

    % [23 Bass_Flute_Music_Voice measure 214 / measure 6]
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

    <b' dqf''!>4
    - \espressivo

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [23 Bass_Flute_Music_Voice measure 215 / measure 7]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [23 Bass_Flute_Rest_Voice measure 215 / measure 7]
            R1 * 3/4

        }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        % [23 Bass_Flute_Music_Voice measure 216 / measure 8]
        r4

        ef'!16
        - \tweak color #(x11-color 'blue)
        \pp
        ~
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-markup \baca-covered-markup
        - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanCovered

    }

    ef'4
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        ef'8
        \repeatTie

        r8.

    }

    r4
    \bacaStopTextSpanCovered
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [23 Bass_Flute_Music_Voice measure 217 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [23 Bass_Flute_Rest_Voice measure 217 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


w_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \w_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \w_Bass_Flute_Music_Voice

>>


w_Percussion_I_Music_Voice = {

    % [23 Percussion_I_Music_Voice measure 209 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-i-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    r1
    - \tweak color #(x11-color 'green4)
    \baca-pp-ancora
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \once \override Stem.direction = #down
    b4
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-bd-struck-markup
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [23 Percussion_I_Music_Voice measure 210 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 3/2

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [23 Percussion_I_Rest_Voice measure 210 / measure 2]
            R1 * 3/2

        }

    >>

    % [23 Percussion_I_Music_Voice measure 211 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    % [23 Percussion_I_Music_Voice measure 212 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    b4
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-mp-ancora
    \laissezVibrer

    r1

    % [23 Percussion_I_Music_Voice measure 213 / measure 5]
    b4
    \laissezVibrer

    r1

    % [23 Percussion_I_Music_Voice measure 214 / measure 6]
    b4
    \laissezVibrer
    \revert Stem.direction

    r1

    r4
    \revert TupletBracket.direction

    % [23 Percussion_I_Music_Voice measure 215 / measure 7]
    \once \override Stem.direction = #up
    d'2.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak staff-padding 7
    ^ \baca-triangle-markup

    % [23 Percussion_I_Music_Voice measure 216 / measure 8]
    \override TupletBracket.direction = #up
    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r8

        \override Stem.direction = #down
        d'4
        - \tweak color #(x11-color 'blue)
        - \tweak self-alignment-X -0.9
        \baca-pp-ancora
        - \tweak staff-padding 7
        ^ \baca-slate-scrape-markup
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        d'4
        \repeatTie
        \revert Stem.direction

        r8

    }

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [23 Percussion_I_Music_Voice measure 217 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [23 Percussion_I_Rest_Voice measure 217 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


w_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \w_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \w_Percussion_I_Music_Voice

>>


w_Percussion_II_Music_Voice = {

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [23 Percussion_II_Music_Voice measure 209 / measure 1]
            \set Staff.shortInstrumentName = \harmony-perc-ii-markup
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 1
            \startStaff
            \set Staff.instrumentName = \harmony-perc-ii-markup
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            \clef "percussion"
            \once \override Staff.Clef.color = #(x11-color 'green4)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
            c'1 * 5/4
            - \tweak color #(x11-color 'green4)
            \pp
            \set Staff.shortInstrumentName = \harmony-perc-ii-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [23 Percussion_II_Rest_Voice measure 209 / measure 1]
            R1 * 5/4

        }

    >>

    % [23 Percussion_II_Music_Voice measure 210 / measure 2]
    R1 * 3/2

    % [23 Percussion_II_Music_Voice measure 211 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4

    % [23 Percussion_II_Music_Voice measure 212 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    R1 * 5/4

    % [23 Percussion_II_Music_Voice measure 213 / measure 5]
    R1 * 5/4

    % [23 Percussion_II_Music_Voice measure 214 / measure 6]
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
    - \tweak self-alignment-X -0.9
    \baca-pp-ancora
    \laissezVibrer
    - \tweak staff-padding 6
    ^ \baca-glockenspiel-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r1

    r4
    \revert DynamicLineSpanner.staff-padding

    % [23 Percussion_II_Music_Voice measure 215 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \once \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    b4
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer
    - \tweak staff-padding 8
    ^ \baca-bd-struck-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2
    \revert TupletBracket.direction

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        % [23 Percussion_II_Music_Voice measure 216 / measure 8]
        \override TupletBracket.direction = #up
        r8

        \override Stem.direction = #down
        d'8
        :32
        - \tweak color #(x11-color 'blue)
        \pp
        - \accent
        - \tweak staff-padding 8
        ^ \baca-slate-brush-markup

        r16

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        r8

        d'8
        :32
        - \accent
        \revert Stem.direction

        r16

    }

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [23 Percussion_II_Music_Voice measure 217 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [23 Percussion_II_Rest_Voice measure 217 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


w_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \w_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \w_Percussion_II_Music_Voice

>>


w_Harp_Music_Voice = {

    % [23 Harp_Music_Voice measure 209 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    fs'!4
    - \tweak color #(x11-color 'green4)
    \baca-p-ancora
    \laissezVibrer
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r1
    \bacaStopTextSpanMetricModulation

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [23 Harp_Music_Voice measure 210 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/2

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [23 Harp_Rest_Voice measure 210 / measure 2]
            R1 * 3/2

        }

    >>

    % [23 Harp_Music_Voice measure 211 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
    \override Staff.BarLine.bar-extent = #'(0 . 2)

    % [23 Harp_Music_Voice measure 212 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    R1 * 5/4

    % [23 Harp_Music_Voice measure 213 / measure 5]
    R1 * 5/4

    % [23 Harp_Music_Voice measure 214 / measure 6]
    e'4
    - \tweak color #(x11-color 'blue)
    \f
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-xyl-markup

    r1

    r4

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [23 Harp_Music_Voice measure 215 / measure 7]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [23 Harp_Rest_Voice measure 215 / measure 7]
            R1 * 3/4

        }

    >>

    % [23 Harp_Music_Voice measure 216 / measure 8]
    R1 * 1

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [23 Harp_Music_Voice measure 217 / measure 9]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [23 Harp_Rest_Voice measure 217 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


w_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \w_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \w_Harp_Music_Voice

>>


w_Viola_Music_Voice = {

    % [23 Viola_Music_Voice measure 209 / measure 1]
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
    e4
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-staccati #3
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r1
    \bacaStopTextSpanSCP

    % [23 Viola_Music_Voice measure 210 / measure 2]
    \once \override NoteHead.style = #'harmonic-black
    <g' af'! bf'!>1.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [23 Viola_Music_Voice measure 211 / measure 3]
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

            % [23 Viola_Rest_Voice measure 211 / measure 3]
            R1 * 1/4

        }

    >>

    % [23 Viola_Music_Voice measure 212 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    e4
    - \tweak color #(x11-color 'blue)
    \p
    - \baca-staccati #3
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    e4
    - \baca-staccati #3

    e4
    - \baca-staccati #3

    e4
    - \baca-staccati #3

    e4
    - \baca-staccati #3

    % [23 Viola_Music_Voice measure 213 / measure 5]
    e4
    - \baca-staccati #3

    e4
    - \baca-staccati #3

    e4
    - \baca-staccati #3

    e4
    - \baca-staccati #3

    e4
    - \baca-staccati #3

    % [23 Viola_Music_Voice measure 214 / measure 6]
    e4
    - \baca-staccati #3
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P"
    - \baca-text-spanner-right-text "T"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    e4
    - \baca-staccati #3

    e4
    - \baca-staccati #3

    e4
    - \baca-staccati #3

    e4
    - \baca-staccati #3

    e4
    - \baca-staccati #3
    \bacaStopTextSpanSCP

    % [23 Viola_Music_Voice measure 215 / measure 7]
    \afterGrace
    d'2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T2"
    - \baca-text-spanner-right-text "T4"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        cs'!8
        - \tweak color #(x11-color 'blue)
        \!
        \bacaStopTextSpanSCP
        \revert DynamicLineSpanner.staff-padding

    }


    % [23 Viola_Music_Voice measure 216 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        \override Stem.direction = #down
        c'8
        :32
        - \tweak color #(x11-color 'blue)
        \pp
        - \accent

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        c'8
        :32
        - \accent
        \revert Stem.direction

        r4

    }

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [23 Viola_Music_Voice measure 217 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [23 Viola_Rest_Voice measure 217 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


w_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \w_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \w_Viola_Music_Voice

>>


w_Cello_I_Music_Voice = {

    % [23 Cello_I_Music_Voice measure 209 / measure 1]
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
    e,4
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-staccati #3
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r1
    \bacaStopTextSpanSCP

    % [23 Cello_I_Music_Voice measure 210 / measure 2]
    \once \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <a' b' c''>1.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [23 Cello_I_Music_Voice measure 211 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [23 Cello_I_Rest_Voice measure 211 / measure 3]
            R1 * 1/4

        }

    >>

    % [23 Cello_I_Music_Voice measure 212 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    e,4
    - \tweak color #(x11-color 'blue)
    \p
    - \baca-staccati #3
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "P"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    e,4
    - \baca-staccati #3

    e,4
    - \baca-staccati #3

    e,4
    - \baca-staccati #3

    e,4
    - \baca-staccati #3

    % [23 Cello_I_Music_Voice measure 213 / measure 5]
    e,4
    - \baca-staccati #3

    e,4
    - \baca-staccati #3

    e,4
    - \baca-staccati #3

    e,4
    - \baca-staccati #3

    e,4
    - \baca-staccati #3
    \bacaStopTextSpanSCP

    % [23 Cello_I_Music_Voice measure 214 / measure 6]
    \override TupletBracket.direction = #down
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/3 {

        e,4
        - \baca-staccati #3
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanMetricModulation
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "T"
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP

        e,4
        - \baca-staccati #3

        e,4
        - \baca-staccati #3

    }

    % [23 Cello_I_Music_Voice measure 215 / measure 7]
    e,4
    - \baca-staccati #3
    \bacaStopTextSpanSCP
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    e,4
    - \baca-staccati #3

    e,4
    - \baca-staccati #3
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    % [23 Cello_I_Music_Voice measure 216 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    \bacaStopTextSpanMetricModulation
    \bacaStopTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        r8

        \override Stem.direction = #down
        c'8.
        :32
        - \tweak color #(x11-color 'blue)
        \pp
        - \accent

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        r8

        c'8.
        :32
        - \accent
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [23 Cello_I_Music_Voice measure 217 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [23 Cello_I_Rest_Voice measure 217 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


w_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \w_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \w_Cello_I_Music_Voice

>>


w_Cello_II_Music_Voice = {

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [23 Cello_II_Music_Voice measure 209 / measure 1]
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
        dqf!1
        - \tweak color #(x11-color 'blue)
        \p
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "poco scr."
        - \tweak bound-details.right.padding 5
        - \tweak staff-padding 3
        \bacaStartTextSpanBowSpeed
        \set Staff.shortInstrumentName = \harmony-vc-ii-markup
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    }

    % [23 Cello_II_Music_Voice measure 210 / measure 2]
    \once \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <g' af'! bf'!>1.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    \bacaStopTextSpanBowSpeed
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [23 Cello_II_Music_Voice measure 211 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [23 Cello_II_Rest_Voice measure 211 / measure 3]
            R1 * 1/4

        }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4 {

        % [23 Cello_II_Music_Voice measure 212 / measure 4]
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        \once \override Staff.Clef.X-extent = ##f
        \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
        \clef "bass"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        dqf!1
        - \tweak color #(x11-color 'blue)
        \p
        \glissando
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "poco scr."
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 3
        \bacaStartTextSpanBowSpeed
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    }

    % [23 Cello_II_Music_Voice measure 213 / measure 5]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    dqf!2.

    dqf!2

    % [23 Cello_II_Music_Voice measure 214 / measure 6]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    \revert Dots.transparent
    \revert Stem.transparent
    dqf!1.

    % [23 Cello_II_Music_Voice measure 215 / measure 7]
    \afterGrace
    d2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \bacaStopTextSpanBowSpeed
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T2"
    - \baca-text-spanner-right-text "T4"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        cs!8
        - \tweak color #(x11-color 'blue)
        \!
        \bacaStopTextSpanSCP
        \revert DynamicLineSpanner.staff-padding

    }


    % [23 Cello_II_Music_Voice measure 216 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r2
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        \override Stem.direction = #down
        c'8.
        :32
        - \tweak color #(x11-color 'blue)
        \pp
        - \accent

        r8

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        r8.

        c'8
        :32
        - \accent
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [23 Cello_II_Music_Voice measure 217 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [23 Cello_II_Rest_Voice measure 217 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


w_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \w_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \w_Cello_II_Music_Voice

>>


w_Contrabass_I_Music_Voice = {

    % [23 Contrabass_I_Music_Voice measure 209 / measure 1]
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
    e,4
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-staccati #3
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r1
    \bacaStopTextSpanSCP

    % [23 Contrabass_I_Music_Voice measure 210 / measure 2]
    \once \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <a' b' c''>1.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [23 Contrabass_I_Music_Voice measure 211 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [23 Contrabass_I_Rest_Voice measure 211 / measure 3]
            R1 * 1/4

        }

    >>

    % [23 Contrabass_I_Music_Voice measure 212 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    R1 * 5/4
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [23 Contrabass_I_Music_Voice measure 213 / measure 5]
    R1 * 5/4

    % [23 Contrabass_I_Music_Voice measure 214 / measure 6]
    \override TupletBracket.direction = #down
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/3 {

        e,4
        - \tweak color #(x11-color 'blue)
        \p
        - \baca-staccati #3
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanMetricModulation
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "T"
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP

        e,4
        - \baca-staccati #3

        e,4
        - \baca-staccati #3

    }

    % [23 Contrabass_I_Music_Voice measure 215 / measure 7]
    e,4
    - \baca-staccati #3
    \bacaStopTextSpanSCP
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    e,4
    - \baca-staccati #3

    e,4
    - \baca-staccati #3
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    % [23 Contrabass_I_Music_Voice measure 216 / measure 8]
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
    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    \bacaStopTextSpanMetricModulation
    \bacaStopTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8.

    r2

    r8.

    c'16
    :32
    - \accent
    \revert Stem.direction
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [23 Contrabass_I_Music_Voice measure 217 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [23 Contrabass_I_Rest_Voice measure 217 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


w_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \w_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \w_Contrabass_I_Music_Voice

>>


w_Contrabass_II_Music_Voice = {

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [23 Contrabass_II_Music_Voice measure 209 / measure 1]
            \set Staff.shortInstrumentName = \harmony-cb-ii-markup
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \set Staff.instrumentName = \harmony-cb-ii-markup
            \abjad-invisible-music-coloring
            \override DynamicLineSpanner.staff-padding = 4
            \baca-not-yet-pitched-coloring
        %%% \once \override Staff.Clef.X-extent = ##f
        %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
            \clef "treble"
            \once \override Staff.Clef.color = #(x11-color 'blue)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            b'1 * 5/4
            - \tweak color #(x11-color 'green4)
            \pp
            \set Staff.shortInstrumentName = \harmony-cb-ii-markup
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [23 Contrabass_II_Rest_Voice measure 209 / measure 1]
            R1 * 5/4

        }

    >>

    % [23 Contrabass_II_Music_Voice measure 210 / measure 2]
    \once \override NoteHead.style = #'harmonic-black
    <g' af'! bf'!>1.
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-pp-ancora
    ^ \baca-quasi-bisb-markup

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [23 Contrabass_II_Music_Voice measure 211 / measure 3]
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

            % [23 Contrabass_II_Rest_Voice measure 211 / measure 3]
            R1 * 1/4

        }

    >>

    % [23 Contrabass_II_Music_Voice measure 212 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    R1 * 5/4

    % [23 Contrabass_II_Music_Voice measure 213 / measure 5]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    e,4
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \baca-text-spanner-right-text "T1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    e,4

    e,4

    e,4

    e,4

    % [23 Contrabass_II_Music_Voice measure 214 / measure 6]
    e,4

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

    % [23 Contrabass_II_Music_Voice measure 215 / measure 7]
    \afterGrace
    d2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T2"
    - \baca-text-spanner-right-text "T4"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        cs!8
        - \tweak color #(x11-color 'blue)
        \!
        \bacaStopTextSpanSCP
        \revert DynamicLineSpanner.staff-padding

    }


    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [23 Contrabass_II_Music_Voice measure 216 / measure 8]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [23 Contrabass_II_Rest_Voice measure 216 / measure 8]
            R1 * 1

        }

    >>

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [23 Contrabass_II_Music_Voice measure 217 / measure 9]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [23 Contrabass_II_Rest_Voice measure 217 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


w_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \w_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \w_Contrabass_II_Music_Voice

>>
