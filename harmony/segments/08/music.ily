segment.08.Global.Skips = {

    % [Global_Skips measure 63 / measure 1]
    \time 3/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 3/4
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "H" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "H" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[H.1-6]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 64 / measure 2]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 65 / measure 3]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 66 / measure 4]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 67 / measure 5]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 68 / measure 6]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 69 / measure 7]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-seven
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 70 / measure 8]
    \bar ".|:"
    \once \override Score.BarLine.X-extent = #'(0 . 2)
%%% \once \override Score.BarLine.X-extent = #'(0 . 3)
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[H.7-8]"
    \bacaStartTextSpanSNM

    % [Global_Skips measure 71 / measure 9]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 72 / measure 10]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


segment.08.Global.Rests = {

    % [Global_Rests measure 63 / measure 1]
    R1 * 3/4

    % [Global_Rests measure 64 / measure 2]
    R1 * 1

    % [Global_Rests measure 65 / measure 3]
    R1 * 3/4

    % [Global_Rests measure 66 / measure 4]
    R1 * 1

    % [Global_Rests measure 67 / measure 5]
    R1 * 3/4

    % [Global_Rests measure 68 / measure 6]
    R1 * 1

    % [Global_Rests measure 69 / measure 7]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-short-fermata-markup

    % [Global_Rests measure 70 / measure 8]
    R1 * 3/4

    % [Global_Rests measure 71 / measure 9]
    R1 * 3/4

    % [Global_Rests measure 72 / measure 10]
    R1 * 1/4

}


segment.08.Bass.Flute.Music.Voice = {

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 63 / measure 1]
            \set Staff.shortInstrumentName = \harmony-bfl-markup
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \set Staff.instrumentName = \harmony-bfl-markup
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            \clef "treble"
            \once \override Staff.Clef.color = #(x11-color 'green4)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
            b'1 * 3/4
            - \tweak color #(x11-color 'green4)
            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
            \set Staff.shortInstrumentName = \harmony-bfl-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 63 / measure 1]
            R1 * 3/4

        }

    >>

    % [Bass_Flute_Music_Voice measure 64 / measure 2]
    R1 * 1

    % [Bass_Flute_Music_Voice measure 65 / measure 3]
    R1 * 3/4

    % [Bass_Flute_Music_Voice measure 66 / measure 4]
    R1 * 1

    % [Bass_Flute_Music_Voice measure 67 / measure 5]
    R1 * 3/4

    % [Bass_Flute_Music_Voice measure 68 / measure 6]
    R1 * 1

    % [Bass_Flute_Music_Voice measure 69 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
    \override Staff.BarLine.bar-extent = #'(0 . 0)

    % [Bass_Flute_Music_Voice measure 70 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override DynamicLineSpanner.staff-padding = 4
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-markup \baca-covered-markup
        - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 5.5
        \bacaStartTextSpanCovered
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation

        af'!2
        - \tweak color #(x11-color 'blue)
        \mf

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        af'!2
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 72 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanCovered
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 72 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.08.Bass.Flute.Music.Staff = <<

    \context GlobalRests = "Global_Rests"
    { \segment.08.Global.Rests }

    \context Voice = "Bass_Flute_Music_Voice"
    { \segment.08.Bass.Flute.Music.Voice }

>>


segment.08.Percussion.I.Music.Voice = {

    % [Percussion_I_Music_Voice measure 63 / measure 1]
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
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'16
    - \tweak X-extent #'(0 . 0)
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.75
    \baca-f-ancora
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r8.

    r2

    % [Percussion_I_Music_Voice measure 64 / measure 2]
    r16

    c'16

    r8

    r2.

    % [Percussion_I_Music_Voice measure 65 / measure 3]
    c'16

    r8.

    r2

    % [Percussion_I_Music_Voice measure 66 / measure 4]
    r16

    c'16

    r8

    r2.

    % [Percussion_I_Music_Voice measure 67 / measure 5]
    c'16

    r8.

    r2

    % [Percussion_I_Music_Voice measure 68 / measure 6]
    r16

    c'16
    \revert Stem.direction

    r8

    r2.
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 69 / measure 7]
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

            % [Percussion_I_Rest_Voice measure 69 / measure 7]
            R1 * 1/4

        }

    >>

    % [Percussion_I_Music_Voice measure 70 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    R1 * 3/4

    % [Percussion_I_Music_Voice measure 71 / measure 9]
    R1 * 3/4

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 72 / measure 10]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 72 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.08.Percussion.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.08.Global.Rests }

    \context Voice = "Percussion_I_Music_Voice"
    { \segment.08.Percussion.I.Music.Voice }

>>


segment.08.Percussion.II.Music.Voice = {

    % [Percussion_II_Music_Voice measure 63 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    c'2.
    - \tweak color #(x11-color 'green4)
    \p
    \glissando
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Percussion_II_Music_Voice measure 64 / measure 2]
    \override NoteColumn.glissando-skip = ##t
    c'1

    % [Percussion_II_Music_Voice measure 65 / measure 3]
    c'2.

    % [Percussion_II_Music_Voice measure 66 / measure 4]
    c'1

    % [Percussion_II_Music_Voice measure 67 / measure 5]
    c'2.

    % [Percussion_II_Music_Voice measure 68 / measure 6]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    \revert Dots.transparent
    \revert Stem.transparent
    c'1
    :32
    \revert Stem.direction
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 69 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 69 / measure 7]
            R1 * 1/4

        }

    >>

    % [Percussion_II_Music_Voice measure 70 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    c'2.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    \glissando

    % [Percussion_II_Music_Voice measure 71 / measure 9]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    \revert Dots.transparent
    \revert Stem.transparent
    c'2.
    :32
    \revert Stem.direction
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 72 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 72 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.08.Percussion.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.08.Global.Rests }

    \context Voice = "Percussion_II_Music_Voice"
    { \segment.08.Percussion.II.Music.Voice }

>>


segment.08.Harp.Music.Voice = {

    % [Harp_Music_Voice measure 63 / measure 1]
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
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    <b'' c''' d'''>2. * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 5
    ^ \baca-bisb-markup
    - \tweak color #(x11-color 'blue)
    \<
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    <b'' c''' d'''>2. * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    \>

    % [Harp_Music_Voice measure 64 / measure 2]
    <b'' c''' d'''>1
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Harp_Music_Voice measure 65 / measure 3]
    <b'' c''' d'''>2. * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <b'' c''' d'''>2. * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    % [Harp_Music_Voice measure 66 / measure 4]
    <b'' c''' d'''>1
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Harp_Music_Voice measure 67 / measure 5]
    <b'' c''' d'''>2. * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <b'' c''' d'''>2. * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak color #(x11-color 'blue)
    \>

    % [Harp_Music_Voice measure 68 / measure 6]
    <b'' c''' d'''>1
    :32
    - \tweak color #(x11-color 'blue)
    \p

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 69 / measure 7]
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

            % [Harp_Rest_Voice measure 69 / measure 7]
            R1 * 1/4

        }

    >>

    % [Harp_Music_Voice measure 70 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    <c''' df'''! ef'''!>2.
    :32
    - \tweak color #(x11-color 'blue)
    \pp

    % [Harp_Music_Voice measure 71 / measure 9]
    <c''' df'''! ef'''!>2.
    :32
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 72 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 72 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.08.Harp.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.08.Global.Rests }

    \context Voice = "Harp_Music_Voice"
    { \segment.08.Harp.Music.Voice }

>>


segment.08.Viola.Music.Voice = {

    % [Viola_Music_Voice measure 63 / measure 1]
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
    <b' c'' d''>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-markup
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Viola_Music_Voice measure 64 / measure 2]
    <b' c'' d''>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <b' c'' d''>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    \>

    % [Viola_Music_Voice measure 65 / measure 3]
    <b' c'' d''>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Viola_Music_Voice measure 66 / measure 4]
    <b' c'' d''>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <b' c'' d''>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    % [Viola_Music_Voice measure 67 / measure 5]
    <b' c'' d''>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Viola_Music_Voice measure 68 / measure 6]
    <b' c'' d''>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <b' c'' d''>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 69 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 69 / measure 7]
            R1 * 1/4

        }

    >>

    % [Viola_Music_Voice measure 70 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override NoteHead.style = #'harmonic
    <b' c'' d''>2.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-ancora-markup

    % [Viola_Music_Voice measure 71 / measure 9]
    <b' c'' d''>2.
    :32
    \revert DynamicLineSpanner.staff-padding
    \revert NoteHead.style

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 72 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 72 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.08.Viola.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.08.Global.Rests }

    \context Voice = "Viola_Music_Voice"
    { \segment.08.Viola.Music.Voice }

>>


segment.08.Cello.I.Music.Voice = {

    % [Cello_I_Music_Voice measure 63 / measure 1]
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
    bf'!4
    - \tweak color #(x11-color 'green4)
    \pp
    \repeatTie
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 4.5
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    bf'!4
    - \espressivo

    bf'!4
    - \espressivo

    % [Cello_I_Music_Voice measure 64 / measure 2]
    <c'' df''! ef''!>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    \<
    \bacaStopTextSpanMetricModulation

    \abjad-invisible-music-coloring
    <c'' df''! ef''!>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    \>

    % [Cello_I_Music_Voice measure 65 / measure 3]
    <c'' df''! ef''!>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Cello_I_Music_Voice measure 66 / measure 4]
    <c'' df''! ef''!>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <c'' df''! ef''!>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    % [Cello_I_Music_Voice measure 67 / measure 5]
    <c'' df''! ef''!>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Cello_I_Music_Voice measure 68 / measure 6]
    <c'' df''! ef''!>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <c'' df''! ef''!>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 69 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 69 / measure 7]
            R1 * 1/4

        }

    >>

    % [Cello_I_Music_Voice measure 70 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    <c'' df''! ef''!>2.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-ancora-markup

    % [Cello_I_Music_Voice measure 71 / measure 9]
    <c'' df''! ef''!>2.
    :32
    \revert DynamicLineSpanner.staff-padding
    \revert NoteHead.style

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 72 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 72 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.08.Cello.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.08.Global.Rests }

    \context Voice = "Cello_I_Music_Voice"
    { \segment.08.Cello.I.Music.Voice }

>>


segment.08.Cello.II.Music.Voice = {

    % [Cello_II_Music_Voice measure 63 / measure 1]
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
    b,2.
    - \tweak color #(x11-color 'green4)
    \p
    \repeatTie
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 4.5
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Cello_II_Music_Voice measure 64 / measure 2]
    b,1 * 15/16
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    \abjad-invisible-music-coloring
    b,16

    % [Cello_II_Music_Voice measure 65 / measure 3]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <b' c'' d''>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-markup
    \bacaStopTextSpanDamp
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [Cello_II_Music_Voice measure 66 / measure 4]
    <b' c'' d''>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <b' c'' d''>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    % [Cello_II_Music_Voice measure 67 / measure 5]
    <b' c'' d''>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Cello_II_Music_Voice measure 68 / measure 6]
    <b' c'' d''>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <b' c'' d''>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 69 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 69 / measure 7]
            R1 * 1/4

        }

    >>

    % [Cello_II_Music_Voice measure 70 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    <b' c'' d''>2.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-ancora-markup

    % [Cello_II_Music_Voice measure 71 / measure 9]
    <b' c'' d''>2.
    :32
    \revert DynamicLineSpanner.staff-padding
    \revert NoteHead.style

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 72 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 72 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.08.Cello.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.08.Global.Rests }

    \context Voice = "Cello_II_Music_Voice"
    { \segment.08.Cello.II.Music.Voice }

>>


segment.08.Contrabass.I.Music.Voice = {

    % [Contrabass_I_Music_Voice measure 63 / measure 1]
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
    bf'!4
    - \tweak color #(x11-color 'green4)
    \pp
    \repeatTie
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    bf'!4
    - \espressivo

    bf'!4
    - \espressivo
    - \tweak stencil ##f
    ~

    % [Contrabass_I_Music_Voice measure 64 / measure 2]
    bf'4
    \repeatTie

    bf'!4
    - \espressivo

    bf'!4
    - \espressivo

    bf'!4
    - \espressivo
    - \tweak stencil ##f
    ~

    % [Contrabass_I_Music_Voice measure 65 / measure 3]
    bf'4
    \repeatTie

    bf'!4
    - \espressivo

    bf'!4
    - \espressivo

    % [Contrabass_I_Music_Voice measure 66 / measure 4]
    <c'' df''! ef''!>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <c'' df''! ef''!>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    \>

    % [Contrabass_I_Music_Voice measure 67 / measure 5]
    <c'' df''! ef''!>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p

    % [Contrabass_I_Music_Voice measure 68 / measure 6]
    <c'' df''! ef''!>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <c'' df''! ef''!>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 69 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 69 / measure 7]
            R1 * 1/4

        }

    >>

    % [Contrabass_I_Music_Voice measure 70 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    <c'' df''! ef''!>2.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-ancora-markup

    % [Contrabass_I_Music_Voice measure 71 / measure 9]
    <c'' df''! ef''!>2.
    :32
    \revert DynamicLineSpanner.staff-padding
    \revert NoteHead.style

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 72 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 72 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.08.Contrabass.I.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.08.Global.Rests }

    \context Voice = "Contrabass_I_Music_Voice"
    { \segment.08.Contrabass.I.Music.Voice }

>>


segment.08.Contrabass.II.Music.Voice = {

    % [Contrabass_II_Music_Voice measure 63 / measure 1]
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
    bf!2.
    - \tweak color #(x11-color 'green4)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 4.5
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Contrabass_II_Music_Voice measure 64 / measure 2]
    bf!1

    % [Contrabass_II_Music_Voice measure 65 / measure 3]
    bf!2.

    % [Contrabass_II_Music_Voice measure 66 / measure 4]
    bf!1 * 15/16
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    \abjad-invisible-music-coloring
    bf!16

    % [Contrabass_II_Music_Voice measure 67 / measure 5]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <b' c'' d''>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-markup
    \bacaStopTextSpanDamp
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [Contrabass_II_Music_Voice measure 68 / measure 6]
    <b' c'' d''>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-p-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    <b' c'' d''>1 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 69 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 69 / measure 7]
            R1 * 1/4

        }

    >>

    % [Contrabass_II_Music_Voice measure 70 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override NoteHead.style = #'harmonic
    <b' c'' d''>2.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-ancora-markup

    % [Contrabass_II_Music_Voice measure 71 / measure 9]
    <b' c'' d''>2.
    :32
    \revert DynamicLineSpanner.staff-padding
    \revert NoteHead.style

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 72 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 72 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


segment.08.Contrabass.II.Music.Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% { \segment.08.Global.Rests }

    \context Voice = "Contrabass_II_Music_Voice"
    { \segment.08.Contrabass.II.Music.Voice }

>>
