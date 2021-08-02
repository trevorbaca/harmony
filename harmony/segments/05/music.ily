segment.05.Global.Skips = {

    % [Global_Skips measure 35 / measure 1]
    \time 5/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 5/4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶F.3]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #2 #1 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 36 / measure 2]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀C.4]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 37 / measure 3]
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀D.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 38 / measure 4]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "E" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "E" #4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[E.1-2]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 39 / measure 5]
    s1 * 3/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 40 / measure 6]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


segment.05.Global.Rests = {

    % [Global_Rests measure 35 / measure 1]
    R1 * 5/4

    % [Global_Rests measure 36 / measure 2]
    R1 * 3/4

    % [Global_Rests measure 37 / measure 3]
    R1 * 3/4

    % [Global_Rests measure 38 / measure 4]
    R1 * 3/2

    % [Global_Rests measure 39 / measure 5]
    R1 * 3/2

    % [Global_Rests measure 40 / measure 6]
    R1 * 1/4

}


segment.05.Bass.Flute.Music.Voice = {

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 35 / measure 1]
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

            % [Bass_Flute_Rest_Voice measure 35 / measure 1]
            R1 * 5/4

        }

    >>

    % [Bass_Flute_Music_Voice measure 36 / measure 2]
    r4

    f'16
    - \tweak color #(x11-color 'blue)
    \mf
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-covered-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered

    r8.

    r16

    f'16

    r8

    % [Bass_Flute_Music_Voice measure 37 / measure 3]
    fs'!16
    - \tweak color #(x11-color 'blue)
    \pp
    \bacaStopTextSpanCovered

    r16

    fs'!8
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak stencil ##f
    ~

    fs'2
    \repeatTie

    % [Bass_Flute_Music_Voice measure 38 / measure 4]
    \override NoteHead.style = #'harmonic
    f'16
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak staff-padding 4
    ^ \baca-jet-whistle-markup
    [

    f'16
    ]
    \revert NoteHead.style

    r8

    r1

    r4

    % [Bass_Flute_Music_Voice measure 39 / measure 5]
    r8.

    \override NoteHead.style = #'harmonic
    e'16
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.75
    \baca-ff-ancora
    - \tweak staff-padding 4
    ^ \baca-jet-whistle-markup

    e'16
    \revert NoteHead.style

    r8.

    r1
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 40 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 40 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.05.Bass.Flute.Music.Staff = <<

    \context GlobalRests = "Global_Rests"
    { \segment.05.Global.Rests }

    \context Voice = "Bass_Flute_Music_Voice"
    { \segment.05.Bass.Flute.Music.Voice }

>>


segment.05.Percussion.I.Music.Voice = {

    % [Percussion_I_Music_Voice measure 35 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-i-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 7
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r1
    - \tweak color #(x11-color 'green4)
    \baca-f-ancora
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r8.

    \once \override Stem.direction = #down
    b16
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak self-alignment-X 1
    - \tweak staff-padding 7
    ^ \baca-bd-superball-markup
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Percussion_I_Music_Voice measure 36 / measure 2]
        \override Staff.BarLine.bar-extent = #'(-2 . 1)
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 3
        \startStaff
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 0.5
        \override DynamicLineSpanner.staff-padding = 5.5
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r16

        \override Stem.direction = #down
        a8
        - \tweak color #(x11-color 'blue)
        \p
        - \tweak staff-padding 6
        ^ \baca-purpleheart-markup
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
    \times 2/3
    {

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

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Percussion_I_Music_Voice measure 37 / measure 3]
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
    \times 4/5
    {

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

            % [Percussion_I_Music_Voice measure 38 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 1
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            c'1 * 3/2
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 38 / measure 4]
            R1 * 3/2

        }

    >>

    % [Percussion_I_Music_Voice measure 39 / measure 5]
    \override DynamicLineSpanner.staff-padding = 4
    r8.

    \override Stem.direction = #up
    d'16
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \p
    - \tweak staff-padding 8
    ^ \baca-triangle-small-beater-markup
    ~

    d'1
    :32
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    d'4
    :32
    \revert Stem.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 40 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 40 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.05.Percussion.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.05.Global.Rests }

    \context Voice = "Percussion_I_Music_Voice"
    { \segment.05.Percussion.I.Music.Voice }

>>


segment.05.Percussion.II.Music.Voice = {

    % [Percussion_II_Music_Voice measure 35 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    c'4
    - \tweak color #(x11-color 'green4)
    \baca-f-sub
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    c'4
    \revert Stem.direction
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r2
    \bacaStopTextSpanMetricModulation

    r8.

    \once \override Stem.direction = #up
    \once \override DynamicLineSpanner.staff-padding = 7
    c'16
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    - \baca-damp
    - \tweak self-alignment-X 1
    - \tweak staff-padding 7
    ^ \baca-brake-drum-markup

    % [Percussion_II_Music_Voice measure 36 / measure 2]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    \override DynamicLineSpanner.staff-padding = 5.5
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r16

    \override Stem.direction = #down
    a8
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 6
    ^ \baca-purpleheart-markup
    - \tweak color #(x11-color 'blue)
    \<
    [

    c'16
    ]

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/7
    {

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

    }

    % [Percussion_II_Music_Voice measure 37 / measure 3]
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
    \times 4/7
    {

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

            % [Percussion_II_Music_Voice measure 38 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 1
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            c'1 * 3/2

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 38 / measure 4]
            R1 * 3/2

        }

    >>

    % [Percussion_II_Music_Voice measure 39 / measure 5]
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    r8.

    \override Stem.direction = #down
    c'16
    :32
    - \tweak color #(x11-color 'DeepPink1)
    \p
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    ~

    c'1
    :32
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    c'4
    :32
    \revert Stem.direction
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 40 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 40 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.05.Percussion.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.05.Global.Rests }

    \context Voice = "Percussion_II_Music_Voice"
    { \segment.05.Percussion.II.Music.Voice }

>>


segment.05.Harp.Music.Voice = {

    % [Harp_Music_Voice measure 35 / measure 1]
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
    r8
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

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

    % [Harp_Music_Voice measure 36 / measure 2]
    \once \override Staff.Clef.whiteout = 2
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    g,,2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    g,,8
    \repeatTie

    r8
    - \baca-damp
    \revert DynamicLineSpanner.staff-padding

    % [Harp_Music_Voice measure 37 / measure 3]
    \override DynamicLineSpanner.staff-padding = 4
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

    % [Harp_Music_Voice measure 38 / measure 4]
    \override DynamicLineSpanner.staff-padding = 6.5
    f'4
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 4
    ^ \baca-tuning-key-glissando-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \glissando

    d'4
    \glissando

    a'2
    \glissando

    g4
    \glissando

    \afterGrace
    b4
    \glissando
    {

        e8
        \revert DynamicLineSpanner.staff-padding

    }


    % [Harp_Music_Voice measure 39 / measure 5]
    \override DynamicLineSpanner.staff-padding = 4
    r4
    - \tweak color #(x11-color 'blue)
    \!

    ef'!2.
    - \tweak color #(x11-color 'blue)
    \f

    r2
    - \baca-damp
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 40 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 40 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.05.Harp.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.05.Global.Rests }

    \context Voice = "Harp_Music_Voice"
    { \segment.05.Harp.Music.Voice }

>>


segment.05.Viola.Music.Voice = {

    % [Viola_Music_Voice measure 35 / measure 1]
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
    r16
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    ef!16
    - \tweak color #(x11-color 'blue)
    \f
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

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 36 / measure 2]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 1
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            \once \override Staff.Clef.X-extent = ##f
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
            \clef "percussion"
            \once \override Staff.Clef.color = #(x11-color 'blue)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            c'1 * 3/4
            \override Staff.BarLine.bar-extent = #'(-2 . 0)
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 36 / measure 2]
            R1 * 3/4

        }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/4
    {

        % [Viola_Music_Voice measure 37 / measure 3]
        \override Staff.BarLine.bar-extent = #'(-2 . 2)
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        \once \override Staff.Clef.X-extent = ##f
        \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
        \clef "alto"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r4
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        f8.
        - \tweak color #(x11-color 'blue)
        \mf
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "XFB"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanBowSpeed

        r16

        f8.

        r16

        f8.

        r16

    }

    % [Viola_Music_Voice measure 38 / measure 4]
    f8.

    r16

    f8.

    r16

    r1
    \bacaStopTextSpanMetricModulation
    \bacaStopTextSpanBowSpeed

    % [Viola_Music_Voice measure 39 / measure 5]
    ef!4
    - \tweak color #(x11-color 'blue)
    \f
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "scr."
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    ef8
    \repeatTie

    r8
    \bacaStopTextSpanBowSpeed

    r2

    ef!4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "scr."
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    - \tweak stencil ##f
    ~

    ef8
    \repeatTie

    r8
    \bacaStopTextSpanBowSpeed
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 40 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 40 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.05.Viola.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.05.Global.Rests }

    \context Voice = "Viola_Music_Voice"
    { \segment.05.Viola.Music.Voice }

>>


segment.05.Cello.I.Music.Voice = {

    % [Cello_I_Music_Voice measure 35 / measure 1]
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
    r16
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    e'16
    - \tweak color #(x11-color 'blue)
    \f
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

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        % [Cello_I_Music_Voice measure 36 / measure 2]
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
        \ppp
        - \accent
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        r8.

        \once \override Flag.extra-offset = #'(-2 . 0)
        \once \override NoteHead.extra-offset = #'(-2 . 0)
        \once \override Script.extra-offset = #'(-2 . 0)
        \once \override Stem.extra-offset = #'(-2 . 0)
        \once \override StemTremolo.extra-offset = #'(-2 . 0)
        c'16
        :32
        - \accent
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert DynamicLineSpanner.staff-padding

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5
    {

        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        \once \override Staff.Clef.extra-offset = #'(-2 . 0)
        \once \override Staff.Clef.X-extent = ##f
        \override TupletBracket.direction = #up
        \clef "bass"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r8
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        \override DynamicLineSpanner.staff-padding = 4
        fs!8.
        - \tweak color #(x11-color 'blue)
        \mf
        - \accent
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanMetricModulation
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-markup \baca-damp-markup
        - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanDamp

        r16

        fs!8.
        - \accent

        r16

    }

    % [Cello_I_Music_Voice measure 37 / measure 3]
    fs!8.
    - \accent

    r16

    fs!4
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    \bacaStopTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    fs8
    \repeatTie

    r16
    \revert DynamicLineSpanner.staff-padding

    \override DynamicLineSpanner.staff-padding = 5.5
    fs!16
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    \revert TupletBracket.direction

    % [Cello_I_Music_Voice measure 38 / measure 4]
    f2.
    \!
    - \tweak staff-padding 4
    - \baca-full-downbow
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \bacaStopTextSpanDamp
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT

    g8
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    a,16
    \glissando

    d16
    ]
    \glissando

    b,16
    [
    \glissando

    a8.
    - \tweak staff-padding 4
    - \baca-full-downbow
    ]
    \glissando

    b,4
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    % [Cello_I_Music_Voice measure 39 / measure 5]
    e8
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 4
    - \baca-full-downbow
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    [
    \glissando

    c16
    \glissando

    b16
    ]
    \glissando

    c16
    [
    \glissando

    f8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    ]
    \glissando

    d8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    c'16
    \glissando

    d16
    ]
    \glissando

    a16
    [
    \glissando

    f8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    ]
    \glissando

    e'2
    - \tweak staff-padding 4
    - \baca-full-downbow
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 40 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \bacaStopTextSpanHalfCLT

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 40 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.05.Cello.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.05.Global.Rests }

    \context Voice = "Cello_I_Music_Voice"
    { \segment.05.Cello.I.Music.Voice }

>>


segment.05.Cello.II.Music.Voice = {

    % [Cello_II_Music_Voice measure 35 / measure 1]
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
    r16
    - \tweak color #(x11-color 'green4)
    \pp
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    eqf'!16
    - \tweak color #(x11-color 'blue)
    \f
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

    % [Cello_II_Music_Voice measure 36 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
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

    % [Cello_II_Music_Voice measure 37 / measure 3]
    \baca-repeat-pitch-class-coloring
    f2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    % [Cello_II_Music_Voice measure 38 / measure 4]
    \override DynamicLineSpanner.staff-padding = 5.5
    \baca-repeat-pitch-class-coloring
    f2.
    \!
    - \tweak staff-padding 4
    - \baca-full-downbow
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \bacaStopTextSpanDamp
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT

    a,8
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    d16
    \glissando

    b,16
    ]
    \glissando

    a16
    [
    \glissando

    b,8.
    - \tweak staff-padding 4
    - \baca-full-downbow
    ]
    \glissando

    e4
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    % [Cello_II_Music_Voice measure 39 / measure 5]
    c8
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 4
    - \baca-full-downbow
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    [
    \glissando

    b16
    \glissando

    c16
    ]
    \glissando

    f16
    [
    \glissando

    d8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    ]
    \glissando

    c'8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    d16
    \glissando

    a16
    ]
    \glissando

    f16
    [
    \glissando

    g8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    ]
    \glissando

    e'2
    - \tweak staff-padding 4
    - \baca-full-downbow
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 40 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \bacaStopTextSpanHalfCLT

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 40 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.05.Cello.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.05.Global.Rests }

    \context Voice = "Cello_II_Music_Voice"
    { \segment.05.Cello.II.Music.Voice }

>>


segment.05.Contrabass.I.Music.Voice = {

    % [Contrabass_I_Music_Voice measure 35 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
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
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
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

    % [Contrabass_I_Music_Voice measure 36 / measure 2]
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
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override Stem.direction = #down
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

    % [Contrabass_I_Music_Voice measure 37 / measure 3]
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
    - \tweak X-offset 2.5
    - \tweak padding 1
    _ \baca-string-iv-markup
    [
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-pizz-markup
    - \tweak bound-details.left-broken.text \baca-pizz-markup
    - \tweak bound-details.right.padding 2.75
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
    \revert DynamicLineSpanner.staff-padding

    \override DynamicLineSpanner.staff-padding = 5.5
    aqs'!8
    - \tweak color #(x11-color 'blue)
    \mp
    - \accent
    ]
    \revert NoteHead.style

    % [Contrabass_I_Music_Voice measure 38 / measure 4]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    f'2.
    \!
    - \tweak staff-padding 4
    - \baca-full-downbow
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \bacaStopTextSpanPizzicato
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    g8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    c'16
    ]
    \glissando

    d16
    [
    \glissando

    f16
    \glissando

    e8
    - \tweak staff-padding 4
    - \baca-full-downbow
    ]
    \glissando

    a4
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    % [Contrabass_I_Music_Voice measure 39 / measure 5]
    b,16
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    [
    \glissando

    d16
    \glissando

    c16
    \glissando

    f16
    ]
    \glissando

    g,2
    - \tweak staff-padding 4
    - \baca-full-downbow
    \glissando

    b,8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    a,16
    ]
    \glissando

    d16
    [
    \glissando

    f,16
    \glissando

    g,8
    - \tweak staff-padding 4
    - \baca-full-downbow
    ]
    \glissando

    e,4
    - \tweak staff-padding 4
    - \baca-full-upbow
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 40 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \bacaStopTextSpanHalfCLT

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 40 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.05.Contrabass.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.05.Global.Rests }

    \context Voice = "Contrabass_I_Music_Voice"
    { \segment.05.Contrabass.I.Music.Voice }

>>


segment.05.Contrabass.II.Music.Voice = {

    % [Contrabass_II_Music_Voice measure 35 / measure 1]
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
    e,4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "(T1)"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \override NoteColumn.glissando-skip = ##t
    e,4

    e,4
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \baca-text-spanner-right-text "O"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
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

    % [Contrabass_II_Music_Voice measure 36 / measure 2]
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
    - \tweak staff-padding 5.5
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

    % [Contrabass_II_Music_Voice measure 37 / measure 3]
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
    - \tweak padding 1
    ^ \baca-string-iv-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-pizz-markup
    - \tweak bound-details.left-broken.text \baca-pizz-markup
    - \tweak bound-details.right.padding 2.75
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

    % [Contrabass_II_Music_Voice measure 38 / measure 4]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    f'2
    \!
    - \tweak staff-padding 4
    - \baca-full-downbow
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \bacaStopTextSpanPizzicato
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    g8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    c'16
    ]
    \glissando

    d16
    [
    \glissando

    f16
    \glissando

    e8
    - \tweak staff-padding 4
    - \baca-full-downbow
    ]
    \glissando

    a2
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    % [Contrabass_II_Music_Voice measure 39 / measure 5]
    b,16
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    [
    \glissando

    d16
    \glissando

    c16
    \glissando

    f16
    ]
    \glissando

    g,4
    - \tweak staff-padding 4
    - \baca-full-downbow
    \glissando

    b,8.
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    a,16
    ]
    \glissando

    d16
    [
    \glissando

    f,16
    \glissando

    g,8
    - \tweak staff-padding 4
    - \baca-full-downbow
    ]
    \glissando

    e,2
    - \tweak staff-padding 4
    - \baca-full-upbow
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 40 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \bacaStopTextSpanHalfCLT

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 40 / measure 6]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.05.Contrabass.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.05.Global.Rests }

    \context Voice = "Contrabass_II_Music_Voice"
    { \segment.05.Contrabass.II.Music.Voice }

>>
