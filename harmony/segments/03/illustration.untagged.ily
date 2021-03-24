c_Global_Skips = {

    % [03 Global_Skips measure 16 / measure 1]
    \time 3/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 3/4
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "C" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "C" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[C.1]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [03 Global_Skips measure 17 / measure 2]
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶D.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [03 Global_Skips measure 18 / measure 3]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-two
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 19 / measure 4]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶F.3]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #2 #1 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [03 Global_Skips measure 20 / measure 5]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-three
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 21 / measure 6]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[C.2-4]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [03 Global_Skips measure 22 / measure 7]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 23 / measure 8]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 24 / measure 9]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


c_Global_Rests = {

    % [03 Global_Rests measure 16 / measure 1]
    R1 * 3/4

    % [03 Global_Rests measure 17 / measure 2]
    R1 * 3/4

    % [03 Global_Rests measure 18 / measure 3]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [03 Global_Rests measure 19 / measure 4]
    R1 * 5/4

    % [03 Global_Rests measure 20 / measure 5]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [03 Global_Rests measure 21 / measure 6]
    R1 * 5/4

    % [03 Global_Rests measure 22 / measure 7]
    R1 * 1

    % [03 Global_Rests measure 23 / measure 8]
    R1 * 3/4

    % [03 Global_Rests measure 24 / measure 9]
    R1 * 1/4

}


c_Bass_Flute_Music_Voice = {

    % [03 Bass_Flute_Music_Voice measure 16 / measure 1]
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
    r2
    - \tweak color #(x11-color 'green4)
    \p
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

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

    % [03 Bass_Flute_Music_Voice measure 17 / measure 2]
    fs'!16
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    \bacaStopTextSpanCovered

    r16

    fs'!8
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    - \tweak stencil ##f
    ~

    fs'2
    \repeatTie

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [03 Bass_Flute_Music_Voice measure 18 / measure 3]
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

            % [03 Bass_Flute_Rest_Voice measure 18 / measure 3]
            R1 * 1/4

        }

    >>

    % [03 Bass_Flute_Music_Voice measure 19 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    R1 * 5/4

    % [03 Bass_Flute_Music_Voice measure 20 / measure 5]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
    \override Staff.BarLine.bar-extent = #'(0 . 0)

    % [03 Bass_Flute_Music_Voice measure 21 / measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t
    f'16
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.75
    \baca-mf-sempre
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-covered-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered

    r8.

    r4

    r8

    f'16

    r16

    r4

    r8.

    f'16

    % [03 Bass_Flute_Music_Voice measure 22 / measure 7]
    r4

    r8.

    f'16

    r4

    r8

    f'16

    r16

    % [03 Bass_Flute_Music_Voice measure 23 / measure 8]
    r4

    f'16

    r8.

    r16

    f'16

    r8
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [03 Bass_Flute_Music_Voice measure 24 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanCovered

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [03 Bass_Flute_Rest_Voice measure 24 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


c_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \c_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \c_Bass_Flute_Music_Voice

>>


c_Percussion_I_Music_Voice = {

    % [03 Percussion_I_Music_Voice measure 16 / measure 1]
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
    r2
    - \tweak color #(x11-color 'green4)
    \f
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r8

        \override Stem.direction = #down
        c'8
        - \tweak color #(x11-color 'blue)
        \f
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

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        % [03 Percussion_I_Music_Voice measure 17 / measure 2]
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 0.5
        r8

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
    \times 4/5 {

        r8

        c'8
        [

        a8

        c'8

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

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [03 Percussion_I_Music_Voice measure 18 / measure 3]
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

            % [03 Percussion_I_Rest_Voice measure 18 / measure 3]
            R1 * 1/4

        }

    >>

    % [03 Percussion_I_Music_Voice measure 19 / measure 4]
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r1

    r8.

    \once \override Stem.direction = #down
    b16
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak self-alignment-X 1
    - \tweak staff-padding 6
    ^ \baca-bd-superball-markup
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [03 Percussion_I_Music_Voice measure 20 / measure 5]
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

            % [03 Percussion_I_Rest_Voice measure 20 / measure 5]
            R1 * 1/4

        }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        % [03 Percussion_I_Music_Voice measure 21 / measure 6]
        \override Staff.BarLine.bar-extent = #'(-2 . 1)
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 3
        \startStaff
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 0.5
        \override DynamicLineSpanner.staff-padding = 5.5
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r8

        \override Stem.direction = #down
        c'8
        - \tweak color #(x11-color 'blue)
        \f
        - \tweak color #(x11-color 'blue)
        \>
        [

        c'8
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        r8

        a8
        [

        c'8

        a8

        c'16

        c'16
        - \tweak color #(x11-color 'blue)
        \p
        ]

    }

    r4

    r4

    % [03 Percussion_I_Music_Voice measure 22 / measure 7]
    r2

    r4

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        % [03 Percussion_I_Music_Voice measure 23 / measure 8]
        r16

        a8
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak color #(x11-color 'blue)
        \<
        [

        c'8

        a8

        c'8

        c'16
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r8

        a8
        [

        c'8
        - \tweak color #(x11-color 'blue)
        \f
        ]
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [03 Percussion_I_Music_Voice measure 24 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [03 Percussion_I_Rest_Voice measure 24 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


c_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \c_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \c_Percussion_I_Music_Voice

>>


c_Percussion_II_Music_Voice = {

    % [03 Percussion_II_Music_Voice measure 16 / measure 1]
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
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    - \tweak color #(x11-color 'green4)
    \mf
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/7 {

        r8

        r8

        r8

        r8

        \override Stem.direction = #down
        c'8
        - \tweak color #(x11-color 'blue)
        \f
        - \tweak self-alignment-X 0.25
        - \tweak staff-padding 5
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

    }

    % [03 Percussion_II_Music_Voice measure 17 / measure 2]
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    r8

    \override Stem.direction = #down
    c'8
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/7 {

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
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [03 Percussion_II_Music_Voice measure 18 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [03 Percussion_II_Rest_Voice measure 18 / measure 3]
            R1 * 1/4

        }

    >>

    % [03 Percussion_II_Music_Voice measure 19 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override DynamicLineSpanner.staff-padding = 5
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r1

    r8.

    \once \override Stem.direction = #up
    c'16
    - \tweak color #(x11-color 'blue)
    \mf
    - \baca-damp
    - \tweak self-alignment-X 1
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [03 Percussion_II_Music_Voice measure 20 / measure 5]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [03 Percussion_II_Rest_Voice measure 20 / measure 5]
            R1 * 1/4

        }

    >>

    % [03 Percussion_II_Music_Voice measure 21 / measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    \override DynamicLineSpanner.staff-padding = 5.5
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
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

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/7 {

        r8

        c'8
        [

        a8

        c'8

        a8

        c'16

        c'8

        a16
        - \tweak color #(x11-color 'blue)
        \p
        ]

    }

    r4

    r2

    r8

    c'8

    r2

    % [03 Percussion_II_Music_Voice measure 23 / measure 8]
    r16

    a8
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
    [

    c'16
    ]

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/7 {

        r16

        c'16
        [

        a8

        c'8

        a8

        c'8

        c'8

        a8
        - \tweak color #(x11-color 'blue)
        \f
        ]
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [03 Percussion_II_Music_Voice measure 24 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [03 Percussion_II_Rest_Voice measure 24 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


c_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \c_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \c_Percussion_II_Music_Voice

>>


c_Harp_Music_Voice = {

    % [03 Harp_Music_Voice measure 16 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \override DynamicLineSpanner.staff-padding = 6
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    g,,2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    g,,8
    \repeatTie

    r8
    - \baca-damp
    \revert DynamicLineSpanner.staff-padding

    % [03 Harp_Music_Voice measure 17 / measure 2]
    \override DynamicLineSpanner.staff-padding = 5
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    cs'!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \tweak stencil ##f
    ~
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
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [03 Harp_Music_Voice measure 18 / measure 3]
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

            % [03 Harp_Rest_Voice measure 18 / measure 3]
            R1 * 1/4

        }

    >>

    % [03 Harp_Music_Voice measure 19 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override DynamicLineSpanner.staff-padding = 4
    r8

    fs'!8
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-pdlt-markup

    r2.

    r8

    gs'!8
    \laissezVibrer
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [03 Harp_Music_Voice measure 20 / measure 5]
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

            % [03 Harp_Rest_Voice measure 20 / measure 5]
            R1 * 1/4

        }

    >>

    % [03 Harp_Music_Voice measure 21 / measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    g,,1
    - \tweak color #(x11-color 'DeepPink1)
    \f
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    g,,8
    \repeatTie

    r8
    - \baca-damp

    % [03 Harp_Music_Voice measure 22 / measure 7]
    r2

    r8

    g,,8
    - \tweak color #(x11-color 'DeepPink1)
    \f
    - \tweak stencil ##f
    ~

    g,,4
    \repeatTie
    - \tweak stencil ##f
    ~

    % [03 Harp_Music_Voice measure 23 / measure 8]
    g,,2
    \repeatTie
    - \tweak stencil ##f
    ~

    g,,8
    \repeatTie

    r8
    - \baca-damp

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [03 Harp_Music_Voice measure 24 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [03 Harp_Rest_Voice measure 24 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


c_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \c_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \c_Harp_Music_Voice

>>


c_Viola_Music_Voice = {

    % [03 Viola_Music_Voice measure 16 / measure 1]
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-va-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r4
    - \tweak color #(x11-color 'green4)
    \ff
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r4

        \once \override Stem.direction = #down
        c'16
        :32
        - \tweak color #(x11-color 'blue)
        - \tweak self-alignment-X -0.9
        \baca-effort-ff
        - \accent

        r16

    }

    r4
    \revert TupletBracket.direction

    % [03 Viola_Music_Voice measure 17 / measure 2]
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
    c'2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [03 Viola_Music_Voice measure 18 / measure 3]
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

            % [03 Viola_Rest_Voice measure 18 / measure 3]
            R1 * 1/4

        }

    >>

    % [03 Viola_Music_Voice measure 19 / measure 4]
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "alto"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r16
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    ef!16
    - \tweak color #(x11-color 'blue)
    \mp
    ~
    [
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "scr."
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    ef16
    ]

    r16
    \bacaStopTextSpanBowSpeed

    r1
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [03 Viola_Music_Voice measure 20 / measure 5]
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

            % [03 Viola_Rest_Voice measure 20 / measure 5]
            R1 * 1/4

        }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        % [03 Viola_Music_Voice measure 21 / measure 6]
        \override Staff.BarLine.bar-extent = #'(-2 . 0)
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
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

        r4

        r16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r4

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \baca-effort-f
        - \accent

        r16

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r16

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \mf
        - \accent

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r8.

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \mp
        - \accent

        r8

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        % [03 Viola_Music_Voice measure 22 / measure 7]
        r4

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \p
        - \accent

        r16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r4

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \pp
        - \accent

        r16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r8.

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \ppp
        - \accent

        r8

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r16

        c'16
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \ppp
        - \accent
        \revert Stem.direction

        r4

    }

    % [03 Viola_Music_Voice measure 23 / measure 8]
    r2.
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [03 Viola_Music_Voice measure 24 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [03 Viola_Rest_Voice measure 24 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


c_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \c_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \c_Viola_Music_Voice

>>


c_Cello_I_Music_Voice = {

    % [03 Cello_I_Music_Voice measure 16 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    - \tweak color #(x11-color 'green4)
    \ff
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \times 4/5 {

        \once \override TupletNumber.text = \markup { 5:4 }
        r8

        fs!8.
        - \tweak color #(x11-color 'blue)
        \mf
        - \accent
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-markup \baca-damp-markup
        - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 5.5
        \bacaStartTextSpanDamp
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation

        r16

        fs!8.
        - \accent

        r16
        \revert TupletBracket.direction

    }

    % [03 Cello_I_Music_Voice measure 17 / measure 2]
    fs!8.

    r16

    fs!4
    - \tweak color #(x11-color 'blue)
    \p
    \bacaStopTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    fs8
    \repeatTie

    r16

    fs!16
    - \tweak color #(x11-color 'blue)
    \mp

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [03 Cello_I_Music_Voice measure 18 / measure 3]
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

            % [03 Cello_I_Rest_Voice measure 18 / measure 3]
            R1 * 1/4

        }

    >>

    % [03 Cello_I_Music_Voice measure 19 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r16
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    e'16
    - \tweak color #(x11-color 'DeepPink1)
    \mp
    ~
    [
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "scr."
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    e'16
    ]

    r16
    \bacaStopTextSpanBowSpeed

    r1
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [03 Cello_I_Music_Voice measure 20 / measure 5]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [03 Cello_I_Rest_Voice measure 20 / measure 5]
            R1 * 1/4

        }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        % [03 Cello_I_Music_Voice measure 21 / measure 6]
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
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
        - \tweak self-alignment-X -0.9
        \baca-effort-ff
        - \accent
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        r4

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \baca-effort-f
        - \accent

        r4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        r4

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \mf
        - \accent

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        % [03 Cello_I_Music_Voice measure 22 / measure 7]
        r8

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \mp
        - \accent

        r8

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        r4

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \p
        - \accent

    }

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \pp
        - \accent

        r4

    }

    \times 4/5 {

        % [03 Cello_I_Music_Voice measure 23 / measure 8]
        \override TupletNumber.text = \markup { 5:4 }
        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \ppp
        - \accent

        r8.

        \once \override Flag.extra-offset = #'(-2 . 0)
        \once \override NoteHead.extra-offset = #'(-2 . 0)
        \once \override Script.extra-offset = #'(-2 . 0)
        \once \override Stem.extra-offset = #'(-2 . 0)
        \once \override StemTremolo.extra-offset = #'(-2 . 0)
        c'16
        :32
        - \tweak color #(x11-color 'DeepPink1)
        \ppp
        - \accent
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    \times 4/5 {

        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        \once \override Staff.Clef.extra-offset = #'(-2 . 0)
        \once \override Staff.Clef.X-extent = ##f
        \override TupletBracket.direction = #up
        \override DynamicLineSpanner.staff-padding = 4.5
        \clef "bass"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r8
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        fs!8.
        - \tweak color #(x11-color 'blue)
        \mf
        - \accent
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-markup \baca-damp-markup
        - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 5.5
        \bacaStartTextSpanDamp
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation

        r16

        fs!8.
        - \accent

        r16
        \revert TupletNumber.text
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [03 Cello_I_Music_Voice measure 24 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanDamp
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [03 Cello_I_Rest_Voice measure 24 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


c_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \c_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \c_Cello_I_Music_Voice

>>


c_Cello_II_Music_Voice = {

    % [03 Cello_II_Music_Voice measure 16 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    g,2
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
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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

    % [03 Cello_II_Music_Voice measure 17 / measure 2]
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

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [03 Cello_II_Music_Voice measure 18 / measure 3]
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

            % [03 Cello_II_Rest_Voice measure 18 / measure 3]
            R1 * 1/4

        }

    >>

    % [03 Cello_II_Music_Voice measure 19 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r16
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    eqf'!16
    - \tweak color #(x11-color 'blue)
    \mp
    ~
    [
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "scr."
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    eqf'16
    ]

    r16
    \bacaStopTextSpanBowSpeed

    r1

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [03 Cello_II_Music_Voice measure 20 / measure 5]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [03 Cello_II_Rest_Voice measure 20 / measure 5]
            R1 * 1/4

        }

    >>

    % [03 Cello_II_Music_Voice measure 21 / measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
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
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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

    % [03 Cello_II_Music_Voice measure 22 / measure 7]
    r2

    r8

    g,8
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
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    g,4
    :32

    % [03 Cello_II_Music_Voice measure 23 / measure 8]
    g,2
    :32

    \afterGrace
    f,8
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

        \context Voice = "Cello_II_Music_Voice"
        {

            % [03 Cello_II_Music_Voice measure 24 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [03 Cello_II_Rest_Voice measure 24 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


c_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \c_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \c_Cello_II_Music_Voice

>>


c_Contrabass_I_Music_Voice = {

    % [03 Contrabass_I_Music_Voice measure 16 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
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
    \ff
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8

    \once \override Stem.direction = #down
    c'16
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-effort-ff

    \once \override Rest.extra-offset = #'(-0.75 . 0)
    r16
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    % [03 Contrabass_I_Music_Voice measure 17 / measure 2]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    aqs'!8.
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    ^ \baca-eleven-e
    _ \baca-string-iv-markup
    [
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-pizz-markup
    - \tweak bound-details.left-broken.text \baca-pizz-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanPizzicato
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
    \revert NoteHead.style

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [03 Contrabass_I_Music_Voice measure 18 / measure 3]
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

            % [03 Contrabass_I_Rest_Voice measure 18 / measure 3]
            R1 * 1/4

        }

    >>

    % [03 Contrabass_I_Music_Voice measure 19 / measure 4]
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
    \mf
    - \tweak color #(x11-color 'blue)
    \>
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
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

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    e,4
    - \tweak color #(x11-color 'blue)
    \p
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [03 Contrabass_I_Music_Voice measure 20 / measure 5]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [03 Contrabass_I_Rest_Voice measure 20 / measure 5]
            R1 * 1/4

        }

    >>

    % [03 Contrabass_I_Music_Voice measure 21 / measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
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

    r4

    r8

    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \accent

    r16

    r4

    r8.

    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent

    % [03 Contrabass_I_Music_Voice measure 22 / measure 7]
    r4

    r8.

    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent

    r4

    r8

    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent

    r16

    % [03 Contrabass_I_Music_Voice measure 23 / measure 8]
    r4

    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent

    r8.

    r16

    c'16
    :32
    - \tweak color #(x11-color 'blue)
    \ppp
    - \accent
    \revert Stem.direction

    r8
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [03 Contrabass_I_Music_Voice measure 24 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [03 Contrabass_I_Rest_Voice measure 24 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


c_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \c_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \c_Contrabass_I_Music_Voice

>>


c_Contrabass_II_Music_Voice = {

    % [03 Contrabass_II_Music_Voice measure 16 / measure 1]
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
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    g2
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
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

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

    % [03 Contrabass_II_Music_Voice measure 17 / measure 2]
    \override NoteHead.style = #'harmonic
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    fs'!2
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    _ \baca-string-iv-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-pizz-markup
    - \tweak bound-details.left-broken.text \baca-pizz-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanPizzicato
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    fs'16
    \repeatTie
    [

    fs'!8.
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    ]
    \revert NoteHead.style

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [03 Contrabass_II_Music_Voice measure 18 / measure 3]
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

            % [03 Contrabass_II_Rest_Voice measure 18 / measure 3]
            R1 * 1/4

        }

    >>

    % [03 Contrabass_II_Music_Voice measure 19 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    e,4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    e,4

    e,4
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \baca-text-spanner-right-text "O"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    e,4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    e,4
    - \tweak color #(x11-color 'blue)
    \f
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [03 Contrabass_II_Music_Voice measure 20 / measure 5]
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

            % [03 Contrabass_II_Rest_Voice measure 20 / measure 5]
            R1 * 1/4

        }

    >>

    % [03 Contrabass_II_Music_Voice measure 21 / measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
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
    - \tweak bound-details.right.padding 2.75
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

    % [03 Contrabass_II_Music_Voice measure 22 / measure 7]
    r2

    r8

    g8
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
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    g4
    :32

    % [03 Contrabass_II_Music_Voice measure 23 / measure 8]
    g2
    :32

    \afterGrace
    f8
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

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [03 Contrabass_II_Music_Voice measure 24 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [03 Contrabass_II_Rest_Voice measure 24 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


c_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \c_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \c_Contrabass_II_Music_Voice

>>
