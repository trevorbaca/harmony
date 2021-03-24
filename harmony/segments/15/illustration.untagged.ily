o_Global_Skips = {

    % [15 Global_Skips measure 131 / measure 1]
    \time 4/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 1
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "O" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "O" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[O.1-2]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "96" #'green4
    \bacaStartTextSpanMM

    % [15 Global_Skips measure 132 / measure 2]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [15 Global_Skips measure 133 / measure 3]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀L.2]" #darkgreen
    \bacaStartTextSpanSNM

    % [15 Global_Skips measure 134 / measure 4]
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀L.4]" #darkgreen
    \bacaStartTextSpanSNM

    % [15 Global_Skips measure 135 / measure 5]
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[O.3-4]"
    \bacaStartTextSpanSNM

    % [15 Global_Skips measure 136 / measure 6]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [15 Global_Skips measure 137 / measure 7]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN

    % [15 Global_Skips measure 138 / measure 8]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN

    % [15 Global_Skips measure 139 / measure 9]
    s1 * 3/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN

    % [15 Global_Skips measure 140 / measure 10]
    \time 2/4
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN

    % [15 Global_Skips measure 141 / measure 11]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


o_Global_Rests = {

    % [15 Global_Rests measure 131 / measure 1]
    R1 * 1

    % [15 Global_Rests measure 132 / measure 2]
    R1 * 1

    % [15 Global_Rests measure 133 / measure 3]
    R1 * 3/4

    % [15 Global_Rests measure 134 / measure 4]
    R1 * 3/4

    % [15 Global_Rests measure 135 / measure 5]
    R1 * 3/4

    % [15 Global_Rests measure 136 / measure 6]
    R1 * 3/4

    % [15 Global_Rests measure 137 / measure 7]
    R1 * 3/4

    % [15 Global_Rests measure 138 / measure 8]
    R1 * 3/4

    % [15 Global_Rests measure 139 / measure 9]
    R1 * 3/4

    % [15 Global_Rests measure 140 / measure 10]
    R1 * 1/2

    % [15 Global_Rests measure 141 / measure 11]
    R1 * 1/4

}


o_Bass_Flute_Music_Voice = {

    % [15 Bass_Flute_Music_Voice measure 131 / measure 1]
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
    r16
    - \tweak color #(x11-color 'green4)
    \p
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    e'8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-covered-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered

    e'4
    - \accent

    r4

    e'4
    - \accent

    % [15 Bass_Flute_Music_Voice measure 132 / measure 2]
    r16

    e'8.
    - \accent

    e'4
    - \accent

    r2
    \bacaStopTextSpanCovered

    % [15 Bass_Flute_Music_Voice measure 133 / measure 3]
    <ef'! ef''! bf''!>2. * 1/2
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    <ef'! ef''! bf''!>2. * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    % [15 Bass_Flute_Music_Voice measure 134 / measure 4]
    dtqf'''!4
    \!
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

    % [15 Bass_Flute_Music_Voice measure 135 / measure 5]
    r16
    - \tweak color #(x11-color 'blue)
    \!
    \stopTextSpan

    e'8.
    - \tweak color #(x11-color 'blue)
    \mf
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-markup \baca-cov-markup
    - \tweak bound-details.left-broken.text \baca-left-broken-covered-markup
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanCovered

    r2
    \bacaStopTextSpanCovered

    % [15 Bass_Flute_Music_Voice measure 136 / measure 6]
    fs'''!4
    - \tweak color #(x11-color 'blue)
    \p
    \startTrillSpan

    r2
    \stopTrillSpan

    % [15 Bass_Flute_Music_Voice measure 137 / measure 7]
    r16

    fs'''!8.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.75
    \baca-p-sempre
    - \tweak bound-details.right.padding 2
    \startTrillSpan
    - \tweak stencil ##f
    ~

    fs'''2
    \repeatTie
    - \tweak stencil ##f
    ~

    % [15 Bass_Flute_Music_Voice measure 138 / measure 8]
    fs'''2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [15 Bass_Flute_Music_Voice measure 139 / measure 9]
    fs'''2.
    \repeatTie

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [15 Bass_Flute_Music_Voice measure 140 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/2
            \stopTrillSpan
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [15 Bass_Flute_Rest_Voice measure 140 / measure 10]
            R1 * 1/2

        }

    >>

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [15 Bass_Flute_Music_Voice measure 141 / measure 11]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [15 Bass_Flute_Rest_Voice measure 141 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


o_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \o_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \o_Bass_Flute_Music_Voice

>>


o_Percussion_I_Music_Voice = {

    % [15 Percussion_I_Music_Voice measure 131 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \set Staff.instrumentName = \harmony-perc-i-markup
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    r16
    - \tweak color #(x11-color 'green4)
    \p
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \override Stem.direction = #down
    d'8.
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup

    d'4

    r4

    d'4

    % [15 Percussion_I_Music_Voice measure 132 / measure 2]
    r16

    d'8.

    d'4
    \revert Stem.direction

    r2
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    % [15 Percussion_I_Music_Voice measure 133 / measure 3]
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \once \override DynamicLineSpanner.staff-padding = 4
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    ef'!2.
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [15 Percussion_I_Music_Voice measure 134 / measure 4]
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
    b4 * 3/4
    - \tweak staff-padding 6
    ^ \baca-bd-superball-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    b4 * 1/4
    - \tweak color #(x11-color 'blue)
    \f
    \revert Stem.direction

    r2
    \revert TupletBracket.direction

    % [15 Percussion_I_Music_Voice measure 135 / measure 5]
    \override TupletBracket.direction = #up
    r16

    \override Stem.direction = #down
    d'8.
    - \tweak color #(x11-color 'blue)
    \baca-effort-f
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup

    r2

    % [15 Percussion_I_Music_Voice measure 136 / measure 6]
    d'4

    r2

    % [15 Percussion_I_Music_Voice measure 137 / measure 7]
    r16

    d'8.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-effort-f-sempre
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    d'2

    % [15 Percussion_I_Music_Voice measure 138 / measure 8]
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'2.

    % [15 Percussion_I_Music_Voice measure 139 / measure 9]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    d'2.
    \revert Stem.direction
    \revert TupletBracket.direction

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [15 Percussion_I_Music_Voice measure 140 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/2
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [15 Percussion_I_Rest_Voice measure 140 / measure 10]
            R1 * 1/2

        }

    >>

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [15 Percussion_I_Music_Voice measure 141 / measure 11]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [15 Percussion_I_Rest_Voice measure 141 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


o_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \o_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \o_Percussion_I_Music_Voice

>>


o_Percussion_II_Music_Voice = {

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [15 Percussion_II_Music_Voice measure 131 / measure 1]
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
            \baca-pp-ancora
            \set Staff.shortInstrumentName = \harmony-perc-ii-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [15 Percussion_II_Rest_Voice measure 131 / measure 1]
            R1 * 1

        }

    >>

    % [15 Percussion_II_Music_Voice measure 132 / measure 2]
    R1 * 1

    % [15 Percussion_II_Music_Voice measure 133 / measure 3]
    R1 * 3/4

    % [15 Percussion_II_Music_Voice measure 134 / measure 4]
    \override Stem.direction = #up
    c'8
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup

    r8

    c'8

    r8

    c'8
    \revert Stem.direction

    r8
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        % [15 Percussion_II_Music_Voice measure 135 / measure 5]
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 3
        \startStaff
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 0.5
        \override DynamicLineSpanner.staff-padding = 5
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r16

        \override Stem.direction = #down
        e'8
        - \tweak color #(x11-color 'blue)
        \pp
        - \tweak staff-padding 5
        ^ \baca-purpleheart-markup
        [

        a16

        c'16
        ]
        \revert Stem.direction

    }

    r4

    r4
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

    % [15 Percussion_II_Music_Voice measure 136 / measure 6]
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    r4

    r4

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        r16

        \override Stem.direction = #down
        a16
        [

        c'16

        e'16

        c'16
        ]

    }

    % [15 Percussion_II_Music_Voice measure 137 / measure 7]
    r16

    e'16
    [

    a16

    a16
    ]

    \tweak text #tuplet-number::calc-fraction-text
    \times 4/5 {

        r16

        c'8
        [

        e'16

        c'16
        ]
        \revert Stem.direction

    }

    r4
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [15 Percussion_II_Music_Voice measure 138 / measure 8]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 3/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [15 Percussion_II_Rest_Voice measure 138 / measure 8]
            R1 * 3/4

        }

    >>

    % [15 Percussion_II_Music_Voice measure 139 / measure 9]
    R1 * 3/4

    % [15 Percussion_II_Music_Voice measure 140 / measure 10]
    R1 * 1/2
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [15 Percussion_II_Music_Voice measure 141 / measure 11]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [15 Percussion_II_Rest_Voice measure 141 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


o_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \o_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \o_Percussion_II_Music_Voice

>>


o_Harp_Music_Voice = {

    % [15 Harp_Music_Voice measure 131 / measure 1]
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
    r2.
    - \tweak color #(x11-color 'green4)
    \p
    - \baca-damp
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r8

        <b' c''>4
        - \tweak color #(x11-color 'blue)
        \f
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup

    }

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [15 Harp_Music_Voice measure 132 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [15 Harp_Rest_Voice measure 132 / measure 2]
            R1 * 1

        }

    >>

    % [15 Harp_Music_Voice measure 133 / measure 3]
    ef'!2.
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer

    % [15 Harp_Music_Voice measure 134 / measure 4]
    e'8
    - \tweak color #(x11-color 'blue)
    \f
    - \snappizzicato

    r8

    e'8
    - \snappizzicato

    r8

    e'8
    - \snappizzicato

    r8

    % [15 Harp_Music_Voice measure 135 / measure 5]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r8

        <b' c''>4
        - \tweak color #(x11-color 'blue)
        \baca-f-ancora
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup

    }

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [15 Harp_Music_Voice measure 136 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [15 Harp_Rest_Voice measure 136 / measure 6]
            R1 * 3/4

        }

    >>

    % [15 Harp_Music_Voice measure 137 / measure 7]
    R1 * 3/4

    % [15 Harp_Music_Voice measure 138 / measure 8]
    R1 * 3/4

    % [15 Harp_Music_Voice measure 139 / measure 9]
    r2

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3 {

        r8

        <b' c''>4
        - \baca-double-flageolet
        - \tweak padding 1.5
        ^ \baca-lv-markup

    }

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [15 Harp_Music_Voice measure 140 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/2
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [15 Harp_Rest_Voice measure 140 / measure 10]
            R1 * 1/2

        }

    >>

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [15 Harp_Music_Voice measure 141 / measure 11]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [15 Harp_Rest_Voice measure 141 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


o_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \o_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \o_Harp_Music_Voice

>>


o_Viola_Music_Voice = {

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [15 Viola_Music_Voice measure 131 / measure 1]
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
            \ppp
            \set Staff.shortInstrumentName = \harmony-va-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [15 Viola_Rest_Voice measure 131 / measure 1]
            R1 * 1

        }

    >>

    % [15 Viola_Music_Voice measure 132 / measure 2]
    R1 * 1

    % [15 Viola_Music_Voice measure 133 / measure 3]
    R1 * 3/4

    % [15 Viola_Music_Voice measure 134 / measure 4]
    bf!4
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    bf!4
    :32
    - \accent

    bf!4
    :32
    - \accent

    % [15 Viola_Music_Voice measure 135 / measure 5]
    f'4
    - \tweak color #(x11-color 'DeepPink1)
    \p
    \bacaStopTextSpanSCP
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    - \tweak stencil ##f
    ~

    f'16
    \repeatTie

    r8.
    \bacaStopTextSpanBowSpeed

    r4

    % [15 Viola_Music_Voice measure 136 / measure 6]
    f'4
    - \tweak color #(x11-color 'DeepPink1)
    \p
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    - \tweak stencil ##f
    ~

    f'16
    \repeatTie

    r8.
    \bacaStopTextSpanBowSpeed

    r4

    % [15 Viola_Music_Voice measure 137 / measure 7]
    f'2.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-p-sempre
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "XFB"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    - \tweak stencil ##f
    ~

    % [15 Viola_Music_Voice measure 138 / measure 8]
    f'2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [15 Viola_Music_Voice measure 139 / measure 9]
    f'2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [15 Viola_Music_Voice measure 140 / measure 10]
    f'16
    \repeatTie

    r8.
    \bacaStopTextSpanBowSpeed

    r4
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [15 Viola_Music_Voice measure 141 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [15 Viola_Rest_Voice measure 141 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


o_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \o_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \o_Viola_Music_Voice

>>


o_Cello_I_Music_Voice = {

    % [15 Cello_I_Music_Voice measure 131 / measure 1]
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
    a,8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r4

    a,4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    a,8.
    \repeatTie

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    % [15 Cello_I_Music_Voice measure 132 / measure 2]
    r2

    r8

    a,8
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    a,16
    \repeatTie

    r8.
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [15 Cello_I_Music_Voice measure 133 / measure 3]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 3/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [15 Cello_I_Rest_Voice measure 133 / measure 3]
            R1 * 3/4

        }

    >>

    % [15 Cello_I_Music_Voice measure 134 / measure 4]
    aqf!4
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    aqf!4
    :32
    - \accent

    aqf!4
    :32
    - \accent

    % [15 Cello_I_Music_Voice measure 135 / measure 5]
    a,8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \bacaStopTextSpanSCP

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r2

    % [15 Cello_I_Music_Voice measure 136 / measure 6]
    a,2.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    % [15 Cello_I_Music_Voice measure 137 / measure 7]
    a,2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [15 Cello_I_Music_Voice measure 138 / measure 8]
    a,2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [15 Cello_I_Music_Voice measure 139 / measure 9]
    a,2
    - \tweak color #(x11-color 'blue)
    \baca-fff-scratch
    \repeatTie
    - \tweak stencil ##f
    ~

    a,8.
    \repeatTie

    r16
    - \baca-stop-on-string

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [15 Cello_I_Music_Voice measure 140 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/2
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [15 Cello_I_Rest_Voice measure 140 / measure 10]
            R1 * 1/2

        }

    >>

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [15 Cello_I_Music_Voice measure 141 / measure 11]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [15 Cello_I_Rest_Voice measure 141 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


o_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \o_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \o_Cello_I_Music_Voice

>>


o_Cello_II_Music_Voice = {

    % [15 Cello_II_Music_Voice measure 131 / measure 1]
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
    g,8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r4

    g,4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    g,8.
    \repeatTie

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    % [15 Cello_II_Music_Voice measure 132 / measure 2]
    r2

    r8

    g,8
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    g,16
    \repeatTie

    r8.
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    \times 8/10 {

        % [15 Cello_II_Music_Voice measure 133 / measure 3]
        \once \override TupletBracket.edge-height = #'(0.7 . 0)
        \once \override TupletNumber.text = #"10:8"
        f4
        - \tweak color #(x11-color 'blue)
        - \tweak self-alignment-X -0.9
        \baca-f-ancora
        - \baca-staccati #3
        - \abjad-invisible-line
        - \baca-text-spanner-left-text "P4"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP

        r4

        r4

        r8.

    }

    % [15 Cello_II_Music_Voice measure 134 / measure 4]
    f4
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    f4
    :32
    - \accent

    f4
    :32
    - \accent

    % [15 Cello_II_Music_Voice measure 135 / measure 5]
    g,8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \bacaStopTextSpanSCP

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r2

    % [15 Cello_II_Music_Voice measure 136 / measure 6]
    g,2.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    % [15 Cello_II_Music_Voice measure 137 / measure 7]
    g,2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [15 Cello_II_Music_Voice measure 138 / measure 8]
    g,2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [15 Cello_II_Music_Voice measure 139 / measure 9]
    g,2
    - \tweak color #(x11-color 'blue)
    \baca-fff-scratch
    \repeatTie
    - \tweak stencil ##f
    ~

    g,8.
    \repeatTie

    r16
    - \baca-stop-on-string

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [15 Cello_II_Music_Voice measure 140 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/2
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [15 Cello_II_Rest_Voice measure 140 / measure 10]
            R1 * 1/2

        }

    >>

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [15 Cello_II_Music_Voice measure 141 / measure 11]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [15 Cello_II_Rest_Voice measure 141 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


o_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \o_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \o_Cello_II_Music_Voice

>>


o_Contrabass_I_Music_Voice = {

    % [15 Contrabass_I_Music_Voice measure 131 / measure 1]
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
    gs,!8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r4

    gs,!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    gs,8.
    \repeatTie

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    % [15 Contrabass_I_Music_Voice measure 132 / measure 2]
    r2

    r8

    gs,!8
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    gs,16
    \repeatTie

    r8.
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    \times 8/11 {

        % [15 Contrabass_I_Music_Voice measure 133 / measure 3]
        \once \override TupletBracket.edge-height = #'(0.7 . 0)
        \once \override TupletNumber.text = #"11:8"
        r4

        dtqf'!4
        - \tweak color #(x11-color 'blue)
        - \tweak self-alignment-X -0.9
        \baca-f-ancora
        - \baca-staccati #3
        - \tweak X-offset 3
        ^ \baca-seven-e-flat
        - \abjad-invisible-line
        - \baca-text-spanner-left-text "P4"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanSCP

        r4

        r4

        r32

    }

    % [15 Contrabass_I_Music_Voice measure 134 / measure 4]
    dtqf'!4
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    dtqf'!4
    :32
    - \accent

    dtqf'!4
    :32
    - \accent

    % [15 Contrabass_I_Music_Voice measure 135 / measure 5]
    gs,!8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \bacaStopTextSpanSCP

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r2

    % [15 Contrabass_I_Music_Voice measure 136 / measure 6]
    gs,!2.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    % [15 Contrabass_I_Music_Voice measure 137 / measure 7]
    gs,2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [15 Contrabass_I_Music_Voice measure 138 / measure 8]
    gs,2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [15 Contrabass_I_Music_Voice measure 139 / measure 9]
    gs,2
    - \tweak color #(x11-color 'blue)
    \baca-fff-scratch
    \repeatTie
    - \tweak stencil ##f
    ~

    gs,8.
    \repeatTie

    r16
    - \baca-stop-on-string

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [15 Contrabass_I_Music_Voice measure 140 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/2
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [15 Contrabass_I_Rest_Voice measure 140 / measure 10]
            R1 * 1/2

        }

    >>

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [15 Contrabass_I_Music_Voice measure 141 / measure 11]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [15 Contrabass_I_Rest_Voice measure 141 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


o_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \o_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \o_Contrabass_I_Music_Voice

>>


o_Contrabass_II_Music_Voice = {

    % [15 Contrabass_II_Music_Voice measure 131 / measure 1]
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
    fs,!8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r4

    fs,!4
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    fs,8.
    \repeatTie

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    % [15 Contrabass_II_Music_Voice measure 132 / measure 2]
    r2

    r8

    fs,!8
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    fs,16
    \repeatTie

    r8.
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    \times 8/12 {

        % [15 Contrabass_II_Music_Voice measure 133 / measure 3]
        \once \override TupletBracket.edge-height = #'(0.7 . 0)
        \once \override TupletNumber.text = #"12:8"
        r4

        ef!4
        - \tweak color #(x11-color 'blue)
        - \tweak self-alignment-X -0.9
        \baca-f-ancora
        - \baca-staccati #3
        - \abjad-invisible-line
        - \baca-text-spanner-left-text "P4"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP

        r4

        r4

        r8

    }

    % [15 Contrabass_II_Music_Voice measure 134 / measure 4]
    dtqf'!4
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    dtqf'!4
    :32
    - \accent

    dtqf'!4
    :32
    - \accent

    % [15 Contrabass_II_Music_Voice measure 135 / measure 5]
    fs,!8.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \bacaStopTextSpanSCP

    r16
    - \tweak color #(x11-color 'blue)
    \f
    - \baca-stop-on-string

    r2

    % [15 Contrabass_II_Music_Voice measure 136 / measure 6]
    fs,!2.
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak stencil ##f
    ~

    % [15 Contrabass_II_Music_Voice measure 137 / measure 7]
    fs,2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [15 Contrabass_II_Music_Voice measure 138 / measure 8]
    fs,2.
    \repeatTie
    - \tweak stencil ##f
    ~

    % [15 Contrabass_II_Music_Voice measure 139 / measure 9]
    fs,2
    - \tweak color #(x11-color 'blue)
    \baca-fff-scratch
    \repeatTie
    - \tweak stencil ##f
    ~

    fs,8.
    \repeatTie

    r16
    - \baca-stop-on-string

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [15 Contrabass_II_Music_Voice measure 140 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/2
            \revert DynamicLineSpanner.staff-padding

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [15 Contrabass_II_Rest_Voice measure 140 / measure 10]
            R1 * 1/2

        }

    >>

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [15 Contrabass_II_Music_Voice measure 141 / measure 11]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [15 Contrabass_II_Rest_Voice measure 141 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


o_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \o_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \o_Contrabass_II_Music_Voice

>>
