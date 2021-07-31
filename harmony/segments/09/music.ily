i_Global_Skips = {

    % [Global_Skips measure 72 / measure 1]
    \bar ".|:"
    \once \override Score.BarLine.X-extent = #'(0 . 2)
%%% \once \override Score.BarLine.X-extent = #'(0 . 3)
    \time 6/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 3/2
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "I" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "I" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[I.1]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 73 / measure 2]
    \bar ":.|.:"
%%% \once \override Score.BarLine.X-extent = #'(0 . 3)
    \once \override Score.BarLine.X-extent = #'(0 . 4)
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[I.2]"
    \bacaStartTextSpanSNM
    \bar ":|."
%%% \once \override Score.BarLine.X-extent = #'(0 . 1.5)

    % [Global_Skips measure 74 / measure 3]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


i_Global_Rests = {

    % [Global_Rests measure 72 / measure 1]
    R1 * 3/2

    % [Global_Rests measure 73 / measure 2]
    R1 * 3/2

    % [Global_Rests measure 74 / measure 3]
    R1 * 1/4

}


i_Bass_Flute_Music_Voice = {

    % [Bass_Flute_Music_Voice measure 72 / measure 1]
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
    \mf
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-covered-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    g'2

    r2.
    \bacaStopTextSpanCovered
    \bacaStopTextSpanMetricModulation

    % [Bass_Flute_Music_Voice measure 73 / measure 2]
    gf'!8.
    - \tweak color #(x11-color 'blue)
    \mp
    [
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-covered-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanCovered

    gf'!16
    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
    ~
    ]

    gf'4
    - \tweak stencil ##f
    ~

    gf'16
    \repeatTie
    [

    gf'!8.
    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
    ]

    gf'!8.
    [

    gf'!16
    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
    ~
    ]

    gf'4
    - \tweak stencil ##f
    ~

    gf'16
    \repeatTie
    [

    gf'!8.
    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
    ]
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 74 / measure 3]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanCovered

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 74 / measure 3]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


i_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \i_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \i_Bass_Flute_Music_Voice

>>


i_Percussion_I_Music_Voice = {

    % [Percussion_I_Music_Voice measure 72 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-i-markup
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    d'8
    :32
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \accent
    - \tweak staff-padding 6
    ^ \baca-slate-brush-markup
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r8

    d'8
    :32
    - \accent

    r8

    r4

    d'8
    :32
    - \accent

    r8

    d'8
    :32
    - \accent

    r8

    d'8
    :32
    - \accent

    r8

    % [Percussion_I_Music_Voice measure 73 / measure 2]
    d'8
    :32
    - \accent
    - \accent

    r8

    r2

    d'8
    :32
    - \accent
    - \accent

    r8

    d'8
    :32
    - \accent
    - \accent
    \revert Stem.direction

    r8

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 74 / measure 3]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 74 / measure 3]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


i_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \i_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \i_Percussion_I_Music_Voice

>>


i_Percussion_II_Music_Voice = {

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 72 / measure 1]
            \set Staff.shortInstrumentName = \harmony-perc-ii-markup
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 1
            \startStaff
            \set Staff.instrumentName = \harmony-perc-ii-markup
            \abjad-invisible-music-coloring
            \override DynamicLineSpanner.staff-padding = 6
            \baca-not-yet-pitched-coloring
            \clef "percussion"
            \once \override Staff.Clef.color = #(x11-color 'green4)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
            c'1 * 3/2
            - \tweak color #(x11-color 'green4)
            \pp
            \set Staff.shortInstrumentName = \harmony-perc-ii-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 72 / measure 1]
            R1 * 3/2

        }

    >>

    % [Percussion_II_Music_Voice measure 73 / measure 2]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    b8.
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    - \tweak staff-padding 6
    ^ \baca-bd-sponge-markup

    r16

    r4

    r16

    b8.
    - \accent

    b8.
    - \accent

    r16

    r4

    r16

    b8.
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak self-alignment-X 0.25
    - \tweak staff-padding 6
    ^ \baca-bd-fingertips-markup
    \glissando
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 74 / measure 3]
            \abjad-invisible-music-coloring
            \hide NoteHead
            \override Accidental.stencil = ##f
            \override NoteColumn.glissando-skip = ##t
            \override NoteHead.no-ledgers = ##t
            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            b1 * 1/4
            \revert Stem.direction
            \revert TupletBracket.direction

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 74 / measure 3]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


i_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \i_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \i_Percussion_II_Music_Voice

>>


i_Harp_Music_Voice = {

    % [Harp_Music_Voice measure 72 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \override DynamicLineSpanner.staff-padding = 6
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        <b'' cs'''!>4
        - \tweak color #(x11-color 'blue)
        \f
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup

    }

    r1
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 73 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/2

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 73 / measure 2]
            R1 * 3/2

        }

    >>

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 74 / measure 3]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 74 / measure 3]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


i_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \i_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \i_Harp_Music_Voice

>>


i_Viola_Music_Voice = {

    % [Viola_Music_Voice measure 72 / measure 1]
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
    \pp
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    cs'!1
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak staff-padding 5.5
    ^ \harmony-match-harp-decay-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    cs'!4

    % [Viola_Music_Voice measure 73 / measure 2]
    \override TupletBracket.direction = #up
    r2.
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanBowSpeed

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/4
    {

        c'2.
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "XFB"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 5.5
        \bacaStartTextSpanBowSpeed
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation

        r4
        - \tweak color #(x11-color 'blue)
        \!
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 74 / measure 3]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanBowSpeed
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 74 / measure 3]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


i_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \i_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \i_Viola_Music_Voice

>>


i_Cello_I_Music_Voice = {

    % [Cello_I_Music_Voice measure 72 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    b'2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Cello_I_Music_Voice measure 73 / measure 2]
    \override TupletBracket.direction = #up
    r2.

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/4
    {

        b'2.
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "XFB"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 5.5
        \bacaStartTextSpanBowSpeed
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation

        r4
        - \tweak color #(x11-color 'blue)
        \!
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 74 / measure 3]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanBowSpeed
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 74 / measure 3]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


i_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \i_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \i_Cello_I_Music_Voice

>>


i_Cello_II_Music_Voice = {

    % [Cello_II_Music_Voice measure 72 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    dqs'!2
    - \tweak staff-padding 1.5
    ^ \baca-eleven-a
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Cello_II_Music_Voice measure 73 / measure 2]
    \override TupletBracket.direction = #up
    r2.

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/4
    {

        dqs'!2.
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "XFB"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 5.5
        \bacaStartTextSpanBowSpeed
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation

        r4
        - \tweak color #(x11-color 'blue)
        \!
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 74 / measure 3]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanBowSpeed
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 74 / measure 3]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


i_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \i_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \i_Cello_II_Music_Voice

>>


i_Contrabass_I_Music_Voice = {

    % [Contrabass_I_Music_Voice measure 72 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \once \override NoteHead.style = #'harmonic
    e'2
    - \tweak padding 1
    _ \baca-string-iii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Contrabass_I_Music_Voice measure 73 / measure 2]
    \override TupletBracket.direction = #up
    r2.

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/4
    {

        f'2.
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "XFB"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 8
        \bacaStartTextSpanBowSpeed
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 10.5
        \bacaStartTextSpanMetricModulation

        r4
        - \tweak color #(x11-color 'blue)
        \!
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 74 / measure 3]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanBowSpeed
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 74 / measure 3]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


i_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \i_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \i_Contrabass_I_Music_Voice

>>


i_Contrabass_II_Music_Voice = {

    % [Contrabass_II_Music_Voice measure 72 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    a,2
    - \tweak padding 1
    _ \baca-string-iii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Contrabass_II_Music_Voice measure 73 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16

    \override NoteHead.style = #'harmonic
    fqs''!8.
    - \tweak color #(x11-color 'DeepPink1)
    \ff
    \laissezVibrer
    - \tweak staff-padding 3
    ^ \baca-thirteen-a
    _ \baca-string-iii-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-pizz-markup
    - \tweak bound-details.left-broken.text \baca-pizz-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 6.5
    \bacaStartTextSpanPizzicato

    r2

    r16

    gqf''!8.
    \laissezVibrer
    - \tweak staff-padding 3
    ^ \baca-fourteen-a
    _ \baca-string-iii-markup
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 74 / measure 3]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanPizzicato

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 74 / measure 3]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


i_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \i_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \i_Contrabass_II_Music_Voice

>>
