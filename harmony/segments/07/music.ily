g_Global_Skips = {

    % [07 Global_Skips measure 55 / measure 1]
    \time 4/4
    \bar ""
    \baca-time-signature-color #'green4
    s1 * 1
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "G" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "G" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[G.1]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [07 Global_Skips measure 56 / measure 2]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶H.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"96" #2 #0 #3 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [07 Global_Skips measure 57 / measure 3]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-six
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [07 Global_Skips measure 58 / measure 4]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[G.2-3]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [07 Global_Skips measure 59 / measure 5]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [07 Global_Skips measure 60 / measure 6]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀F.3]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [07 Global_Skips measure 61 / measure 7]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[▶I.1]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"144" #3 #0 #2 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [07 Global_Skips measure 62 / measure 8]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[G.4]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #1 #0 #5 #4 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [07 Global_Skips measure 63 / measure 9]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


g_Global_Rests = {

    % [07 Global_Rests measure 55 / measure 1]
    R1 * 1

    % [07 Global_Rests measure 56 / measure 2]
    R1 * 3/4

    % [07 Global_Rests measure 57 / measure 3]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [07 Global_Rests measure 58 / measure 4]
    R1 * 1

    % [07 Global_Rests measure 59 / measure 5]
    R1 * 1

    % [07 Global_Rests measure 60 / measure 6]
    R1 * 5/4

    % [07 Global_Rests measure 61 / measure 7]
    R1 * 3/2

    % [07 Global_Rests measure 62 / measure 8]
    R1 * 1

    % [07 Global_Rests measure 63 / measure 9]
    R1 * 1/4

}


g_Bass_Flute_Music_Voice = {

    % [07 Bass_Flute_Music_Voice measure 55 / measure 1]
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
    bf'''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \abjad-invisible-music-coloring
    bf'''!4 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    r2.
    - \tweak color #(x11-color 'blue)
    \!

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [07 Bass_Flute_Music_Voice measure 56 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [07 Bass_Flute_Rest_Voice measure 56 / measure 2]
            R1 * 3/4

        }

    >>

    % [07 Bass_Flute_Music_Voice measure 57 / measure 3]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
    \override Staff.BarLine.bar-extent = #'(0 . 0)

    % [07 Bass_Flute_Music_Voice measure 58 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    bf'''!8 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    \once \override DynamicText.X-offset = -0.75
    \abjad-invisible-music-coloring
    bf'''!8 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    r8
    - \tweak color #(x11-color 'blue)
    \!

    r2.

    % [07 Bass_Flute_Music_Voice measure 59 / measure 5]
    r2.

    r8

    bf'''!8 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    \once \override DynamicText.X-offset = -2
    \abjad-invisible-music-coloring
    bf'''!8 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    % [07 Bass_Flute_Music_Voice measure 60 / measure 6]
    r2.
    - \tweak color #(x11-color 'blue)
    \!

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-markup \baca-covered-markup
        - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanCovered
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation

        af'!4
        - \tweak color #(x11-color 'blue)
        \mf

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        af'!4

    }

    % [07 Bass_Flute_Music_Voice measure 61 / measure 7]
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 6.5
    r4

    g'2

    r8
    \bacaStopTextSpanCovered
    \bacaStopTextSpanMetricModulation

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        r4

        bf'''!4 * 1/2
        :32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 11.5
        \bacaStartTextSpanMetricModulation

        \abjad-invisible-music-coloring
        bf'''!4 * 1/2
        :32
        - \tweak color #(x11-color 'blue)
        \f
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \>
        \revert TupletBracket.direction

    }

    % [07 Bass_Flute_Music_Voice measure 62 / measure 8]
    bf'''!8 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \once \override DynamicText.X-offset = -0.75
    \abjad-invisible-music-coloring
    bf'''!8 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanMetricModulation

    r2.
    \revert TupletBracket.staff-padding
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [07 Bass_Flute_Music_Voice measure 63 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [07 Bass_Flute_Rest_Voice measure 63 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


g_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \g_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \g_Bass_Flute_Music_Voice

>>


g_Percussion_I_Music_Voice = {

    % [07 Percussion_I_Music_Voice measure 55 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \set Staff.instrumentName = \harmony-perc-i-markup
    \override DynamicLineSpanner.staff-padding = 5
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r2.
    - \tweak color #(x11-color 'green4)
    \ff
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r8.

    e'16
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak self-alignment-X 0.75
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup
    \revert DynamicLineSpanner.staff-padding

    % [07 Percussion_I_Music_Voice measure 56 / measure 2]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \once \override Stem.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'16
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    r8.

    r2
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [07 Percussion_I_Music_Voice measure 57 / measure 3]
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

            % [07 Percussion_I_Rest_Voice measure 57 / measure 3]
            R1 * 1/4

        }

    >>

    % [07 Percussion_I_Music_Voice measure 58 / measure 4]
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override DynamicLineSpanner.staff-padding = 5
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    e'16
    - \tweak color #(x11-color 'DeepPink1)
    \f
    - \tweak self-alignment-X -0.75
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

    r8.

    r2.

    % [07 Percussion_I_Music_Voice measure 59 / measure 5]
    r16

    e'16
    - \tweak color #(x11-color 'blue)
    \mp

    r8

    r2.
    \revert DynamicLineSpanner.staff-padding

    % [07 Percussion_I_Music_Voice measure 60 / measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    r1
    \override Staff.BarLine.bar-extent = #'(-2 . 0)

    r8.

    \once \override Stem.direction = #down
    b16
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak self-alignment-X 1
    - \tweak staff-padding 6
    ^ \baca-bd-superball-markup
    \revert TupletBracket.direction

    % [07 Percussion_I_Music_Voice measure 61 / measure 7]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'8
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.75
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
    \revert DynamicLineSpanner.staff-padding

    % [07 Percussion_I_Music_Voice measure 62 / measure 8]
    \override Staff.BarLine.bar-extent = #'(-2 . 1)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \override DynamicLineSpanner.staff-padding = 5
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    e'16
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak self-alignment-X -0.75
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

    r8.

    r2.
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [07 Percussion_I_Music_Voice measure 63 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [07 Percussion_I_Rest_Voice measure 63 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


g_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \g_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \g_Percussion_I_Music_Voice

>>


g_Percussion_II_Music_Voice = {

    % [07 Percussion_II_Music_Voice measure 55 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    r4
    - \tweak color #(x11-color 'green4)
    \baca-f-sempre
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \override Stem.direction = #down
    c'2.
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    \glissando

    % [07 Percussion_II_Music_Voice measure 56 / measure 2]
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

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [07 Percussion_II_Music_Voice measure 57 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [07 Percussion_II_Rest_Voice measure 57 / measure 3]
            R1 * 1/4

        }

    >>

    % [07 Percussion_II_Music_Voice measure 58 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    c'1
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.75
    \baca-p-ancora
    \glissando

    % [07 Percussion_II_Music_Voice measure 59 / measure 5]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    c'1

    % [07 Percussion_II_Music_Voice measure 60 / measure 6]
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

    r8.

    \once \override Stem.direction = #up
    c'16
    - \tweak color #(x11-color 'blue)
    \mf
    - \baca-damp
    - \tweak self-alignment-X 1
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [07 Percussion_II_Music_Voice measure 61 / measure 7]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 3/2

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [07 Percussion_II_Rest_Voice measure 61 / measure 7]
            R1 * 3/2

        }

    >>

    % [07 Percussion_II_Music_Voice measure 62 / measure 8]
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
    c'1
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    \glissando
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [07 Percussion_II_Music_Voice measure 63 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
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
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [07 Percussion_II_Rest_Voice measure 63 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


g_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \g_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \g_Percussion_II_Music_Voice

>>


g_Harp_Music_Voice = {

    % [07 Harp_Music_Voice measure 55 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    c'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanMetricModulation
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \abjad-invisible-music-coloring
    c'4 * 1/2
    \revert Stem.direction

    r2.
    \bacaStopTextSpanMetricModulation
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    % [07 Harp_Music_Voice measure 56 / measure 2]
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
    <b'' c''' d'''>2. * 1/2
    :32
    - \tweak padding 2.5
    ^ \baca-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    <b'' c''' d'''>4.
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [07 Harp_Music_Voice measure 57 / measure 3]
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

        \context Voice = "Harp_Rest_Voice"
        {

            % [07 Harp_Rest_Voice measure 57 / measure 3]
            R1 * 1/4

        }

    >>

    % [07 Harp_Music_Voice measure 58 / measure 4]
    \override Staff.BarLine.bar-extent = #'(0 . 2)
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
    c'8
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-whisk-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8

    r2.

    % [07 Harp_Music_Voice measure 59 / measure 5]
    r2.

    r8

    c'8
    - \tweak color #(x11-color 'blue)
    \mf
    \revert Stem.direction
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [07 Harp_Music_Voice measure 60 / measure 6]
        \override Staff.BarLine.bar-extent = #'(-2 . 2)
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        \override DynamicLineSpanner.staff-padding = 4
    %%% \once \override Staff.Clef.X-extent = ##f
    %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
        \clef "treble"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r8
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-markup \baca-fingernail-markup
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \startTextSpan
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        fs'!4
        - \tweak color #(x11-color 'DeepPink1)
        \mf
        \laissezVibrer

    }

    r2.

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        gs'!4
        \laissezVibrer
        \revert DynamicLineSpanner.staff-padding

    }

    % [07 Harp_Music_Voice measure 61 / measure 7]
    r4
    \stopTextSpan

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        \once \override DynamicLineSpanner.staff-padding = 6
        <b'' cs'''!>2
        - \tweak color #(x11-color 'blue)
        \f
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup

    }

    r8

    \tweak text #tuplet-number::calc-fraction-text
    \times 5/4
    {

        r4

        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 1
        \startStaff
        \once \override Stem.direction = #down
        \once \override TupletBracket.direction = #up
        \once \override DynamicLineSpanner.staff-padding = 8
        \clef "percussion"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        c'4 * 1/2
        - \tweak color #(x11-color 'blue)
        \baca-effort-f
        ^ \baca-whisk-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 8
        \bacaStartTextSpanMetricModulation
        \override Staff.BarLine.bar-extent = #'(0 . 2)
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        \baca-not-yet-pitched-coloring
        \abjad-invisible-music-coloring
        c'4 * 1/2

    }

    % [07 Harp_Music_Voice measure 62 / measure 8]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 8
    c'8 * 1/2
    - \tweak color #(x11-color 'DeepPink1)
    \baca-effort-f

    \abjad-invisible-music-coloring
    c'8 * 1/2
    \revert Stem.direction

    r8
    \bacaStopTextSpanMetricModulation

    r4

    r4

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [07 Harp_Music_Voice measure 63 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [07 Harp_Rest_Voice measure 63 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


g_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \g_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \g_Harp_Music_Voice

>>


g_Viola_Music_Voice_A = {

    \override DynamicLineSpanner.staff-padding = 4
    \voiceTwo
    bf!4
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-mp-pp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-b-flat-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak direction #down
    - \tweak staff-padding 8
    \startTextSpan
    - \tweak stencil ##f
    ~

}


g_Viola_Music_Voice_B = {

    \voiceTwo
    bf!1
    - \tweak color #(x11-color 'DeepPink1)
    - \tweak self-alignment-X -0.9
    \baca-mp-pp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-b-flat-sounds-ottava-higher-markup
    - \tweak direction #down
    - \tweak staff-padding 8
    \startTextSpan
    - \tweak stencil ##f
    ~

}


g_Viola_Music_Voice = {

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [07 Viola_Music_Voice measure 55 / measure 1]
            \set Staff.shortInstrumentName = \harmony-va-markup
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \set Staff.instrumentName = \harmony-va-markup
            \override NoteHead.style = #'harmonic
            \clef "alto"
            \slash
            \voiceOne
            \once \override Staff.Clef.color = #(x11-color 'green4)
            \set Staff.forceClef = ##t
            \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
            <
                \tweak font-size 0
                \tweak transparent ##t
                bf
                d''
            >8 * 2/5
            - \tweak color #(x11-color 'green4)
            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
            [
            (
            \set Staff.shortInstrumentName = \harmony-va-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

            ds''!8 * 2/5

            b'8 * 2/5

            c''8 * 2/5

            cqs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        \g_Viola_Music_Voice_A

    >>

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/5
    {
        \oneVoice

        bf2
        \repeatTie

        bf!4
        - \espressivo
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanMetricModulation

        bf!4
        - \espressivo

        bf!4
        - \espressivo

    }

    % [07 Viola_Music_Voice measure 56 / measure 2]
    bf!4
    - \espressivo

    bf!2
    - \espressivo
    \bacaStopTextSpanMetricModulation

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [07 Viola_Music_Voice measure 57 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \stopTextSpan
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [07 Viola_Rest_Voice measure 57 / measure 3]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [07 Viola_Music_Voice measure 58 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \override Staff.BarLine.bar-extent = #'(-2 . 2)
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                bf
                cs''!
            >8 * 2/5
            [
            (

            ctqs''!8 * 2/5

            d''8 * 2/5

            c''8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Viola_Music_Voice"
        \g_Viola_Music_Voice_B

    >>

    % [07 Viola_Music_Voice measure 59 / measure 5]
    \oneVoice
    bf4
    \repeatTie
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 6/5
    {

        bf8
        \repeatTie

        bf!4
        - \espressivo
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanMetricModulation

        bf!4
        - \espressivo

    }

    % [07 Viola_Music_Voice measure 60 / measure 6]
    bf!4
    - \espressivo

    bf!2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \espressivo
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \bacaStopTextSpanMetricModulation

    r4
    - \tweak color #(x11-color 'blue)
    \!
    \stopTextSpan

    % [07 Viola_Music_Voice measure 61 / measure 7]
    r4

    cs'!1
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    cs'!4

    % [07 Viola_Music_Voice measure 62 / measure 8]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    cs'!1
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [07 Viola_Music_Voice measure 63 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \bacaStopTextSpanBowSpeed

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [07 Viola_Rest_Voice measure 63 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


g_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \g_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \g_Viola_Music_Voice

>>


g_Cello_I_Music_Voice_A = {

    \voiceTwo
    bf!4
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-mp-pp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-b-flat-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak direction #down
    - \tweak staff-padding 9
    \startTextSpan

}


g_Cello_I_Music_Voice = {

    % [07 Cello_I_Music_Voice measure 55 / measure 1]
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
    e'1 * 15/16
    - \tweak color #(x11-color 'blue)
    \f
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "scr."
    - \tweak bound-details.right.padding -1.5
    - \tweak staff-padding 3.5
    \bacaStartTextSpanBowSpeed
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \abjad-invisible-music-coloring
    e'16
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanBowSpeed

    % [07 Cello_I_Music_Voice measure 56 / measure 2]
    <c'' df''! ef''!>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-markup

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [07 Cello_I_Music_Voice measure 57 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [07 Cello_I_Rest_Voice measure 57 / measure 3]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [07 Cello_I_Music_Voice measure 58 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                bf
                ctqs''!
            >8 * 2/5
            [
            (

            d''8 * 2/5

            c''8 * 2/5

            d''8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Cello_I_Music_Voice"
        \g_Cello_I_Music_Voice_A

    >>
    \oneVoice

    bf!4
    - \espressivo

    bf!4
    - \espressivo

    bf!4
    - \espressivo

    % [07 Cello_I_Music_Voice measure 59 / measure 5]
    bf!4
    - \espressivo

    bf!4
    - \espressivo

    bf!4
    - \espressivo

    bf!4
    - \espressivo

    % [07 Cello_I_Music_Voice measure 60 / measure 6]
    r16
    \stopTextSpan

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

    % [07 Cello_I_Music_Voice measure 61 / measure 7]
    r4

    b'2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [07 Cello_I_Music_Voice measure 62 / measure 8]
    bf'!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak stencil ##f
    ~

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/5
    {

        bf'4
        \repeatTie

        bf'!4
        - \espressivo
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 3.25
        - \tweak staff-padding 5.5
        \bacaStartTextSpanMetricModulation

        bf'!4
        - \espressivo

        bf'!4
        - \espressivo

        bf'!4
        - \espressivo
        \revert DynamicLineSpanner.staff-padding

    }

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [07 Cello_I_Music_Voice measure 63 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [07 Cello_I_Rest_Voice measure 63 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


g_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \g_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \g_Cello_I_Music_Voice

>>


g_Cello_II_Music_Voice = {

    % [07 Cello_II_Music_Voice measure 55 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    b,2.
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 4
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    % [07 Cello_II_Music_Voice measure 56 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <b' c'' d''>2.
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-p-ancora
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-markup
    \bacaStopTextSpanDamp
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [07 Cello_II_Music_Voice measure 57 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [07 Cello_II_Rest_Voice measure 57 / measure 3]
            R1 * 1/4

        }

    >>

    % [07 Cello_II_Music_Voice measure 58 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    b,1
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [07 Cello_II_Music_Voice measure 59 / measure 5]
    b,1
    \repeatTie

    % [07 Cello_II_Music_Voice measure 60 / measure 6]
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r16
    \bacaStopTextSpanDamp
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

    % [07 Cello_II_Music_Voice measure 61 / measure 7]
    r4

    dqs'!2
    - \tweak padding 1
    ^ \baca-eleven-a
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r2.
    - \tweak color #(x11-color 'blue)
    \ff
    - \baca-stop-on-string

    % [07 Cello_II_Music_Voice measure 62 / measure 8]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    b,1
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \revert DynamicLineSpanner.staff-padding
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [07 Cello_II_Music_Voice measure 63 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanDamp

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [07 Cello_II_Rest_Voice measure 63 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


g_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \g_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \g_Cello_II_Music_Voice

>>


g_Contrabass_I_Music_Voice_A = {

    \voiceTwo
    bf!1
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-mp-pp
    - \abjad-dashed-line-with-up-hook
    - \baca-text-spanner-left-markup \harmony-b-flat-sounds-ottava-higher-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak direction #down
    - \tweak staff-padding 8
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [07 Contrabass_I_Music_Voice measure 59 / measure 5]
    bf1
    \repeatTie

}


g_Contrabass_I_Music_Voice = {

    % [07 Contrabass_I_Music_Voice measure 55 / measure 1]
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
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteHead.no-ledgers = ##t
    e,4
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
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
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \override NoteColumn.glissando-skip = ##t
    e,4

    e,4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    e,4
    \bacaStopTextSpanSCP

    % [07 Contrabass_I_Music_Voice measure 56 / measure 2]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <c'' df''! ef''!>2.
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak padding 1.5
    ^ \baca-quasi-bisb-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [07 Contrabass_I_Music_Voice measure 57 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [07 Contrabass_I_Rest_Voice measure 57 / measure 3]
            R1 * 1/4

        }

    >>

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3

            % [07 Contrabass_I_Music_Voice measure 58 / measure 4]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 5
            \startStaff
            \override NoteHead.style = #'harmonic
            \slash
            \voiceOne
            <
                \tweak font-size 0
                \tweak transparent ##t
                bf
                d''
            >8 * 2/5
            [
            (

            c''8 * 2/5

            d''8 * 2/5

            dqs''!8 * 2/5
            )
            ]
            \revert NoteHead.style

        }

        \context Voice = "Contrabass_I_Music_Voice"
        \g_Contrabass_I_Music_Voice_A

    >>

    % [07 Contrabass_I_Music_Voice measure 60 / measure 6]
    \oneVoice
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    e,4
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    \>
    \stopTextSpan
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

    % [07 Contrabass_I_Music_Voice measure 61 / measure 7]
    r4

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

    % [07 Contrabass_I_Music_Voice measure 62 / measure 8]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    bf'!4
    - \tweak color #(x11-color 'blue)
    \pp
    - \espressivo
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    bf'!4
    - \espressivo

    bf'!4
    - \espressivo

    bf'!4
    - \espressivo
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [07 Contrabass_I_Music_Voice measure 63 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [07 Contrabass_I_Rest_Voice measure 63 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


g_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \g_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \g_Contrabass_I_Music_Voice

>>


g_Contrabass_II_Music_Voice = {

    % [07 Contrabass_II_Music_Voice measure 55 / measure 1]
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
    r4
    - \tweak color #(x11-color 'green4)
    _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "niente"))
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    bf!2.
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    % [07 Contrabass_II_Music_Voice measure 56 / measure 2]
    bf2.
    \repeatTie

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [07 Contrabass_II_Music_Voice measure 57 / measure 3]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanDamp
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [07 Contrabass_II_Rest_Voice measure 57 / measure 3]
            R1 * 1/4

        }

    >>

    % [07 Contrabass_II_Music_Voice measure 58 / measure 4]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    bf!1
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-p-ancora
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    % [07 Contrabass_II_Music_Voice measure 59 / measure 5]
    bf1
    \repeatTie

    % [07 Contrabass_II_Music_Voice measure 60 / measure 6]
    e,4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
    \bacaStopTextSpanDamp
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

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

    % [07 Contrabass_II_Music_Voice measure 61 / measure 7]
    r4

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

    % [07 Contrabass_II_Music_Voice measure 62 / measure 8]
    bf!1
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [07 Contrabass_II_Music_Voice measure 63 / measure 9]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanDamp

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [07 Contrabass_II_Rest_Voice measure 63 / measure 9]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


g_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \g_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \g_Contrabass_II_Music_Voice

>>
