z_Global_Skips = {

    % [Global_Skips measure 237 / measure 1]
    \time 4/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 1
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "Z" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "Z" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[Z.1-2]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 238 / measure 2]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 239 / measure 3]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-twenty-four
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 240 / measure 4]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶CC.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #4 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 241 / measure 5]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[Z.3-5]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #4 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 242 / measure 6]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 243 / measure 7]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN

    % [Global_Skips measure 244 / measure 8]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀X.8]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #0 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 245 / measure 9]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀Y.2]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 246 / measure 10]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[Z.6]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [Global_Skips measure 247 / measure 11]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


z_Global_Rests = {

    % [Global_Rests measure 237 / measure 1]
    R1 * 1

    % [Global_Rests measure 238 / measure 2]
    R1 * 1

    % [Global_Rests measure 239 / measure 3]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [Global_Rests measure 240 / measure 4]
    R1 * 3/2

    % [Global_Rests measure 241 / measure 5]
    R1 * 1

    % [Global_Rests measure 242 / measure 6]
    R1 * 1

    % [Global_Rests measure 243 / measure 7]
    R1 * 1

    % [Global_Rests measure 244 / measure 8]
    R1 * 5/4

    % [Global_Rests measure 245 / measure 9]
    R1 * 3/2

    % [Global_Rests measure 246 / measure 10]
    R1 * 1

    % [Global_Rests measure 247 / measure 11]
    R1 * 1/4

}


z_Bass_Flute_Music_Voice = {

    % [Bass_Flute_Music_Voice measure 237 / measure 1]
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
    c'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-cov-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r2.
    \bacaStopTextSpanCovered

    % [Bass_Flute_Music_Voice measure 238 / measure 2]
    c'4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-cov-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered

    r2.
    \bacaStopTextSpanCovered

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 239 / measure 3]
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

            % [Bass_Flute_Rest_Voice measure 239 / measure 3]
            R1 * 1/4

        }

    >>

    % [Bass_Flute_Music_Voice measure 240 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    bf''!2 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    \<
    - \tweak bound-details.right.padding 3
    \startTrillSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "(T)"
    - \tweak staff-padding 8
    \startTextSpan
    - \tweak stencil ##f
    ~

    \abjad-invisible-music-coloring
    bf''2 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "A"
    - \baca-text-spanner-right-text "(T)"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 8
    \startTextSpan
    - \tweak stencil ##f
    ~

    bf''1
    \repeatTie
    \stopTextSpan

    % [Bass_Flute_Music_Voice measure 241 / measure 5]
    c'4
    - \tweak color #(x11-color 'blue)
    \mp
    \stopTrillSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-cov-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered

    r2.
    \bacaStopTextSpanCovered

    % [Bass_Flute_Music_Voice measure 242 / measure 6]
    c'4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-cov-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered

    r2.
    \bacaStopTextSpanCovered

    % [Bass_Flute_Music_Voice measure 243 / measure 7]
    c'4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-cov-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered

    r2.
    \bacaStopTextSpanCovered

    % [Bass_Flute_Music_Voice measure 244 / measure 8]
    r8

    fs'''!8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak staff-padding 3
    \startTrillSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "A"
    - \tweak staff-padding 10
    \startTextSpan

    fs'''!8
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "A"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 10
    \startTextSpan

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \stopTextSpan

    fs'''!8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    [
    - \tweak staff-padding 3
    \startTrillSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "A"
    - \tweak staff-padding 10
    \startTextSpan

    fs'''!8
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "A"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 10
    \startTextSpan

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \stopTextSpan

    fs'''!8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak staff-padding 3
    \startTrillSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "A"
    - \tweak staff-padding 10
    \startTextSpan

    fs'''!8
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "A"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 10
    \startTextSpan

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \stopTextSpan

    \tweak text #tuplet-number::calc-fraction-text
    \times 12/14
    {

        % [Bass_Flute_Music_Voice measure 245 / measure 9]
        r32

        \override NoteHead.font-size = -3
        \override Accidental.font-size = -3
        \override Accidental.X-offset = 0
        \override Accidental.Y-offset = -2
        bf'!32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        [
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        \startTrillSpan

        a'32

        af'!32

        g'32

        gs'!32

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32
        - \tweak color #(x11-color 'blue)
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>

        a'32

        af'!32

        g'32

        gs'!32

        a'32

        as'!32

        b'32

        c''32

        cs''!32

        c''32

        b'32

        bf'!32

        a'32

        af'!32
        - \tweak color #(x11-color 'blue)
        \!
        ]
        \revert NoteHead.font-size
        \revert Accidental.font-size
        \revert Accidental.X-offset
        \revert Accidental.Y-offset

    }

    r2.
    \stopTrillSpan

    % [Bass_Flute_Music_Voice measure 246 / measure 10]
    c'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-cov-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered

    r2.
    \bacaStopTextSpanCovered
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [Bass_Flute_Music_Voice measure 247 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [Bass_Flute_Rest_Voice measure 247 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


z_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \z_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \z_Bass_Flute_Music_Voice

>>


z_Percussion_I_Music_Voice = {

    % [Percussion_I_Music_Voice measure 237 / measure 1]
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
    d'4
    - \tweak color #(x11-color 'blue)
    \baca-effort-ff
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r2.

    % [Percussion_I_Music_Voice measure 238 / measure 2]
    d'4
    \revert Stem.direction

    r2.
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 239 / measure 3]
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

            % [Percussion_I_Rest_Voice measure 239 / measure 3]
            R1 * 1/4

        }

    >>

    % [Percussion_I_Music_Voice measure 240 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    R1 * 3/2

    % [Percussion_I_Music_Voice measure 241 / measure 5]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'4
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-effort-ancora-ff

    r2.

    % [Percussion_I_Music_Voice measure 242 / measure 6]
    d'4
    \revert Stem.direction

    r2.
    \revert TupletBracket.direction

    % [Percussion_I_Music_Voice measure 243 / measure 7]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'4

    r4

    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation
    - \tweak stencil ##f
    ~

    d'8
    \repeatTie
    \revert Stem.direction

    r8
    \revert TupletBracket.direction

    % [Percussion_I_Music_Voice measure 244 / measure 8]
    \override TupletBracket.direction = #up
    r8

    \override Stem.direction = #down
    d'8
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    d'8.

    r16

    r8

    d'8
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie
    \revert Stem.direction

    r8.
    \bacaStopTextSpanMetricModulation
    \revert TupletBracket.direction

    % [Percussion_I_Music_Voice measure 245 / measure 9]
    \once \override Stem.direction = #up
    c'16
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup

    r8.

    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/5
    {

        \override Stem.direction = #down
        \override TupletBracket.direction = #up
        d'4
        - \tweak color #(x11-color 'blue)
        \baca-effort-ff
        - \tweak staff-padding 6
        ^ \baca-slate-scrape-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 10.5
        \bacaStartTextSpanMetricModulation

        r2.

        d'4
        \revert Stem.direction
        \revert TupletBracket.direction

    }

    % [Percussion_I_Music_Voice measure 246 / measure 10]
    \once \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'4

    r2.
    \bacaStopTextSpanMetricModulation
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [Percussion_I_Music_Voice measure 247 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [Percussion_I_Rest_Voice measure 247 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


z_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \z_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \z_Percussion_I_Music_Voice

>>


z_Percussion_II_Music_Voice = {

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 237 / measure 1]
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
            c'1 * 1
            - \tweak color #(x11-color 'green4)
            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
            \set Staff.shortInstrumentName = \harmony-perc-ii-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 237 / measure 1]
            R1 * 1

        }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/3
    {

        % [Percussion_II_Music_Voice measure 238 / measure 2]
        \override TupletBracket.direction = #up
        r2

        \once \override Stem.direction = #down
        b16
        - \tweak color #(x11-color 'blue)
        \mp
        \laissezVibrer
        - \tweak staff-padding 6
        ^ \baca-bd-struck-markup

        r8.
        \revert TupletBracket.direction

    }

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 239 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 239 / measure 3]
            R1 * 1/4

        }

    >>

    % [Percussion_II_Music_Voice measure 240 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    R1 * 3/2

    % [Percussion_II_Music_Voice measure 241 / measure 5]
    R1 * 1

    % [Percussion_II_Music_Voice measure 242 / measure 6]
    R1 * 1

    % [Percussion_II_Music_Voice measure 243 / measure 7]
    \override TupletBracket.direction = #up
    r2

    \override Stem.direction = #down
    c'2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    \glissando

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        % [Percussion_II_Music_Voice measure 244 / measure 8]
        \hide NoteHead
        \override Accidental.stencil = ##f
        \override NoteColumn.glissando-skip = ##t
        \override NoteHead.no-ledgers = ##t
        \revert Accidental.stencil
        \revert NoteColumn.glissando-skip
        \revert NoteHead.no-ledgers
        \undo \hide NoteHead
        c'1
        :32
        \revert Stem.direction
        \revert TupletBracket.direction

    }

    % [Percussion_II_Music_Voice measure 245 / measure 9]
    \once \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'8
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \accent
    - \tweak staff-padding 6
    ^ \baca-slate-brush-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    r8
    - \tweak color #(x11-color 'blue)
    \!

    r1

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    % [Percussion_II_Music_Voice measure 246 / measure 10]
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    \override DynamicLineSpanner.staff-padding = 5
    r2.

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 3
        \startStaff
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r4

        \once \override Stem.direction = #down
        e'8
        - \tweak color #(x11-color 'blue)
        \ff
        - \tweak self-alignment-X 1
        - \tweak staff-padding 5
        ^ \baca-purpleheart-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 10.5
        \bacaStartTextSpanMetricModulation
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [Percussion_II_Music_Voice measure 247 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [Percussion_II_Rest_Voice measure 247 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


z_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \z_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \z_Percussion_II_Music_Voice

>>


z_Harp_Music_Voice = {

    % [Harp_Music_Voice measure 237 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \override DynamicLineSpanner.staff-padding = 6
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    - \tweak color #(x11-color 'green4)
    \baca-f-sempre
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        <cs''! d''>4
        - \tweak color #(x11-color 'blue)
        \f
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup

    }

    r4

    % [Harp_Music_Voice measure 238 / measure 2]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        <cs''! d''>4
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup

    }

    r4

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 239 / measure 3]
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

            % [Harp_Rest_Voice measure 239 / measure 3]
            R1 * 1/4

        }

    >>

    % [Harp_Music_Voice measure 240 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    R1 * 3/2

    % [Harp_Music_Voice measure 241 / measure 5]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        <cs''! d''>4
        - \tweak color #(x11-color 'blue)
        \baca-f-ancora
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup

    }

    r4

    % [Harp_Music_Voice measure 242 / measure 6]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        <cs''! d''>4
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup

    }

    r4
    \revert DynamicLineSpanner.staff-padding

    % [Harp_Music_Voice measure 243 / measure 7]
    \override TupletBracket.direction = #up
    r2

    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \once \override DynamicLineSpanner.staff-padding = 6
    \override Stem.direction = #down
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 3
    ^ \baca-whisk-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation
    - \tweak stencil ##f
    ~
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    c'8
    \repeatTie

    r8

    % [Harp_Music_Voice measure 244 / measure 8]
    c'16

    r8.

    c'8.

    r16

    r8

    c'8
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r8.

    c'16
    \revert Stem.direction

    r8.
    \bacaStopTextSpanMetricModulation
    \revert TupletBracket.direction

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 245 / measure 9]
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            \once \override Staff.Clef.X-extent = ##f
            \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
            \clef "treble"
            \once \override Staff.Clef.color = #(x11-color 'blue)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
            b'1 * 3/2
            \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 245 / measure 9]
            R1 * 3/2

        }

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [Harp_Music_Voice measure 246 / measure 10]
        \override DynamicLineSpanner.staff-padding = 6
        r8

        <cs''! d''>4
        - \tweak color #(x11-color 'blue)
        \f
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup

    }

    r2.
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [Harp_Music_Voice measure 247 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [Harp_Rest_Voice measure 247 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


z_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \z_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \z_Harp_Music_Voice

>>


z_Viola_Music_Voice = {

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 237 / measure 1]
            \set Staff.shortInstrumentName = \harmony-va-markup
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \set Staff.instrumentName = \harmony-va-markup
            \abjad-invisible-music-coloring
            \override DynamicLineSpanner.staff-padding = 4
            \baca-not-yet-pitched-coloring
            \clef "alto"
            \once \override Staff.Clef.color = #(x11-color 'green4)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
            c'1 * 1
            - \tweak color #(x11-color 'green4)
            \baca-ff-scratch
            \set Staff.shortInstrumentName = \harmony-va-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 237 / measure 1]
            R1 * 1

        }

    >>

    % [Viola_Music_Voice measure 238 / measure 2]
    R1 * 1

    % [Viola_Music_Voice measure 239 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    % [Viola_Music_Voice measure 240 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \pitchedTrill
    bf'!2 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    \<
    - \tweak bound-details.right.padding 2
    \startTrillSpan cf''
    - \tweak stencil ##f
    ~

    \abjad-invisible-music-coloring
    bf'2 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    \>
    - \tweak stencil ##f
    ~

    bf'1
    - \tweak color #(x11-color 'blue)
    \pp
    \repeatTie

    % [Viola_Music_Voice measure 241 / measure 5]
    bf'!1
    - \tweak stencil ##f
    ~

    % [Viola_Music_Voice measure 242 / measure 6]
    bf'1
    \repeatTie
    - \tweak stencil ##f
    ~

    % [Viola_Music_Voice measure 243 / measure 7]
    bf'1
    \repeatTie

    % [Viola_Music_Voice measure 244 / measure 8]
    fs!4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \stopTrillSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    fs8
    :32
    \repeatTie
    [

    fs!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    fs16
    :32
    \repeatTie
    [

    fs!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \baca-text-spanner-right-text "P2"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    fs2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    \repeatTie
    \bacaStopTextSpanSCP

    % [Viola_Music_Voice measure 245 / measure 9]
    \once \override NoteHead.style = #'harmonic-black
    <g' af'! bf'!>1.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 246 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 246 / measure 10]
            R1 * 1

        }

    >>

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [Viola_Music_Voice measure 247 / measure 11]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [Viola_Rest_Voice measure 247 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


z_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \z_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \z_Viola_Music_Voice

>>


z_Cello_I_Music_Voice = {

    % [Cello_I_Music_Voice measure 237 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    d,4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Cello_I_Music_Voice measure 238 / measure 2]
    d,4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 239 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 239 / measure 3]
            R1 * 1/4

        }

    >>

    % [Cello_I_Music_Voice measure 240 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \pitchedTrill
    bf'!2 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    \<
    - \tweak bound-details.right.padding 2
    \startTrillSpan cf''
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    bf'2 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    \>
    - \tweak stencil ##f
    ~

    bf'1
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak direction #up
    \repeatTie

    % [Cello_I_Music_Voice measure 241 / measure 5]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    d,4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \stopTrillSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Cello_I_Music_Voice measure 242 / measure 6]
    d,4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Cello_I_Music_Voice measure 243 / measure 7]
    d,4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string
    \bacaStopTextSpanSCP

    % [Cello_I_Music_Voice measure 244 / measure 8]
    fs,!4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    [
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    fs,4
    :32
    \repeatTie
    - \tweak stencil ##f
    ~

    fs,16
    :32
    \repeatTie
    [

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \baca-text-spanner-right-text "P3"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    fs,4
    :32
    - \tweak color #(x11-color 'blue)
    \f
    \repeatTie
    \bacaStopTextSpanSCP

    % [Cello_I_Music_Voice measure 245 / measure 9]
    \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <a' b' c''>4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak stencil #constante-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.transparent = ##t
    \baca-not-yet-pitched-coloring
    b'8
    [

    \baca-not-yet-pitched-coloring
    b'8
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \<
    ]

    \baca-not-yet-pitched-coloring
    b'2.

    \baca-not-yet-pitched-coloring
    b'8
    [
    \revert NoteHead.transparent

    <a' b' c''>8
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \>
    ]
    \revert NoteHead.style

    % [Cello_I_Music_Voice measure 246 / measure 10]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    d,4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [Cello_I_Music_Voice measure 247 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [Cello_I_Rest_Voice measure 247 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


z_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \z_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \z_Cello_I_Music_Voice

>>


z_Cello_II_Music_Voice = {

    % [Cello_II_Music_Voice measure 237 / measure 1]
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
    cs,!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Cello_II_Music_Voice measure 238 / measure 2]
    cs,!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 239 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 239 / measure 3]
            R1 * 1/4

        }

    >>

    % [Cello_II_Music_Voice measure 240 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \pitchedTrill
    bf'!2 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    \<
    - \tweak bound-details.right.padding 2
    \startTrillSpan cf''
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    bf'2 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    \>
    - \tweak stencil ##f
    ~

    bf'1
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak direction #up
    \repeatTie

    % [Cello_II_Music_Voice measure 241 / measure 5]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    cs,!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \stopTrillSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Cello_II_Music_Voice measure 242 / measure 6]
    cs,!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Cello_II_Music_Voice measure 243 / measure 7]
    cs,!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string
    \bacaStopTextSpanSCP

    % [Cello_II_Music_Voice measure 244 / measure 8]
    fs,!2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    fs,16
    :32
    \repeatTie
    [

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \baca-text-spanner-right-text "P1"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    fs,2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    \repeatTie
    \bacaStopTextSpanSCP

    % [Cello_II_Music_Voice measure 245 / measure 9]
    \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <g' af'! bf'!>8
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak stencil #constante-hairpin
    \<
    [
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.transparent = ##t
    c''8
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \<
    ]

    c''8.
    [

    c''16
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak stencil #constante-hairpin
    \<
    ]

    c''4

    c''8
    [

    c''8
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \>
    ]
    \revert NoteHead.transparent

    <g' af'! bf'!>2
    :32
    \revert NoteHead.style

    % [Cello_II_Music_Voice measure 246 / measure 10]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    cs,!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [Cello_II_Music_Voice measure 247 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [Cello_II_Rest_Voice measure 247 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


z_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \z_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \z_Cello_II_Music_Voice

>>


z_Contrabass_I_Music_Voice = {

    % [Contrabass_I_Music_Voice measure 237 / measure 1]
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
    d4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Contrabass_I_Music_Voice measure 238 / measure 2]
    d4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 239 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 239 / measure 3]
            R1 * 1/4

        }

    >>

    % [Contrabass_I_Music_Voice measure 240 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \pitchedTrill
    bf'!2 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    \<
    - \tweak bound-details.right.padding 2
    \startTrillSpan cf''
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    bf'2 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    \>
    - \tweak stencil ##f
    ~

    bf'1
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak direction #up
    \repeatTie

    % [Contrabass_I_Music_Voice measure 241 / measure 5]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    d4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \stopTrillSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Contrabass_I_Music_Voice measure 242 / measure 6]
    d4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Contrabass_I_Music_Voice measure 243 / measure 7]
    d4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string
    \bacaStopTextSpanSCP

    % [Contrabass_I_Music_Voice measure 244 / measure 8]
    fs,!4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!2
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    fs,16
    :32
    \repeatTie
    [

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \baca-text-spanner-right-text "P2"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    fs,4
    :32
    - \tweak color #(x11-color 'blue)
    \f
    \repeatTie
    \bacaStopTextSpanSCP

    % [Contrabass_I_Music_Voice measure 245 / measure 9]
    \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <a' b' c''>4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak stencil #constante-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.transparent = ##t
    \baca-not-yet-pitched-coloring
    b'8.
    [

    \baca-not-yet-pitched-coloring
    b'16
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \<
    ]

    \baca-not-yet-pitched-coloring
    b'4

    \baca-not-yet-pitched-coloring
    b'8.
    [

    \baca-not-yet-pitched-coloring
    b'16
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \>
    ]
    \revert NoteHead.transparent

    <a' b' c''>2
    :32
    \revert NoteHead.style

    % [Contrabass_I_Music_Voice measure 246 / measure 10]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    d4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [Contrabass_I_Music_Voice measure 247 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [Contrabass_I_Rest_Voice measure 247 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


z_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \z_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \z_Contrabass_I_Music_Voice

>>


z_Contrabass_II_Music_Voice = {

    % [Contrabass_II_Music_Voice measure 237 / measure 1]
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
    cs!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Contrabass_II_Music_Voice measure 238 / measure 2]
    cs!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string
    \bacaStopTextSpanSCP

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 239 / measure 3]
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

            % [Contrabass_II_Rest_Voice measure 239 / measure 3]
            R1 * 1/4

        }

    >>

    % [Contrabass_II_Music_Voice measure 240 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \pitchedTrill
    bf'!2 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    \<
    - \tweak bound-details.right.padding 2
    \startTrillSpan cf''
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    bf'2 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    \repeatTie
    - \tweak color #(x11-color 'blue)
    \>
    - \tweak stencil ##f
    ~

    bf'1
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak direction #up
    \repeatTie

    % [Contrabass_II_Music_Voice measure 241 / measure 5]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    cs!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \stopTrillSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Contrabass_II_Music_Voice measure 242 / measure 6]
    cs!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [Contrabass_II_Music_Voice measure 243 / measure 7]
    cs!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string
    \bacaStopTextSpanSCP

    % [Contrabass_II_Music_Voice measure 244 / measure 8]
    fs,!2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    fs,16
    :32
    \repeatTie
    [

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \baca-text-spanner-right-text "O"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak stencil ##f
    ~

    fs,2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    \repeatTie
    \bacaStopTextSpanSCP

    % [Contrabass_II_Music_Voice measure 245 / measure 9]
    \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <g' af'! bf'!>2.
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak stencil #constante-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.transparent = ##t
    c''8
    [

    c''8
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \<
    ]
    \revert NoteHead.transparent

    <g' af'! bf'!>2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \>
    \revert NoteHead.style

    % [Contrabass_II_Music_Voice measure 246 / measure 10]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    cs!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [Contrabass_II_Music_Voice measure 247 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [Contrabass_II_Rest_Voice measure 247 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


z_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \z_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \z_Contrabass_II_Music_Voice

>>
