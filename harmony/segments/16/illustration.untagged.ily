p_Global_Skips = {

    % [16 Global_Skips measure 141 / measure 1]
    \time 3/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 3/4
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "P" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "P" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[P.1-6]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "96" #'green4
    \bacaStartTextSpanMM

    % [16 Global_Skips measure 142 / measure 2]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [16 Global_Skips measure 143 / measure 3]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [16 Global_Skips measure 144 / measure 4]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN

    % [16 Global_Skips measure 145 / measure 5]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [16 Global_Skips measure 146 / measure 6]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [16 Global_Skips measure 147 / measure 7]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN

    % [16 Global_Skips measure 148 / measure 8]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀O.4]" #darkgreen
    \bacaStartTextSpanSNM

    % [16 Global_Skips measure 149 / measure 9]
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[P.7-8]"
    \bacaStartTextSpanSNM

    % [16 Global_Skips measure 150 / measure 10]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN

    % [16 Global_Skips measure 151 / measure 11]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


p_Global_Rests = {

    % [16 Global_Rests measure 141 / measure 1]
    R1 * 3/4

    % [16 Global_Rests measure 142 / measure 2]
    R1 * 3/4

    % [16 Global_Rests measure 143 / measure 3]
    R1 * 3/4

    % [16 Global_Rests measure 144 / measure 4]
    R1 * 3/4

    % [16 Global_Rests measure 145 / measure 5]
    R1 * 3/4

    % [16 Global_Rests measure 146 / measure 6]
    R1 * 3/4

    % [16 Global_Rests measure 147 / measure 7]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [16 Global_Rests measure 148 / measure 8]
    R1 * 3/4

    % [16 Global_Rests measure 149 / measure 9]
    R1 * 3/4

    % [16 Global_Rests measure 150 / measure 10]
    R1 * 3/4

    % [16 Global_Rests measure 151 / measure 11]
    R1 * 1/4

}


p_Bass_Flute_Music_Voice = {

    % [16 Bass_Flute_Music_Voice measure 141 / measure 1]
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
    d'''8.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-p-ancora
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r16
    \stopTextSpan

    d'''2
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan

    % [16 Bass_Flute_Music_Voice measure 142 / measure 2]
    r2
    \stopTextSpan

    d'''4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [16 Bass_Flute_Music_Voice measure 143 / measure 3]
    d'''8.
    \repeatTie

    r16
    \stopTextSpan

    d'''4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan

    r4
    \stopTextSpan

    % [16 Bass_Flute_Music_Voice measure 144 / measure 4]
    r2.

    % [16 Bass_Flute_Music_Voice measure 145 / measure 5]
    d'''2.
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [16 Bass_Flute_Music_Voice measure 146 / measure 6]
    d'''4
    \repeatTie

    r4
    \stopTextSpan

    d'''4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \startTextSpan

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [16 Bass_Flute_Music_Voice measure 147 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \stopTextSpan
            \override Staff.BarLine.bar-extent = #'(0 . 0)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [16 Bass_Flute_Rest_Voice measure 147 / measure 7]
            R1 * 1/4

        }

    >>

    % [16 Bass_Flute_Music_Voice measure 148 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Score.BarLine.transparent = ##t
%%% \once \override Score.SpanBar.transparent = ##t
    fs'''!2.
    - \tweak color #(x11-color 'DeepPink1)
    - \tweak self-alignment-X -0.9
    \baca-p-ancora
    - \tweak bound-details.right.padding 2
    \startTrillSpan

    % [16 Bass_Flute_Music_Voice measure 149 / measure 9]
    d'''8.
    \stopTrillSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan

    r16
    \stopTextSpan

    d'''2
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \startTextSpan

    % [16 Bass_Flute_Music_Voice measure 150 / measure 10]
    r2
    \stopTextSpan

    d'''8.
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "A"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \startTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "MM"
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanMetricModulation

    r16
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [16 Bass_Flute_Music_Voice measure 151 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            \stopTextSpan
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [16 Bass_Flute_Rest_Voice measure 151 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


p_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \p_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \p_Bass_Flute_Music_Voice

>>


p_Percussion_I_Music_Voice = {

    % [16 Percussion_I_Music_Voice measure 141 / measure 1]
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
    c'2.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-p-sempre
    - \tweak staff-padding 6
    ^ \baca-brake-drum-paper-towel-markup
    \glissando
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [16 Percussion_I_Music_Voice measure 142 / measure 2]
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    c'2.

    % [16 Percussion_I_Music_Voice measure 143 / measure 3]
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    c'2.

    % [16 Percussion_I_Music_Voice measure 144 / measure 4]
    c'4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    c'16

    r8.

    r4

    % [16 Percussion_I_Music_Voice measure 145 / measure 5]
    c'2.
    \glissando

    % [16 Percussion_I_Music_Voice measure 146 / measure 6]
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
    \revert Stem.direction

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [16 Percussion_I_Music_Voice measure 147 / measure 7]
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

            % [16 Percussion_I_Rest_Voice measure 147 / measure 7]
            R1 * 1/4

        }

    >>

    % [16 Percussion_I_Music_Voice measure 148 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \once \override Stem.direction = #down
    \once \override TupletBracket.direction = #up
    d'2.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup

    % [16 Percussion_I_Music_Voice measure 149 / measure 9]
    \override Stem.direction = #up
    c'2.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 6
    ^ \baca-brake-drum-paper-towel-markup
    \glissando

    % [16 Percussion_I_Music_Voice measure 150 / measure 10]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    c'4

    c'4

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    c'16
    \revert Stem.direction

    r8.
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [16 Percussion_I_Music_Voice measure 151 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [16 Percussion_I_Rest_Voice measure 151 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


p_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \p_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \p_Percussion_I_Music_Voice

>>


p_Percussion_II_Music_Voice = {

    % [16 Percussion_II_Music_Voice measure 141 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'2.
    - \tweak color #(x11-color 'DeepPink1)
    \pp
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [16 Percussion_II_Music_Voice measure 142 / measure 2]
    c'2
    \repeatTie
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r8.
    - \baca-damp

    % [16 Percussion_II_Music_Voice measure 143 / measure 3]
    r2

    r8.

    c'16
    - \tweak color #(x11-color 'DeepPink1)
    \pp
    ~

    % [16 Percussion_II_Music_Voice measure 144 / measure 4]
    c'2.
    - \tweak stencil ##f
    ~

    % [16 Percussion_II_Music_Voice measure 145 / measure 5]
    c'4
    \repeatTie
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie
    \revert Stem.direction

    r8.
    - \baca-damp

    r4

    % [16 Percussion_II_Music_Voice measure 146 / measure 6]
    r2.
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [16 Percussion_II_Music_Voice measure 147 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [16 Percussion_II_Rest_Voice measure 147 / measure 7]
            R1 * 1/4

        }

    >>

    % [16 Percussion_II_Music_Voice measure 148 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    R1 * 3/4

    % [16 Percussion_II_Music_Voice measure 149 / measure 9]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    c'2.
    - \tweak color #(x11-color 'DeepPink1)
    \pp
    - \tweak stencil ##f
    ~

    % [16 Percussion_II_Music_Voice measure 150 / measure 10]
    c'2
    \repeatTie
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie
    \revert Stem.direction

    r8.
    - \baca-damp
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [16 Percussion_II_Music_Voice measure 151 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [16 Percussion_II_Rest_Voice measure 151 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


p_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \p_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \p_Percussion_II_Music_Voice

>>


p_Harp_Music_Voice = {

    % [16 Harp_Music_Voice measure 141 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \override DynamicLineSpanner.staff-padding = 7
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    f,,2.
    - \tweak color #(x11-color 'DeepPink1)
    \p
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [16 Harp_Music_Voice measure 142 / measure 2]
    f,,2
    \repeatTie
    - \tweak stencil ##f
    ~

    f,,16
    \repeatTie

    r8.
    - \baca-damp

    % [16 Harp_Music_Voice measure 143 / measure 3]
    r2

    r8.

    f,,16
    - \tweak color #(x11-color 'DeepPink1)
    \p
    ~

    % [16 Harp_Music_Voice measure 144 / measure 4]
    f,,2.
    - \tweak stencil ##f
    ~

    % [16 Harp_Music_Voice measure 145 / measure 5]
    f,,4
    \repeatTie
    - \tweak stencil ##f
    ~

    f,,16
    \repeatTie

    r8.
    - \baca-damp

    r4

    % [16 Harp_Music_Voice measure 146 / measure 6]
    r2.
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [16 Harp_Music_Voice measure 147 / measure 7]
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

            % [16 Harp_Rest_Voice measure 147 / measure 7]
            R1 * 1/4

        }

    >>

    % [16 Harp_Music_Voice measure 148 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r2
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r8

        <b' c''>4
        - \tweak color #(x11-color 'blue)
        \f
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup
        \revert DynamicLineSpanner.staff-padding

    }

    % [16 Harp_Music_Voice measure 149 / measure 9]
    \override DynamicLineSpanner.staff-padding = 7
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    f,,2.
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak stencil ##f
    ~
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [16 Harp_Music_Voice measure 150 / measure 10]
    f,,2
    \repeatTie
    - \tweak stencil ##f
    ~

    f,,16
    \repeatTie

    r8.
    - \baca-damp
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [16 Harp_Music_Voice measure 151 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [16 Harp_Rest_Voice measure 151 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


p_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \p_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \p_Harp_Music_Voice

>>


p_Viola_Music_Voice = {

    % [16 Viola_Music_Voice measure 141 / measure 1]
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
    d'8
    - \tweak color #(x11-color 'blue)
    \ppp
    - \tweak staff-padding 1.5
    - \baca-full-downbow
    [
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 5.5
    \bacaStartTextSpanHalfCLT
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    ef'!16
    ]

    r16

    d'4
    - \tweak staff-padding 1.5
    - \baca-full-upbow
    \glissando

    ef'!8
    - \tweak staff-padding 1.5
    - \baca-full-downbow
    [
    \glissando

    d'16
    ]

    r16

    % [16 Viola_Music_Voice measure 142 / measure 2]
    r2

    ef'!4
    - \tweak staff-padding 1.5
    - \baca-full-upbow
    \glissando

    % [16 Viola_Music_Voice measure 143 / measure 3]
    d'8
    - \tweak staff-padding 1.5
    - \baca-full-downbow
    [
    \glissando

    ef'!16
    ]

    r16

    d'8
    - \tweak staff-padding 1.5
    - \baca-full-upbow
    [
    \glissando

    ef'!16
    ]

    r16

    r4

    % [16 Viola_Music_Voice measure 144 / measure 4]
    r2.

    % [16 Viola_Music_Voice measure 145 / measure 5]
    d'8
    - \tweak staff-padding 1.5
    - \baca-full-downbow
    [
    \glissando

    ef'!16
    ]

    r16

    d'2
    - \tweak staff-padding 1.5
    - \baca-full-upbow
    \glissando

    % [16 Viola_Music_Voice measure 146 / measure 6]
    ef'!8
    - \tweak staff-padding 1.5
    - \baca-full-downbow
    [
    \glissando

    d'16
    ]

    r16

    r4

    ef'!8
    - \tweak staff-padding 1.5
    - \baca-full-upbow
    [
    \glissando

    d'16
    ]

    r16

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [16 Viola_Music_Voice measure 147 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanHalfCLT
            \override Staff.BarLine.bar-extent = #'(-2 . 0)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [16 Viola_Rest_Voice measure 147 / measure 7]
            R1 * 1/4

        }

    >>

    % [16 Viola_Music_Voice measure 148 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    f'2.
    - \tweak color #(x11-color 'blue)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    % [16 Viola_Music_Voice measure 149 / measure 9]
    d'2.
    - \tweak color #(x11-color 'blue)
    \pp
    \bacaStopTextSpanBowSpeed
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "poco scr."
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    % [16 Viola_Music_Voice measure 150 / measure 10]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    d'2.
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [16 Viola_Music_Voice measure 151 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            \revert Dots.transparent
            \revert Stem.transparent
            c'1 * 1/4
            \bacaStopTextSpanBowSpeed

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [16 Viola_Rest_Voice measure 151 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


p_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \p_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \p_Viola_Music_Voice

>>


p_Cello_I_Music_Voice = {

    % [16 Cello_I_Music_Voice measure 141 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override DynamicLineSpanner.staff-padding = 4
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    ds!8.
    - \tweak color #(x11-color 'blue)
    \pp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r16
    \bacaStopTextSpanDamp

    ds!2
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    % [16 Cello_I_Music_Voice measure 142 / measure 2]
    r2
    \bacaStopTextSpanDamp

    ds!4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    % [16 Cello_I_Music_Voice measure 143 / measure 3]
    ds8.
    \repeatTie

    r16
    \bacaStopTextSpanDamp

    ds!4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r4
    \bacaStopTextSpanDamp

    % [16 Cello_I_Music_Voice measure 144 / measure 4]
    r2.

    % [16 Cello_I_Music_Voice measure 145 / measure 5]
    ds!2.
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    % [16 Cello_I_Music_Voice measure 146 / measure 6]
    ds4
    \repeatTie

    r4
    \bacaStopTextSpanDamp

    ds!4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [16 Cello_I_Music_Voice measure 147 / measure 7]
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

            % [16 Cello_I_Rest_Voice measure 147 / measure 7]
            R1 * 1/4

        }

    >>

    % [16 Cello_I_Music_Voice measure 148 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    a,2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    a,8.
    - \tweak color #(x11-color 'blue)
    \baca-fff-scratch
    \repeatTie

    r16
    - \baca-stop-on-string

    % [16 Cello_I_Music_Voice measure 149 / measure 9]
    ds!8.
    - \tweak color #(x11-color 'blue)
    \pp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r16
    \bacaStopTextSpanDamp

    ds!2
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    % [16 Cello_I_Music_Voice measure 150 / measure 10]
    r2
    \bacaStopTextSpanDamp

    ds!8.
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r16
    \bacaStopTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [16 Cello_I_Music_Voice measure 151 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [16 Cello_I_Rest_Voice measure 151 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


p_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \p_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \p_Cello_I_Music_Voice

>>


p_Cello_II_Music_Voice = {

    % [16 Cello_II_Music_Voice measure 141 / measure 1]
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
    cs!8.
    - \tweak color #(x11-color 'blue)
    \pp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r16
    \bacaStopTextSpanDamp

    cs!2
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    % [16 Cello_II_Music_Voice measure 142 / measure 2]
    r2
    \bacaStopTextSpanDamp

    cs!4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    % [16 Cello_II_Music_Voice measure 143 / measure 3]
    cs8.
    \repeatTie

    r16
    \bacaStopTextSpanDamp

    cs!4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r4
    \bacaStopTextSpanDamp

    % [16 Cello_II_Music_Voice measure 144 / measure 4]
    r2.

    % [16 Cello_II_Music_Voice measure 145 / measure 5]
    cs!2.
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp
    - \tweak stencil ##f
    ~

    % [16 Cello_II_Music_Voice measure 146 / measure 6]
    cs4
    \repeatTie

    r4
    \bacaStopTextSpanDamp

    cs!4
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [16 Cello_II_Music_Voice measure 147 / measure 7]
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

            % [16 Cello_II_Rest_Voice measure 147 / measure 7]
            R1 * 1/4

        }

    >>

    % [16 Cello_II_Music_Voice measure 148 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    g,2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    g,8.
    - \tweak color #(x11-color 'blue)
    \baca-fff-scratch
    \repeatTie

    r16
    - \baca-stop-on-string

    % [16 Cello_II_Music_Voice measure 149 / measure 9]
    cs!8.
    - \tweak color #(x11-color 'blue)
    \pp
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r16
    \bacaStopTextSpanDamp

    cs!2
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    % [16 Cello_II_Music_Voice measure 150 / measure 10]
    r2
    \bacaStopTextSpanDamp

    cs!8.
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-damp-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanDamp

    r16
    \bacaStopTextSpanDamp
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [16 Cello_II_Music_Voice measure 151 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [16 Cello_II_Rest_Voice measure 151 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


p_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \p_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \p_Cello_II_Music_Voice

>>


p_Contrabass_I_Music_Voice = {

    % [16 Contrabass_I_Music_Voice measure 141 / measure 1]
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
    e'8
    - \tweak color #(x11-color 'blue)
    \ppp
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    ds'!16
    ]

    r16

    e'4
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    ds'!8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    e'16
    ]

    r16

    % [16 Contrabass_I_Music_Voice measure 142 / measure 2]
    r2

    ds'!4
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    % [16 Contrabass_I_Music_Voice measure 143 / measure 3]
    e'8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    ds'!16
    ]

    r16

    e'8
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    ds'!16
    ]

    r16

    r4

    % [16 Contrabass_I_Music_Voice measure 144 / measure 4]
    r2.

    % [16 Contrabass_I_Music_Voice measure 145 / measure 5]
    e'8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    ds'!16
    ]

    r16

    e'2
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    % [16 Contrabass_I_Music_Voice measure 146 / measure 6]
    ds'!8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    e'16
    ]

    r16

    r4

    ds'!8
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    e'16
    ]

    r16

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [16 Contrabass_I_Music_Voice measure 147 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanHalfCLT

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [16 Contrabass_I_Rest_Voice measure 147 / measure 7]
            R1 * 1/4

        }

    >>

    % [16 Contrabass_I_Music_Voice measure 148 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    gs,!2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    gs,8.
    - \tweak color #(x11-color 'blue)
    \baca-fff-scratch
    \repeatTie

    r16
    - \baca-stop-on-string

    % [16 Contrabass_I_Music_Voice measure 149 / measure 9]
    e'8
    - \tweak color #(x11-color 'blue)
    \ppp
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT

    ds'!16
    ]

    r16

    e'4
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    ds'!8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    e'16
    ]

    r16

    % [16 Contrabass_I_Music_Voice measure 150 / measure 10]
    r2

    ds'!8
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    e'16
    ]

    r16
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [16 Contrabass_I_Music_Voice measure 151 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanHalfCLT

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [16 Contrabass_I_Rest_Voice measure 151 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


p_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \p_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \p_Contrabass_I_Music_Voice

>>


p_Contrabass_II_Music_Voice = {

    % [16 Contrabass_II_Music_Voice measure 141 / measure 1]
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
    cs'!8
    - \tweak color #(x11-color 'blue)
    \ppp
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    d'16
    ]

    r16

    cs'!4
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    d'8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    cs'!16
    ]

    r16

    % [16 Contrabass_II_Music_Voice measure 142 / measure 2]
    r2

    d'4
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    % [16 Contrabass_II_Music_Voice measure 143 / measure 3]
    cs'!8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    d'16
    ]

    r16

    cs'!8
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    d'16
    ]

    r16

    r4

    % [16 Contrabass_II_Music_Voice measure 144 / measure 4]
    r2.

    % [16 Contrabass_II_Music_Voice measure 145 / measure 5]
    cs'!8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    d'16
    ]

    r16

    cs'!2
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    % [16 Contrabass_II_Music_Voice measure 146 / measure 6]
    d'8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    cs'!16
    ]

    r16

    r4

    d'8
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    cs'!16
    ]

    r16

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [16 Contrabass_II_Music_Voice measure 147 / measure 7]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanHalfCLT
            \override Staff.BarLine.bar-extent = #'(0 . 2)

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [16 Contrabass_II_Rest_Voice measure 147 / measure 7]
            R1 * 1/4

        }

    >>

    % [16 Contrabass_II_Music_Voice measure 148 / measure 8]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    fs,!2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    fs,8.
    - \tweak color #(x11-color 'blue)
    \baca-fff-scratch
    \repeatTie

    r16
    - \baca-stop-on-string

    % [16 Contrabass_II_Music_Voice measure 149 / measure 9]
    cs'!8
    - \tweak color #(x11-color 'blue)
    \ppp
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "½ clt"
    - \tweak bound-details.left-broken.text \baca-left-broken-half-clt-markup
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 8
    \bacaStartTextSpanHalfCLT

    d'16
    ]

    r16

    cs'!4
    - \tweak staff-padding 4
    - \baca-full-upbow
    \glissando

    d'8
    - \tweak staff-padding 4
    - \baca-full-downbow
    [
    \glissando

    cs'!16
    ]

    r16

    % [16 Contrabass_II_Music_Voice measure 150 / measure 10]
    r2

    d'8
    - \tweak staff-padding 4
    - \baca-full-upbow
    [
    \glissando

    cs'!16
    ]

    r16
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [16 Contrabass_II_Music_Voice measure 151 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \bacaStopTextSpanHalfCLT

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [16 Contrabass_II_Rest_Voice measure 151 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


p_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \p_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \p_Contrabass_II_Music_Voice

>>
