segment.11.Global.Skips = {

    % [Global_Skips measure 89 / measure 1]
    \time 3/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 3/4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶L.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #3 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 90 / measure 2]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "K" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "K" #4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[K.1]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 91 / measure 3]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-nine
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 92 / measure 4]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[K.2-3]"
    \bacaStartTextSpanSNM

    % [Global_Skips measure 93 / measure 5]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 94 / measure 6]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀I.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"144" #3 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 95 / measure 7]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶L.4]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"96" #2 #1 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 96 / measure 8]
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶L.6]" #darkgreen
    \bacaStartTextSpanSNM

    % [Global_Skips measure 97 / measure 9]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-ten
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 98 / measure 10]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[K.4]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 99 / measure 11]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


segment.11.Global.Rests = {

    % [Global_Rests measure 89 / measure 1]
    R1 * 3/4

    % [Global_Rests measure 90 / measure 2]
    R1 * 1

    % [Global_Rests measure 91 / measure 3]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [Global_Rests measure 92 / measure 4]
    R1 * 1

    % [Global_Rests measure 93 / measure 5]
    R1 * 1

    % [Global_Rests measure 94 / measure 6]
    R1 * 3/2

    % [Global_Rests measure 95 / measure 7]
    R1 * 3/4

    % [Global_Rests measure 96 / measure 8]
    R1 * 3/4

    % [Global_Rests measure 97 / measure 9]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [Global_Rests measure 98 / measure 10]
    R1 * 1

    % [Global_Rests measure 99 / measure 11]
    R1 * 1/4

}


segment.11.Bass.Flute.Music.Voice = {

    % [Bass_Flute_Music_Voice measure 89 / measure 1]
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
    <ef'! ef''! bf''!>4.
    ^ \baca-boxed-markup "L.5"
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \abjad-invisible-music-coloring
    <ef'! ef''! bf''!>4.
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 90 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1
            - \tweak color #(x11-color 'blue)
            \!

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 90 / measure 2]
            R1 * 1

        }

    >>

    % [Bass_Flute_Music_Voice measure 91 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
    \override Staff.BarLine.bar-extent = #'(0 . 0)

    % [Bass_Flute_Music_Voice measure 92 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    R1 * 1

    % [Bass_Flute_Music_Voice measure 93 / measure 5]
    r4

    r8
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

    af'!8
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak stencil ##f
    ~

    af'8
    \repeatTie

    r8

    af'!4

    % [Bass_Flute_Music_Voice measure 94 / measure 6]
    r4

    g'2

    r2.
    \bacaStopTextSpanCovered
    \bacaStopTextSpanMetricModulation

    % [Bass_Flute_Music_Voice measure 95 / measure 7]
    dtqf'''!4
    - \tweak staff-padding 8
    ^ \baca-seven-e-flat
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \tweak staff-padding 5.5
    \startTextSpan

    dtqf'''!2
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan
    \breathe

    % [Bass_Flute_Music_Voice measure 96 / measure 8]
    dtqf'''!4
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \tweak staff-padding 5.5
    \startTextSpan
    - \tweak stencil ##f
    ~

    dtqf'''8
    \repeatTie
    [

    dtqf'''!8
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    ]
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \startTextSpan
    - \tweak stencil ##f
    ~

    dtqf'''4
    \repeatTie
    \breathe

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 97 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \stopTextSpan
            \override Staff.BarLine.bar-extent = #'(0 . 0)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 97 / measure 9]
            R1 * 1/4

        }

    >>

    % [Bass_Flute_Music_Voice measure 98 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    r2

    <ef'! ef''! bf''!>4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation

    \abjad-invisible-music-coloring
    <ef'! ef''! bf''!>4
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 99 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 99 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.11.Bass.Flute.Music.Staff = <<

    \context GlobalRests = "Global_Rests"
    { \segment.11.Global.Rests }

    \context Voice = "Bass_Flute_Music_Voice"
    { \segment.11.Bass.Flute.Music.Voice }

>>


segment.11.Percussion.I.Music.Voice = {

    % [Percussion_I_Music_Voice measure 89 / measure 1]
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
    ef'!2.
    - \tweak color #(x11-color 'blue)
    \mf
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [Percussion_I_Music_Voice measure 90 / measure 2]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r2
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override Stem.direction = #up
    d'4 * 1/2
    :32
    - \tweak staff-padding 6
    ^ \baca-triangle-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    d'4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \revert Stem.direction

    r4
    - \tweak color #(x11-color 'blue)
    \!

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 91 / measure 3]
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

            % [Percussion_I_Rest_Voice measure 91 / measure 3]
            R1 * 1/4

        }

    >>

    % [Percussion_I_Music_Voice measure 92 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \override Stem.direction = #up
    d'4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando

    \abjad-invisible-music-coloring
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    d'4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \>

    d'4
    :32
    - \tweak color #(x11-color 'blue)
    \pp

    d'4
    :32

    d'8
    :32

    d'8
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    \<

    % [Percussion_I_Music_Voice measure 93 / measure 5]
    d'8
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    d'8
    :32
    - \tweak color #(x11-color 'blue)
    \pp

    d'4
    :32

    d'4
    :32

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    d'8
    :32
    \revert Stem.direction

    r8

    % [Percussion_I_Music_Voice measure 94 / measure 6]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'8
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-effort-f
    - \accent
    - \tweak staff-padding 6
    ^ \baca-slate-brush-markup

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
    \revert Stem.direction

    r8
    \revert TupletBracket.direction

    % [Percussion_I_Music_Voice measure 95 / measure 7]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    b4 * 3/4
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
    \revert Stem.direction

    r2
    \revert TupletBracket.direction

    % [Percussion_I_Music_Voice measure 96 / measure 8]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    b4 * 3/4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    b4 * 1/4
    - \tweak color #(x11-color 'blue)
    \f
    \revert Stem.direction

    r2
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 97 / measure 9]
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

            % [Percussion_I_Rest_Voice measure 97 / measure 9]
            R1 * 1/4

        }

    >>

    % [Percussion_I_Music_Voice measure 98 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \override Stem.direction = #up
    d'4 * 1/2
    :32
    - \tweak staff-padding 6
    ^ \baca-triangle-markup
    - \tweak color #(x11-color 'blue)
    - \tweak staff-padding 10
    - \tweak circled-tip ##t
    \<
    \glissando

    \abjad-invisible-music-coloring
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    d'4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak staff-padding 10
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak staff-padding 10
    \>

    d'4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak staff-padding 10
    \pp

    d'4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak staff-padding 10
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak staff-padding 10
    \<

    \abjad-invisible-music-coloring
    d'4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak staff-padding 10
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak staff-padding 10
    \>

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    d'4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak staff-padding 10
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak staff-padding 10
    \<

    \abjad-invisible-music-coloring
    d'4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak staff-padding 10
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak staff-padding 10
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \revert Stem.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 99 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            - \tweak color #(x11-color 'blue)
            - \tweak staff-padding 10
            \!

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 99 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.11.Percussion.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.11.Global.Rests }

    \context Voice = "Percussion_I_Music_Voice"
    { \segment.11.Percussion.I.Music.Voice }

>>


segment.11.Percussion.II.Music.Voice = {

    % [Percussion_II_Music_Voice measure 89 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
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
    b2.
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Percussion_II_Music_Voice measure 90 / measure 2]
    \override TupletBracket.direction = #up
    r8
    - \tweak color #(x11-color 'blue)
    \!

    \override Stem.direction = #down
    c'8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    - \tweak stencil ##f
    ~

    c'2
    \repeatTie
    \revert Stem.direction

    r4
    - \baca-damp
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 91 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 91 / measure 3]
            R1 * 1/4

        }

    >>

    % [Percussion_II_Music_Voice measure 92 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    c'2.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.75
    \baca-mp-ancora
    - \tweak stencil ##f
    ~

    c'8
    \repeatTie

    r8
    - \baca-damp

    % [Percussion_II_Music_Voice measure 93 / measure 5]
    r8

    c'8
    - \tweak stencil ##f
    ~

    c'2
    \repeatTie
    - \tweak stencil ##f
    ~

    c'8
    \repeatTie
    \revert Stem.direction

    r8
    - \baca-damp
    \revert TupletBracket.direction

    % [Percussion_II_Music_Voice measure 94 / measure 6]
    r2.

    r4.

    \once \override Stem.direction = #up
    c'8.
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 10.5
    \bacaStartTextSpanMetricModulation

    r8.

    % [Percussion_II_Music_Voice measure 95 / measure 7]
    \override Stem.direction = #up
    c'8

    r8

    c'8

    r8

    c'8
    \revert Stem.direction

    r8

    % [Percussion_II_Music_Voice measure 96 / measure 8]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'4
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup
    \bacaStopTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    d'8
    \repeatTie
    \revert Stem.direction

    r8

    r4
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 97 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 97 / measure 9]
            R1 * 1/4

        }

    >>

    % [Percussion_II_Music_Voice measure 98 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    c'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak staff-padding 5.5
    ^ \baca-tam-tam-markup
    - \tweak stencil ##f
    ~

    c'8
    \repeatTie

    r8
    - \baca-damp

    r8

    c'8
    - \tweak stencil ##f
    ~

    c'8
    \repeatTie
    \revert Stem.direction

    r8
    - \baca-damp
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 99 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 99 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.11.Percussion.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.11.Global.Rests }

    \context Voice = "Percussion_II_Music_Voice"
    { \segment.11.Percussion.II.Music.Voice }

>>


segment.11.Harp.Music.Voice = {

    % [Harp_Music_Voice measure 89 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \override DynamicLineSpanner.staff-padding = 4
    \override Staff.OttavaBracket.staff-padding = 8
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    ef'!2.
    - \tweak color #(x11-color 'blue)
    \mf
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-sons-xylophoniques-markup
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [Harp_Music_Voice measure 90 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r8
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \ottava -1
    c,,8
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak stencil ##f
    ~

    c,,2
    \repeatTie
    \ottava 0

    r4
    - \baca-damp

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 91 / measure 3]
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

            % [Harp_Rest_Voice measure 91 / measure 3]
            R1 * 1/4

        }

    >>

    % [Harp_Music_Voice measure 92 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \ottava -1
    c,,2.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.75
    \baca-f-ancora
    - \tweak stencil ##f
    ~

    c,,8
    \repeatTie

    r8
    - \baca-damp

    % [Harp_Music_Voice measure 93 / measure 5]
    r8

    c,,8
    - \tweak stencil ##f
    ~

    c,,2
    \repeatTie
    - \tweak stencil ##f
    ~

    c,,8
    \repeatTie
    \ottava 0

    r8
    - \baca-damp

    % [Harp_Music_Voice measure 94 / measure 6]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        <b'' cs'''!>4
        - \tweak color #(x11-color 'DeepPink1)
        - \tweak self-alignment-X -0.9
        \baca-f-ancora
        - \baca-double-flageolet

    }

    r4

    r4.

    e'8.
    - \tweak color #(x11-color 'DeepPink1)
    - \tweak self-alignment-X -0.9
    \baca-f-ancora
    - \snappizzicato
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation

    r8.

    % [Harp_Music_Voice measure 95 / measure 7]
    e'8
    - \snappizzicato

    r8

    e'8
    - \snappizzicato

    r8

    e'8
    - \snappizzicato

    r8
    \revert DynamicLineSpanner.staff-padding

    % [Harp_Music_Voice measure 96 / measure 8]
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
    c'4 * 3/4
    - \tweak staff-padding 6
    ^ \baca-whisk-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \bacaStopTextSpanMetricModulation
    - \tweak stencil ##f
    ~
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \once \override DynamicText.X-offset = -1.5
    \abjad-invisible-music-coloring
    c'16
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~

    c'8 * 1/2
    \repeatTie
    - \tweak stencil ##f
    ~

    \abjad-invisible-music-coloring
    c'16
    - \tweak color #(x11-color 'blue)
    \!
    \repeatTie
    \revert Stem.direction

    r8

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 97 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 97 / measure 9]
            R1 * 1/4

        }

    >>

    % [Harp_Music_Voice measure 98 / measure 10]
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \ottava -1
    \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c,,4
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    c,,8
    \repeatTie

    r8
    - \baca-damp

    r8

    c,,8
    - \tweak stencil ##f
    ~

    c,,8
    \repeatTie
    \ottava 0

    r8
    - \baca-damp
    \revert DynamicLineSpanner.staff-padding
    \revert Staff.OttavaBracket.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 99 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 99 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.11.Harp.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.11.Global.Rests }

    \context Voice = "Harp_Music_Voice"
    { \segment.11.Harp.Music.Voice }

>>


segment.11.Viola.Music.Voice = {

    % [Viola_Music_Voice measure 89 / measure 1]
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
    d2.
    - \tweak color #(x11-color 'blue)
    \ff
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Viola_Music_Voice measure 90 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.style = #'harmonic
    a''4 * 1/2
    - \tweak padding 1
    _ \baca-string-ii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \startTrillSpan

    \abjad-invisible-music-coloring
    a''4 * 1/2
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
    \stopTrillSpan

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 91 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            a''1 * 1/4
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 91 / measure 3]
            R1 * 1/4

        }

    >>

    % [Viola_Music_Voice measure 92 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override NoteHead.style = #'harmonic
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \glissando
    \startTrillSpan

    \abjad-invisible-music-coloring
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    a''4
    - \tweak color #(x11-color 'blue)
    \pp

    a''4

    a''8

    a''8
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    % [Viola_Music_Voice measure 93 / measure 5]
    a''8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    a''8
    - \tweak color #(x11-color 'blue)
    \pp

    a''4

    a''4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    a''8
    \revert NoteHead.style

    r8
    \stopTrillSpan

    % [Viola_Music_Voice measure 94 / measure 6]
    r4

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

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 95 / measure 7]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/4
            - \tweak color #(x11-color 'blue)
            \!
            \bacaStopTextSpanBowSpeed

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 95 / measure 7]
            R1 * 3/4

        }

    >>

    % [Viola_Music_Voice measure 96 / measure 8]
    \override TupletBracket.direction = #up
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "alto"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    ef!2
    :32
    - \accent
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    ef!8.
    :32
    - \tweak color #(x11-color 'blue)
    \sfp
    - \accent
    [

    ef!16
    :32
    - \tweak color #(x11-color 'blue)
    \sfp
    - \accent
    ]
    \revert TupletBracket.direction

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 97 / measure 9]
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

            % [Viola_Rest_Voice measure 97 / measure 9]
            R1 * 1/4

        }

    >>

    % [Viola_Music_Voice measure 98 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override NoteHead.style = #'harmonic
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    a''4 * 1/2
    - \tweak padding 1
    _ \baca-string-ii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \glissando
    \startTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    a''4
    - \tweak color #(x11-color 'blue)
    \pp

    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 99 / measure 11]
            \abjad-invisible-music-coloring
            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            a''1 * 1/4
            \stopTrillSpan
            \!

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 99 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.11.Viola.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.11.Global.Rests }

    \context Voice = "Viola_Music_Voice"
    { \segment.11.Viola.Music.Voice }

>>


segment.11.Cello.I.Music.Voice = {

    % [Cello_I_Music_Voice measure 89 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override TupletBracket.direction = #up
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

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/3
    {

        r8

        \override NoteHead.style = #'harmonic
        gqs'''!4 * 1/2
        - \tweak X-offset 2.5
        _ \baca-eleven-d
        - \tweak padding 1
        _ \baca-string-ii-markup
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        - \tweak stencil #abjad-flared-hairpin
        \<
        - \tweak bound-details.right.padding 2.75
        \startTrillSpan
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak staff-padding 12.0
        \bacaStartTextSpanMetricModulation

        \once \override DynamicText.X-offset = -1.5
        \abjad-invisible-music-coloring
        gqs'''!4 * 1/2
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        - \tweak stencil #abjad-flared-hairpin
        \>
        \revert TupletBracket.direction
        \revert NoteHead.style

    }

    % [Cello_I_Music_Voice measure 90 / measure 2]
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    \override NoteHead.style = #'harmonic
    gqs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \startTrillSpan

    \abjad-invisible-music-coloring
    gqs'''!4 * 1/2
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
    \stopTrillSpan

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 91 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            gqs'''!1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 91 / measure 3]
            R1 * 1/4

        }

    >>

    % [Cello_I_Music_Voice measure 92 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    gqs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \glissando
    \startTrillSpan

    \abjad-invisible-music-coloring
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    gqs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    gqs'''!4
    - \tweak color #(x11-color 'blue)
    \pp

    gqs'''!4

    gqs'''!8

    gqs'''!8
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    % [Cello_I_Music_Voice measure 93 / measure 5]
    gqs'''!8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    gqs'''!8
    - \tweak color #(x11-color 'blue)
    \pp

    gqs'''!4

    gqs'''!4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    gqs'''!8
    \revert NoteHead.style

    r8
    \stopTrillSpan

    % [Cello_I_Music_Voice measure 94 / measure 6]
    r4

    b'2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r4
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    r8

    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    aqf!8
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    - \tweak padding 1
    _ \baca-eleven-e-flat
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    aqf4
    :32
    \repeatTie

    % [Cello_I_Music_Voice measure 95 / measure 7]
    aqf!4
    :32
    - \accent

    aqf!4
    :32
    - \accent

    aqf!4
    :32
    - \accent

    % [Cello_I_Music_Voice measure 96 / measure 8]
    \override TupletBracket.direction = #up
    aqf!2
    :32
    - \accent
    \bacaStopTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        aqf8
        :32
        \repeatTie

        aqf!4
        :32
        - \tweak color #(x11-color 'blue)
        \sfp
        - \accent
        \revert TupletBracket.direction

    }

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 97 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 97 / measure 9]
            R1 * 1/4

        }

    >>

    % [Cello_I_Music_Voice measure 98 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    gqs'''!4 * 1/2
    - \tweak X-offset 2.5
    _ \baca-eleven-d
    - \tweak padding 1
    _ \baca-string-ii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \glissando
    \startTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    gqs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    gqs'''!4
    - \tweak color #(x11-color 'blue)
    \pp

    gqs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    gqs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    gqs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    gqs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 99 / measure 11]
            \abjad-invisible-music-coloring
            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            gqs'''!1 * 1/4
            \stopTrillSpan
            \!

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 99 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.11.Cello.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.11.Global.Rests }

    \context Voice = "Cello_I_Music_Voice"
    { \segment.11.Cello.I.Music.Voice }

>>


segment.11.Cello.II.Music.Voice = {

    % [Cello_II_Music_Voice measure 89 / measure 1]
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
    d,2.
    - \tweak color #(x11-color 'blue)
    \ff
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Cello_II_Music_Voice measure 90 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.style = #'harmonic
    fs''!4 * 1/2
    - \tweak padding 1
    _ \baca-string-ii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \startTrillSpan

    \abjad-invisible-music-coloring
    fs''!4 * 1/2
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
    \stopTrillSpan

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 91 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            fs''!1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 91 / measure 3]
            R1 * 1/4

        }

    >>

    % [Cello_II_Music_Voice measure 92 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    fs''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \glissando
    \startTrillSpan

    \abjad-invisible-music-coloring
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    fs''!4
    - \tweak color #(x11-color 'blue)
    \pp

    fs''!4

    fs''!8

    fs''!8
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    % [Cello_II_Music_Voice measure 93 / measure 5]
    fs''!8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    fs''!8
    - \tweak color #(x11-color 'blue)
    \pp

    fs''!4

    fs''!4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs''!8
    \revert NoteHead.style

    r8
    \stopTrillSpan

    % [Cello_II_Music_Voice measure 94 / measure 6]
    r4

    dqs'!2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r4
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    r8

    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    f8
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    f4
    :32
    \repeatTie

    % [Cello_II_Music_Voice measure 95 / measure 7]
    f4
    :32
    - \accent

    f4
    :32
    - \accent

    f4
    :32
    - \accent

    % [Cello_II_Music_Voice measure 96 / measure 8]
    \override TupletBracket.direction = #up
    f4
    :32
    - \accent
    \bacaStopTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        f8
        :32
        \repeatTie

        f4
        :32
        - \tweak color #(x11-color 'blue)
        \sfp
        - \accent
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        f4
        :32
        \repeatTie

        f8
        :32
        - \tweak color #(x11-color 'blue)
        \sfp
        - \accent
        \revert TupletBracket.direction

    }

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 97 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 97 / measure 9]
            R1 * 1/4

        }

    >>

    % [Cello_II_Music_Voice measure 98 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    fs''!4 * 1/2
    - \tweak padding 1
    _ \baca-string-ii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \glissando
    \startTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    fs''!4
    - \tweak color #(x11-color 'blue)
    \pp

    fs''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    fs''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    fs''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    fs''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 99 / measure 11]
            \abjad-invisible-music-coloring
            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            fs''!1 * 1/4
            \stopTrillSpan
            \!

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 99 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.11.Cello.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.11.Global.Rests }

    \context Voice = "Cello_II_Music_Voice"
    { \segment.11.Cello.II.Music.Voice }

>>


segment.11.Contrabass.I.Music.Voice = {

    % [Contrabass_I_Music_Voice measure 89 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
    \override TupletBracket.direction = #up
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

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/3
    {

        r8

        \override NoteHead.style = #'harmonic
        cs'''!4 * 1/2
        - \tweak X-offset 2.5
        _ \baca-fifteen-d
        - \tweak padding 1
        _ \baca-string-ii-markup
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        - \tweak stencil #abjad-flared-hairpin
        \<
        - \tweak bound-details.right.padding 2.75
        \startTrillSpan
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak staff-padding 10.5
        \bacaStartTextSpanMetricModulation

        \once \override DynamicText.X-offset = -1.5
        \abjad-invisible-music-coloring
        cs'''!4 * 1/2
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        - \tweak stencil #abjad-flared-hairpin
        \>
        \revert TupletBracket.direction
        \revert NoteHead.style

    }

    % [Contrabass_I_Music_Voice measure 90 / measure 2]
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    \override NoteHead.style = #'harmonic
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \startTrillSpan

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
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
    \stopTrillSpan

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 91 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            cs'''!1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 91 / measure 3]
            R1 * 1/4

        }

    >>

    % [Contrabass_I_Music_Voice measure 92 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \glissando
    \startTrillSpan

    \abjad-invisible-music-coloring
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    cs'''!4
    - \tweak color #(x11-color 'blue)
    \pp

    cs'''!4

    cs'''!8

    cs'''!8
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    % [Contrabass_I_Music_Voice measure 93 / measure 5]
    cs'''!8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    cs'''!8
    - \tweak color #(x11-color 'blue)
    \pp

    cs'''!4

    cs'''!4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    cs'''!8
    \revert NoteHead.style

    r8
    \stopTrillSpan

    % [Contrabass_I_Music_Voice measure 94 / measure 6]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \once \override NoteHead.style = #'harmonic
    e'2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r4
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    r8

    dtqf'!8
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    _ \baca-seven-e-flat
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    dtqf'4
    :32
    \repeatTie

    % [Contrabass_I_Music_Voice measure 95 / measure 7]
    dtqf'!4
    :32
    - \accent

    dtqf'!4
    :32
    - \accent

    dtqf'!4
    :32
    - \accent

    % [Contrabass_I_Music_Voice measure 96 / measure 8]
    \override TupletBracket.direction = #up
    dtqf'!2
    :32
    - \accent
    \bacaStopTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        dtqf'8
        :32
        \repeatTie
        [

        dtqf'!8.
        :32
        - \tweak color #(x11-color 'blue)
        \sfp
        - \accent
        ]
        \revert TupletBracket.direction

    }

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 97 / measure 9]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 97 / measure 9]
            R1 * 1/4

        }

    >>

    % [Contrabass_I_Music_Voice measure 98 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    cs'''!4 * 1/2
    - \tweak X-offset 2.5
    _ \baca-fifteen-d
    - \tweak padding 1
    _ \baca-string-ii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \glissando
    \startTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    cs'''!4
    - \tweak color #(x11-color 'blue)
    \pp

    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 99 / measure 11]
            \abjad-invisible-music-coloring
            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            cs'''!1 * 1/4
            \stopTrillSpan
            \!

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 99 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.11.Contrabass.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.11.Global.Rests }

    \context Voice = "Contrabass_I_Music_Voice"
    { \segment.11.Contrabass.I.Music.Voice }

>>


segment.11.Contrabass.II.Music.Voice = {

    % [Contrabass_II_Music_Voice measure 89 / measure 1]
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
    d2.
    - \tweak color #(x11-color 'blue)
    \ff
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Contrabass_II_Music_Voice measure 90 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.style = #'harmonic
    cqf'''!4 * 1/2
    - \tweak staff-padding 5.5
    ^ \baca-fourteen-d
    - \tweak padding 1
    _ \baca-string-ii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \startTrillSpan

    \abjad-invisible-music-coloring
    cqf'''!4 * 1/2
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
    \stopTrillSpan

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 91 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            cqf'''!1 * 1/4
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 91 / measure 3]
            R1 * 1/4

        }

    >>

    % [Contrabass_II_Music_Voice measure 92 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override NoteHead.style = #'harmonic
    cqf'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \glissando
    \startTrillSpan

    \abjad-invisible-music-coloring
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    cqf'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    cqf'''!4
    - \tweak color #(x11-color 'blue)
    \pp

    cqf'''!4

    cqf'''!8

    cqf'''!8
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    % [Contrabass_II_Music_Voice measure 93 / measure 5]
    cqf'''!8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    cqf'''!8
    - \tweak color #(x11-color 'blue)
    \pp

    cqf'''!4

    cqf'''!4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    cqf'''!8
    \revert NoteHead.style

    r8
    \stopTrillSpan

    % [Contrabass_II_Music_Voice measure 94 / measure 6]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r4
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    a,2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r4
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    r8

    ef!8
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    ef4
    :32
    \repeatTie

    % [Contrabass_II_Music_Voice measure 95 / measure 7]
    ef!4
    :32
    - \accent

    ef!4
    :32
    - \accent

    ef!4
    :32
    - \accent

    % [Contrabass_II_Music_Voice measure 96 / measure 8]
    \override TupletBracket.direction = #up
    ef!4
    :32
    - \accent
    \bacaStopTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        ef8.
        :32
        \repeatTie
        [

        ef!8
        :32
        - \tweak color #(x11-color 'blue)
        \sfp
        - \accent
        ~
        ]

    }

    ef4
    :32
    \revert TupletBracket.direction

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 97 / measure 9]
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

            % [Contrabass_II_Rest_Voice measure 97 / measure 9]
            R1 * 1/4

        }

    >>

    % [Contrabass_II_Music_Voice measure 98 / measure 10]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override NoteHead.style = #'harmonic
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    cqf'''!4 * 1/2
    - \tweak staff-padding 5.5
    ^ \baca-fourteen-d
    - \tweak padding 1
    _ \baca-string-ii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \glissando
    \startTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    cqf'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    cqf'''!4
    - \tweak color #(x11-color 'blue)
    \pp

    cqf'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    cqf'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \>

    cqf'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<

    \abjad-invisible-music-coloring
    cqf'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 99 / measure 11]
            \abjad-invisible-music-coloring
            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            cqf'''!1 * 1/4
            \stopTrillSpan
            \!

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 99 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.11.Contrabass.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.11.Global.Rests }

    \context Voice = "Contrabass_II_Music_Voice"
    { \segment.11.Contrabass.II.Music.Voice }

>>
