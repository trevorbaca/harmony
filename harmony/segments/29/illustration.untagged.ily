ac_Global_Skips = {

    % [29 Global_Skips measure 266 / measure 1]
    \time 6/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 3/2
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "CC" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "CC" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[CC.1-2]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [29 Global_Skips measure 267 / measure 2]
    s1 * 3/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [29 Global_Skips measure 268 / measure 3]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-twenty-eight
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    \bar "|."

    % [29 Global_Skips measure 269 / measure 4]
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


ac_Global_Rests = {

    % [29 Global_Rests measure 266 / measure 1]
    R1 * 3/2

    % [29 Global_Rests measure 267 / measure 2]
    R1 * 3/2

    % [29 Global_Rests measure 268 / measure 3]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-very-long-fermata-markup

    % [29 Global_Rests measure 269 / measure 4]
    R1 * 1/4

}


ac_Bass_Flute_Music_Voice = {

    % [29 Bass_Flute_Music_Voice measure 266 / measure 1]
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
    bf''!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    \<
    - \tweak bound-details.right.padding 2
    \startTrillSpan
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    bf''4
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~

    bf''1
    \repeatTie

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [29 Bass_Flute_Music_Voice measure 267 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/2
            - \tweak color #(x11-color 'blue)
            \!
            \stopTrillSpan
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [29 Bass_Flute_Rest_Voice measure 267 / measure 2]
            R1 * 3/2

        }

    >>

    % [29 Bass_Flute_Music_Voice measure 268 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [29 Bass_Flute_Music_Voice measure 269 / measure 4]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [29 Bass_Flute_Rest_Voice measure 269 / measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ac_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \ac_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \ac_Bass_Flute_Music_Voice

>>


ac_Percussion_I_Music_Voice = {

    % [29 Percussion_I_Music_Voice measure 266 / measure 1]
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
    c'16
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r8.

    r1

    r8.

    c'16
    - \tweak color #(x11-color 'blue)
    \mf
    - \baca-damp
    \revert Stem.direction

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [29 Percussion_I_Music_Voice measure 267 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 3/2
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [29 Percussion_I_Rest_Voice measure 267 / measure 2]
            R1 * 3/2

        }

    >>

    % [29 Percussion_I_Music_Voice measure 268 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [29 Percussion_I_Music_Voice measure 269 / measure 4]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [29 Percussion_I_Rest_Voice measure 269 / measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ac_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ac_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \ac_Percussion_I_Music_Voice

>>


ac_Percussion_II_Music_Voice = {

    % [29 Percussion_II_Music_Voice measure 266 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    r1
    - \tweak color #(x11-color 'green4)
    \baca-mp-sempre
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r4

    r8.

    \baca-not-yet-pitched-coloring
    \abjad-invisible-music-coloring
    b'16
    - \baca-damp

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [29 Percussion_II_Music_Voice measure 267 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/2

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [29 Percussion_II_Rest_Voice measure 267 / measure 2]
            R1 * 3/2

        }

    >>

    % [29 Percussion_II_Music_Voice measure 268 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [29 Percussion_II_Music_Voice measure 269 / measure 4]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [29 Percussion_II_Rest_Voice measure 269 / measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ac_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ac_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \ac_Percussion_II_Music_Voice

>>


ac_Harp_Music_Voice = {

    % [29 Harp_Music_Voice measure 266 / measure 1]
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
    bf'!16
    - \tweak color #(x11-color 'blue)
    \f
    - \snappizzicato
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8.

    r1

    r4

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [29 Harp_Music_Voice measure 267 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/2
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [29 Harp_Rest_Voice measure 267 / measure 2]
            R1 * 3/2

        }

    >>

    % [29 Harp_Music_Voice measure 268 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [29 Harp_Music_Voice measure 269 / measure 4]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [29 Harp_Rest_Voice measure 269 / measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ac_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ac_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \ac_Harp_Music_Voice

>>


ac_Viola_Music_Voice = {

    % [29 Viola_Music_Voice measure 266 / measure 1]
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
    \pitchedTrill
    bf'!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    \<
    - \tweak bound-details.right.padding 2
    \startTrillSpan cf''
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    bf'4
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~

    bf'1
    \repeatTie

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [29 Viola_Music_Voice measure 267 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 3/2
            - \tweak color #(x11-color 'blue)
            \!
            \stopTrillSpan
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [29 Viola_Rest_Voice measure 267 / measure 2]
            R1 * 3/2

        }

    >>

    % [29 Viola_Music_Voice measure 268 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [29 Viola_Music_Voice measure 269 / measure 4]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [29 Viola_Rest_Voice measure 269 / measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ac_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ac_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \ac_Viola_Music_Voice

>>


ac_Cello_I_Music_Voice = {

    % [29 Cello_I_Music_Voice measure 266 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \pitchedTrill
    bf'!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    \<
    - \tweak bound-details.right.padding 2
    \startTrillSpan cf''
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    bf'4
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~

    bf'1
    - \tweak direction #up
    \repeatTie

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [29 Cello_I_Music_Voice measure 267 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/2
            - \tweak color #(x11-color 'blue)
            \!
            \stopTrillSpan
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [29 Cello_I_Rest_Voice measure 267 / measure 2]
            R1 * 3/2

        }

    >>

    % [29 Cello_I_Music_Voice measure 268 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [29 Cello_I_Music_Voice measure 269 / measure 4]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [29 Cello_I_Rest_Voice measure 269 / measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ac_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ac_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \ac_Cello_I_Music_Voice

>>


ac_Cello_II_Music_Voice = {

    % [29 Cello_II_Music_Voice measure 266 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \pitchedTrill
    bf'!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    \<
    - \tweak bound-details.right.padding 2
    \startTrillSpan cf''
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    bf'4
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~

    bf'1
    - \tweak direction #up
    \repeatTie

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [29 Cello_II_Music_Voice measure 267 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/2
            - \tweak color #(x11-color 'blue)
            \!
            \stopTrillSpan
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [29 Cello_II_Rest_Voice measure 267 / measure 2]
            R1 * 3/2

        }

    >>

    % [29 Cello_II_Music_Voice measure 268 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [29 Cello_II_Music_Voice measure 269 / measure 4]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [29 Cello_II_Rest_Voice measure 269 / measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ac_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ac_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \ac_Cello_II_Music_Voice

>>


ac_Contrabass_I_Music_Voice = {

    % [29 Contrabass_I_Music_Voice measure 266 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \pitchedTrill
    bf'!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    \<
    - \tweak bound-details.right.padding 2
    \startTrillSpan cf''
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    bf'4
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~

    bf'1
    - \tweak direction #up
    \repeatTie

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [29 Contrabass_I_Music_Voice measure 267 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/2
            - \tweak color #(x11-color 'blue)
            \!
            \stopTrillSpan
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [29 Contrabass_I_Rest_Voice measure 267 / measure 2]
            R1 * 3/2

        }

    >>

    % [29 Contrabass_I_Music_Voice measure 268 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [29 Contrabass_I_Music_Voice measure 269 / measure 4]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [29 Contrabass_I_Rest_Voice measure 269 / measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ac_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ac_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \ac_Contrabass_I_Music_Voice

>>


ac_Contrabass_II_Music_Voice = {

    % [29 Contrabass_II_Music_Voice measure 266 / measure 1]
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
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    a,1. * 2/3
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \baca-text-spanner-right-text "T4+"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \abjad-invisible-music-coloring
    a,4

    \abjad-invisible-music-coloring
    a,8

    \abjad-invisible-music-coloring
    a,8
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [29 Contrabass_II_Music_Voice measure 267 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 3/2
            - \tweak color #(x11-color 'blue)
            \!
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [29 Contrabass_II_Rest_Voice measure 267 / measure 2]
            R1 * 3/2

        }

    >>

    % [29 Contrabass_II_Music_Voice measure 268 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [29 Contrabass_II_Music_Voice measure 269 / measure 4]
            \abjad-invisible-music-coloring
            \once \override Score.RehearsalMark.direction = #down
            \once \override Score.RehearsalMark.padding = 12
            \once \override Score.RehearsalMark.self-alignment-X = #right
            \mark \harmony-colophon-markup
            R1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [29 Contrabass_II_Rest_Voice measure 269 / measure 4]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ac_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ac_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \ac_Contrabass_II_Music_Voice

>>
