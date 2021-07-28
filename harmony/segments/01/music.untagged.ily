a_Global_Skips = {

    % [01 Global_Skips measure 1]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[A.1]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "96" #'blue
    \bacaStartTextSpanMM

    % [01 Global_Skips measure 2]
    \bar ".|:"
%%% \once \override Score.BarLine.X-extent = #'(0 . 2)
    \once \override Score.BarLine.X-extent = #'(0 . 3)
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "A" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "A" #4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[A.2]"
    \bacaStartTextSpanSNM

    % [01 Global_Skips measure 3]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶C.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM
    \bar ":|."
%%% \once \override Score.BarLine.X-extent = #'(0 . 1.5)

    % [01 Global_Skips measure 4]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


a_Global_Rests = {

    % [01 Global_Rests measure 1]
    R1 * 3/2

    % [01 Global_Rests measure 2]
    R1 * 5/4

    % [01 Global_Rests measure 3]
    R1 * 3/4

    % [01 Global_Rests measure 4]
    R1 * 1/4

}


a_Bass_Flute_Music_Voice_A = {

    \voiceTwo
    a'2...
    - \tweak color #(x11-color 'blue)
    \baca-f-mp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-a-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak direction #down
    - \tweak staff-padding 8
    \startTextSpan

}


a_Bass_Flute_Music_Voice_B = {

    \voiceTwo
    a'4..
    - \tweak color #(x11-color 'blue)
    \baca-mf-mp

}


a_Bass_Flute_Music_Voice_C = {

    \voiceTwo
    a'8.
    - \tweak color #(x11-color 'blue)
    \baca-f-mp
    - \tweak stencil ##f
    ~

    a'2
    \repeatTie

}


a_Bass_Flute_Music_Voice_D = {

    \voiceTwo
    a'4..
    - \tweak color #(x11-color 'blue)
    \baca-mf-mp
    \revert DynamicLineSpanner.staff-padding
    \revert Dots.X-extent

}


a_Bass_Flute_Music_Voice = {

    % [01 Bass_Flute_Music_Voice measure 1]
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \set Staff.instrumentName = \harmony-bass-flute-markup
    \override DynamicLineSpanner.staff-padding = 5
    \override Dots.X-extent = ##f
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r16
    \override Staff.Clef.color = #(x11-color 'violet)
    \set Staff.shortInstrumentName = \harmony-bfl-markup

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

            b''8 * 2/5
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        \a_Bass_Flute_Music_Voice_A

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
                cs'''!
            >8 * 2/5
            [
            (

            ctqs'''!8 * 2/5

            d'''8 * 2/5

            dqs'''!8 * 2/5

            cs'''!8 * 2/5

            d'''8 * 2/5
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        \a_Bass_Flute_Music_Voice_B

    >>
    \oneVoice

    % [01 Bass_Flute_Music_Voice measure 2]
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
                as''!
            >8 * 2/5
            [
            (

            b''8 * 2/5

            bqs''!8 * 2/5

            c'''8 * 2/5

            cqs'''!8 * 2/5

            cs'''!8 * 2/5

            b''8 * 2/5

            cs'''!8 * 2/5
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        \a_Bass_Flute_Music_Voice_C

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
                ctqs'''!
            >8 * 2/5
            [
            (

            d'''8 * 2/5

            dqs'''!8 * 2/5

            cs'''!8 * 2/5
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        \a_Bass_Flute_Music_Voice_D

    >>

    % [01 Bass_Flute_Music_Voice measure 3]
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
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered

    r16
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [01 Bass_Flute_Music_Voice measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanCovered

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [01 Bass_Flute_Rest_Voice measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


a_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \a_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \a_Bass_Flute_Music_Voice

>>


a_Percussion_I_Music_Voice = {

    % [01 Percussion_I_Music_Voice measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \set Staff.instrumentName = \harmony-percussion-i-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override DynamicLineSpanner.staff-padding = 6
    \override TupletBracket.direction = #up
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r1
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r4

    \override Stem.direction = #down
    b4 * 3/4
    - \tweak self-alignment-X 0.25
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
    \breathe

    % [01 Percussion_I_Music_Voice measure 2]
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

    b4 * 3/4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    b4 * 1/4
    - \tweak color #(x11-color 'blue)
    \f
    \breathe
    \revert Stem.direction
    \revert TupletBracket.direction

    % [01 Percussion_I_Music_Voice measure 3]
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
        \revert DynamicLineSpanner.staff-padding
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [01 Percussion_I_Music_Voice measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [01 Percussion_I_Rest_Voice measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


a_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \a_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \a_Percussion_I_Music_Voice

>>


a_Percussion_II_Music_Voice = {

    % [01 Percussion_II_Music_Voice measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \set Staff.instrumentName = \harmony-percussion-ii-markup
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
    d'4
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.

    r8

    d'8
    - \tweak stencil ##f
    ~

    d'8
    \repeatTie

    r8

    % [01 Percussion_II_Music_Voice measure 2]
    d'4

    r4

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
    \revert DynamicLineSpanner.staff-padding

    % [01 Percussion_II_Music_Voice measure 3]
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
        - \tweak staff-padding 6
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

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [01 Percussion_II_Music_Voice measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [01 Percussion_II_Rest_Voice measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


a_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \a_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \a_Percussion_II_Music_Voice

>>


a_Harp_Music_Voice = {

    % [01 Harp_Music_Voice measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \set Staff.instrumentName = \harmony-harp-markup
    \override Staff.BarLine.bar-extent = #'(0 . 2)
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
    c'4
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak staff-padding 6
    ^ \baca-whisk-markup
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.

    r8

    c'8
    - \tweak stencil ##f
    ~

    c'8
    \repeatTie

    r8

    % [01 Harp_Music_Voice measure 2]
    c'4

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

    % [01 Harp_Music_Voice measure 3]
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    g,,2
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-mf-ancora
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    g,,8
    \repeatTie

    r8
    - \baca-damp
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [01 Harp_Music_Voice measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [01 Harp_Rest_Voice measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


a_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \a_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \a_Harp_Music_Voice

>>


a_Viola_Music_Voice = {

    % [01 Viola_Music_Voice measure 1]
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.shortInstrumentName = \harmony-va-markup
    \set Staff.instrumentName = \harmony-viola-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "alto"
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r16
    \override Staff.Clef.color = #(x11-color 'violet)
    \set Staff.shortInstrumentName = \harmony-va-markup

    gqf'!2...
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

    gqf'!4..
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    % [01 Viola_Music_Voice measure 2]
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

    r16
    \bacaStopTextSpanDamp

    gqf'!4..
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    % [01 Viola_Music_Voice measure 3]
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
        \sfp
        - \accent

        r16

    }

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [01 Viola_Music_Voice measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [01 Viola_Rest_Voice measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


a_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \a_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \a_Viola_Music_Voice

>>


a_Cello_I_Music_Voice = {

    % [01 Cello_I_Music_Voice measure 1]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \set Staff.instrumentName = \harmony-cello-i-markup
    \override TupletBracket.direction = #down
    \override DynamicLineSpanner.staff-padding = 6
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    a,4
    :32
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'violet)
    \set Staff.shortInstrumentName = \harmony-vc-i-markup

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/3
    {

        a,4
        \repeatTie

        a,4
        :32
        - \accent
        \bacaStopTextSpanSCP
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "P3"
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanMetricModulation

        a,4
        :32
        - \accent
        \bacaStopTextSpanSCP
        - \abjad-solid-line-with-arrow
        - \baca-text-spanner-left-text "P2"
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/3
    {

        % [01 Cello_I_Music_Voice measure 2]
        a,4
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

    }

    % [01 Cello_I_Music_Voice measure 3]
    a,4
    :32
    - \accent
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

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
        \sfp
        - \accent

        r4

    }

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [01 Cello_I_Music_Voice measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [01 Cello_I_Rest_Voice measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


a_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \a_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \a_Cello_I_Music_Voice

>>


a_Cello_II_Music_Voice = {

    % [01 Cello_II_Music_Voice measure 1]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \set Staff.instrumentName = \harmony-cello-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r16
    \override Staff.Clef.color = #(x11-color 'violet)
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup

    b2...
    - \tweak color #(x11-color 'blue)
    \mp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r16
    \bacaStopTextSpanDamp

    b4..
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    % [01 Cello_II_Music_Voice measure 2]
    r16
    \bacaStopTextSpanDamp

    b8.
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

    % [01 Cello_II_Music_Voice measure 3]
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

        \context Voice = "Cello_II_Music_Voice"
        {

            % [01 Cello_II_Music_Voice measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [01 Cello_II_Rest_Voice measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


a_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \a_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \a_Cello_II_Music_Voice

>>


a_Contrabass_I_Music_Voice = {

    % [01 Contrabass_I_Music_Voice measure 1]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \set Staff.instrumentName = \harmony-contrabass-i-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    a,1
    :32
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'violet)
    \set Staff.shortInstrumentName = \harmony-cb-i-markup

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
    - \baca-text-spanner-left-text "P3"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    a,4
    :32
    \repeatTie

    % [01 Contrabass_I_Music_Voice measure 2]
    a,2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
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

    % [01 Contrabass_I_Music_Voice measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override TupletNumber.text = \markup { 5:4 }
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    - \tweak color #(x11-color 'blue)
    \!
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \times 4/5
    {

        r4.

        \override Stem.direction = #down
        c'16
        :32
        - \tweak color #(x11-color 'blue)
        \sfp
        - \accent
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 6.5
        \bacaStartTextSpanMetricModulation

        r16

        c'16
        :32
        - \accent
        \revert Stem.direction

        r16
        \revert TupletNumber.text
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [01 Contrabass_I_Music_Voice measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [01 Contrabass_I_Rest_Voice measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


a_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \a_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \a_Contrabass_I_Music_Voice

>>


a_Contrabass_II_Music_Voice = {

    % [01 Contrabass_II_Music_Voice measure 1]
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \set Staff.instrumentName = \harmony-contrabass-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r16
    \override Staff.Clef.color = #(x11-color 'violet)
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup

    dqs'!2...
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

    r16
    \bacaStopTextSpanDamp

    dqs'!4..
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 4
    \bacaStartTextSpanDamp

    % [01 Contrabass_II_Music_Voice measure 2]
    r16
    \bacaStopTextSpanDamp

    dqs'!8.
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

    % [01 Contrabass_II_Music_Voice measure 3]
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
    - \tweak staff-padding 4
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

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [01 Contrabass_II_Music_Voice measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [01 Contrabass_II_Rest_Voice measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


a_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \a_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \a_Contrabass_II_Music_Voice

>>
