ab_Global_Skips = {

    % [28 Global_Skips measure 256 / measure 1]
    \time 2/4
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 1/2
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "BB" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "BB" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[BB.1-4]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #1 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [28 Global_Skips measure 257 / measure 2]
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [28 Global_Skips measure 258 / measure 3]
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [28 Global_Skips measure 259 / measure 4]
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN

    % [28 Global_Skips measure 260 / measure 5]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀Y.2]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #6 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [28 Global_Skips measure 261 / measure 6]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    - \tweak extra-offset #'(4 . -30)
    ^ \harmony-text-twenty-seven
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [28 Global_Skips measure 262 / measure 7]
    \time 7/4
    \baca-time-signature-color #'blue
    s1 * 7/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[BB.5-8]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"48" #2 #0 #6 #5 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [28 Global_Skips measure 263 / measure 8]
    s1 * 7/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN

    % [28 Global_Skips measure 264 / measure 9]
    s1 * 7/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN

    % [28 Global_Skips measure 265 / measure 10]
    s1 * 7/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN

    % [28 Global_Skips measure 266 / measure 11]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


ab_Global_Rests = {

    % [28 Global_Rests measure 256 / measure 1]
    R1 * 1/2

    % [28 Global_Rests measure 257 / measure 2]
    R1 * 1/2

    % [28 Global_Rests measure 258 / measure 3]
    R1 * 1/2

    % [28 Global_Rests measure 259 / measure 4]
    R1 * 1/2

    % [28 Global_Rests measure 260 / measure 5]
    R1 * 3/2

    % [28 Global_Rests measure 261 / measure 6]
    \once \override MultiMeasureRestText.extra-offset = #'(0 . 2.5)
    \baca-fermata-measure
    R1 * 1/4
    ^ \baca-fermata-markup

    % [28 Global_Rests measure 262 / measure 7]
    R1 * 7/4

    % [28 Global_Rests measure 263 / measure 8]
    R1 * 7/4

    % [28 Global_Rests measure 264 / measure 9]
    R1 * 7/4

    % [28 Global_Rests measure 265 / measure 10]
    R1 * 7/4

    % [28 Global_Rests measure 266 / measure 11]
    R1 * 1/4

}


ab_Bass_Flute_Music_Voice = {

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [28 Bass_Flute_Music_Voice measure 256 / measure 1]
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
            b'1 * 1/2
            - \tweak color #(x11-color 'green4)
            \ff
            \set Staff.shortInstrumentName = \harmony-bfl-markup
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [28 Bass_Flute_Rest_Voice measure 256 / measure 1]
            R1 * 1/2

        }

    >>

    % [28 Bass_Flute_Music_Voice measure 257 / measure 2]
    R1 * 1/2

    % [28 Bass_Flute_Music_Voice measure 258 / measure 3]
    R1 * 1/2

    % [28 Bass_Flute_Music_Voice measure 259 / measure 4]
    R1 * 1/2

    \tweak text #tuplet-number::calc-fraction-text
    \times 12/14 {

        % [28 Bass_Flute_Music_Voice measure 260 / measure 5]
        r32

        \override NoteHead.font-size = -3
        \override Accidental.font-size = -3
        \override Accidental.X-offset = 0
        \override Accidental.Y-offset = -2
        af'!32
        - \tweak color #(x11-color 'blue)
        - \tweak circled-tip ##t
        \<
        [
        - \tweak bound-details.left.text \harmony-d-d-sharp-markup
        \startTrillSpan

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
        \mp
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak circled-tip ##t
        \>

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

        g'32

        gs'!32
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

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [28 Bass_Flute_Music_Voice measure 261 / measure 6]
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

            % [28 Bass_Flute_Rest_Voice measure 261 / measure 6]
            R1 * 1/4

        }

    >>

    % [28 Bass_Flute_Music_Voice measure 262 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t
    a''1.. * 1/7
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<
    \glissando
    - \tweak bound-details.right.padding 3
    \startTrillSpan

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    % [28 Bass_Flute_Music_Voice measure 263 / measure 8]
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''1.. * 1/7
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    % [28 Bass_Flute_Music_Voice measure 264 / measure 9]
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''1.. * 1/7
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    a''4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    % [28 Bass_Flute_Music_Voice measure 265 / measure 10]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    a''1.. * 1/7
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    a''4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    a''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    a''4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    a''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    a''4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    a''4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [28 Bass_Flute_Music_Voice measure 266 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \p
            \stopTrillSpan

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [28 Bass_Flute_Rest_Voice measure 266 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ab_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \ab_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \ab_Bass_Flute_Music_Voice

>>


ab_Percussion_I_Music_Voice = {

    % [28 Percussion_I_Music_Voice measure 256 / measure 1]
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
    d'2 * 1/2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 6
    ^ \baca-triangle-markup
    - \tweak color #(x11-color 'blue)
    \<
    \glissando
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    % [28 Percussion_I_Music_Voice measure 257 / measure 2]
    d'2
    - \tweak color #(x11-color 'blue)
    \p

    % [28 Percussion_I_Music_Voice measure 258 / measure 3]
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    % [28 Percussion_I_Music_Voice measure 259 / measure 4]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    \revert Dots.transparent
    \revert Stem.transparent
    d'4..
    :32
    - \tweak color #(x11-color 'blue)
    \p
    \revert Stem.direction

    r16

    % [28 Percussion_I_Music_Voice measure 260 / measure 5]
    \once \override Stem.direction = #up
    c'16
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-f-sempre
    - \tweak staff-padding 6
    ^ \baca-brake-drum-markup

    r8.

    r1

    r4

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [28 Percussion_I_Music_Voice measure 261 / measure 6]
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

            % [28 Percussion_I_Rest_Voice measure 261 / measure 6]
            R1 * 1/4

        }

    >>

    % [28 Percussion_I_Music_Voice measure 262 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 0)
    \override Stem.direction = #up
    d'1.. * 1/7
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 6
    ^ \baca-triangle-markup
    - \tweak color #(x11-color 'blue)
    \<
    \glissando

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    % [28 Percussion_I_Music_Voice measure 263 / measure 8]
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'1.. * 1/7
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    % [28 Percussion_I_Music_Voice measure 264 / measure 9]
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'1.. * 1/7
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    % [28 Percussion_I_Music_Voice measure 265 / measure 10]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    d'1.. * 1/7
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>

    \abjad-invisible-music-coloring
    d'4
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    \<

    \abjad-invisible-music-coloring
    d'4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    \>
    \revert Stem.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [28 Percussion_I_Music_Voice measure 266 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \p

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [28 Percussion_I_Rest_Voice measure 266 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ab_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ab_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \ab_Percussion_I_Music_Voice

>>


ab_Percussion_II_Music_Voice = {

    % [28 Percussion_II_Music_Voice measure 256 / measure 1]
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-perc-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    cs''!8
    - \tweak color #(x11-color 'blue)
    \p
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8

    r4

    % [28 Percussion_II_Music_Voice measure 257 / measure 2]
    r2

    % [28 Percussion_II_Music_Voice measure 258 / measure 3]
    r2

    % [28 Percussion_II_Music_Voice measure 259 / measure 4]
    r2
    \revert DynamicLineSpanner.staff-padding

    % [28 Percussion_II_Music_Voice measure 260 / measure 5]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \once \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 5
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "percussion"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
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
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r8
    - \tweak color #(x11-color 'blue)
    \!

    r1

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [28 Percussion_II_Music_Voice measure 261 / measure 6]
            \stopStaff
            \once \override Staff.StaffSymbol.line-count = 0
            \startStaff
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [28 Percussion_II_Rest_Voice measure 261 / measure 6]
            R1 * 1/4

        }

    >>

    % [28 Percussion_II_Music_Voice measure 262 / measure 7]
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
    r2.
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r2

    r4.

    a'8
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X 0.25
    \baca-mp-sempre
    \laissezVibrer
    - \tweak self-alignment-X 0.25
    - \tweak staff-padding 4
    ^ \baca-glockenspiel-markup

    % [28 Percussion_II_Music_Voice measure 263 / measure 8]
    r2.

    r2

    r4.

    a'8
    \laissezVibrer

    % [28 Percussion_II_Music_Voice measure 264 / measure 9]
    r2.

    r2

    r4.

    a'8
    \laissezVibrer

    % [28 Percussion_II_Music_Voice measure 265 / measure 10]
    r2.

    r2

    r4.

    a'8
    \laissezVibrer
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [28 Percussion_II_Music_Voice measure 266 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [28 Percussion_II_Rest_Voice measure 266 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ab_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ab_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \ab_Percussion_II_Music_Voice

>>


ab_Harp_Music_Voice = {

    % [28 Harp_Music_Voice measure 256 / measure 1]
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-hp-markup
    \override DynamicLineSpanner.staff-padding = 6
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    a,,4
    - \tweak color #(x11-color 'blue)
    \f
    \laissezVibrer
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r4

    % [28 Harp_Music_Voice measure 257 / measure 2]
    r2

    % [28 Harp_Music_Voice measure 258 / measure 3]
    r2

    % [28 Harp_Music_Voice measure 259 / measure 4]
    r2
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [28 Harp_Music_Voice measure 260 / measure 5]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 3/2

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [28 Harp_Rest_Voice measure 260 / measure 5]
            R1 * 3/2

        }

    >>

    % [28 Harp_Music_Voice measure 261 / measure 6]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 0
    \startStaff
    R1 * 1/4
    \override Staff.BarLine.bar-extent = #'(0 . 2)

    % [28 Harp_Music_Voice measure 262 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \override DynamicLineSpanner.staff-padding = 4
    <e ff!>1..
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-mp-sempre
    - \tweak staff-padding 5.5
    ^ \harmony-rh-bow-plus-lh-bow-markup
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "0 pul. / beat"
    - \tweak staff-padding 3
    \startTextSpan

    % [28 Harp_Music_Voice measure 263 / measure 8]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    <e ff!>1..
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "6 pul. / beat"
    - \tweak staff-padding 3
    \startTextSpan

    % [28 Harp_Music_Voice measure 264 / measure 9]
    <e ff!>1..
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "0 pul. / beat"
    - \tweak staff-padding 3
    \startTextSpan

    % [28 Harp_Music_Voice measure 265 / measure 10]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    \revert Dots.transparent
    \revert Stem.transparent
    <e ff!>1..
    \stopTextSpan
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "8 pul. / beat"
    - \baca-text-spanner-right-text "0 pul. / beat"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \startTextSpan
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [28 Harp_Music_Voice measure 266 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4
            \stopTextSpan

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [28 Harp_Rest_Voice measure 266 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ab_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ab_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \ab_Harp_Music_Voice

>>


ab_Viola_Music_Voice = {

    % [28 Viola_Music_Voice measure 256 / measure 1]
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
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    gqf!2
    - \tweak color #(x11-color 'green4)
    \p
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "poc. scr."
    - \tweak bound-details.right.padding 6
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [28 Viola_Music_Voice measure 257 / measure 2]
    \override NoteColumn.glissando-skip = ##t
    gqf!2

    % [28 Viola_Music_Voice measure 258 / measure 3]
    gqf!2

    % [28 Viola_Music_Voice measure 259 / measure 4]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    \revert Dots.transparent
    \revert Stem.transparent
    gqf!2

    % [28 Viola_Music_Voice measure 260 / measure 5]
    \once \override NoteHead.style = #'harmonic-black
    <g' af'! bf'!>1.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    \bacaStopTextSpanBowSpeed

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [28 Viola_Music_Voice measure 261 / measure 6]
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

            % [28 Viola_Rest_Voice measure 261 / measure 6]
            R1 * 1/4

        }

    >>

    % [28 Viola_Music_Voice measure 262 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    e1..
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-p-sempre
    \glissando
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "poco scr."
    - \tweak bound-details.right.padding 3.25
    - \tweak staff-padding 3
    \bacaStartTextSpanBowSpeed

    % [28 Viola_Music_Voice measure 263 / measure 8]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    e1..

    % [28 Viola_Music_Voice measure 264 / measure 9]
    e1..

    % [28 Viola_Music_Voice measure 265 / measure 10]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    \revert Dots.transparent
    \revert Stem.transparent
    e1..
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [28 Viola_Music_Voice measure 266 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanBowSpeed

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [28 Viola_Rest_Voice measure 266 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ab_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ab_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \ab_Viola_Music_Voice

>>


ab_Cello_I_Music_Voice = {

    % [28 Cello_I_Music_Voice measure 256 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-i-markup
    \override NoteHead.style = #'harmonic
    \override DynamicLineSpanner.staff-padding = 4
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    e'''2
    - \tweak padding 1
    _ \baca-string-i-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-vc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [28 Cello_I_Music_Voice measure 257 / measure 2]
    e'''8
    \repeatTie
    [
    \glissando

    cs'''!8
    ]
    - \tweak stencil ##f
    ~

    cs'''4
    \repeatTie
    \glissando

    % [28 Cello_I_Music_Voice measure 258 / measure 3]
    e'''2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~

    % [28 Cello_I_Music_Voice measure 259 / measure 4]
    e'''8
    \repeatTie
    [
    \glissando

    cs'''!8
    ]
    - \tweak stencil ##f
    ~

    cs'''4
    \repeatTie
    \revert NoteHead.style

    % [28 Cello_I_Music_Voice measure 260 / measure 5]
    \override NoteHead.style = #'harmonic-black
    <a' b' c''>4
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<

    \override NoteHead.transparent = ##t
    \baca-not-yet-pitched-coloring
    b'8
    [

    \baca-not-yet-pitched-coloring
    b'8
    \!
    - \tweak color #(x11-color 'blue)
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
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ]
    \revert NoteHead.style

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [28 Cello_I_Music_Voice measure 261 / measure 6]
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

            % [28 Cello_I_Rest_Voice measure 261 / measure 6]
            R1 * 1/4

        }

    >>

    % [28 Cello_I_Music_Voice measure 262 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    \pitchedTrill
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak padding 1
    _ \baca-string-i-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
    - \tweak bound-details.right.padding 3
    \startTrillSpan e'''

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    % [28 Cello_I_Music_Voice measure 263 / measure 8]
    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    % [28 Cello_I_Music_Voice measure 264 / measure 9]
    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    % [28 Cello_I_Music_Voice measure 265 / measure 10]
    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'''!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'''!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [28 Cello_I_Music_Voice measure 266 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \stopTrillSpan

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [28 Cello_I_Rest_Voice measure 266 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ab_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ab_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \ab_Cello_I_Music_Voice

>>


ab_Cello_II_Music_Voice = {

    % [28 Cello_II_Music_Voice measure 256 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-ii-markup
    \override NoteHead.style = #'harmonic
    \override DynamicLineSpanner.staff-padding = 4
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    a''2
    - \tweak padding 1
    _ \baca-string-i-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [28 Cello_II_Music_Voice measure 257 / measure 2]
    a''8
    \repeatTie
    [
    \glissando

    cs'''!8
    ]
    - \tweak stencil ##f
    ~

    cs'''4
    \repeatTie
    \glissando

    % [28 Cello_II_Music_Voice measure 258 / measure 3]
    a''2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    - \tweak stencil ##f
    ~

    % [28 Cello_II_Music_Voice measure 259 / measure 4]
    a''8
    \repeatTie
    [
    \glissando

    cs'''!8
    ]
    - \tweak stencil ##f
    ~

    cs'''4
    \repeatTie
    \revert NoteHead.style

    % [28 Cello_II_Music_Voice measure 260 / measure 5]
    \override NoteHead.style = #'harmonic-black
    <g' af'! bf'!>8
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    [

    \override NoteHead.transparent = ##t
    c''8
    \!
    - \tweak color #(x11-color 'blue)
    \<
    ]

    c''8.
    [

    c''16
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
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
    - \tweak circled-tip ##t
    \>
    ]
    \revert NoteHead.transparent

    <g' af'! bf'!>2
    :32
    \revert NoteHead.style

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [28 Cello_II_Music_Voice measure 261 / measure 6]
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

            % [28 Cello_II_Rest_Voice measure 261 / measure 6]
            R1 * 1/4

        }

    >>

    % [28 Cello_II_Music_Voice measure 262 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    \override NoteHead.style = #'harmonic
    \pitchedTrill
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak padding 1
    _ \baca-string-i-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
    - \tweak bound-details.right.padding 3
    \startTrillSpan cs'''

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    % [28 Cello_II_Music_Voice measure 263 / measure 8]
    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    % [28 Cello_II_Music_Voice measure 264 / measure 9]
    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    % [28 Cello_II_Music_Voice measure 265 / measure 10]
    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    a''4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    a''4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>
    \revert NoteHead.style
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [28 Cello_II_Music_Voice measure 266 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \stopTrillSpan

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [28 Cello_II_Rest_Voice measure 266 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ab_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ab_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \ab_Cello_II_Music_Voice

>>


ab_Contrabass_I_Music_Voice = {

    % [28 Contrabass_I_Music_Voice measure 256 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-i-markup
    \override NoteHead.style = #'harmonic
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    cs'!4
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak padding 1
    _ \baca-string-iii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak bound-details.right.padding 2
    \startTrillSpan
    \set Staff.shortInstrumentName = \harmony-cb-i-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    cs'!4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    % [28 Contrabass_I_Music_Voice measure 257 / measure 2]
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    % [28 Contrabass_I_Music_Voice measure 258 / measure 3]
    cs'!4
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak bound-details.right.padding 2
    \startTrillSpan

    cs'!4
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \revert NoteHead.style

    % [28 Contrabass_I_Music_Voice measure 259 / measure 4]
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    % [28 Contrabass_I_Music_Voice measure 260 / measure 5]
    \override NoteHead.style = #'harmonic-black
    <a' b' c''>4
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<

    \override NoteHead.transparent = ##t
    \baca-not-yet-pitched-coloring
    b'8.
    [

    \baca-not-yet-pitched-coloring
    b'16
    \!
    - \tweak color #(x11-color 'blue)
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
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    ]
    \revert NoteHead.transparent

    <a' b' c''>2
    :32
    \revert NoteHead.style

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [28 Contrabass_I_Music_Voice measure 261 / measure 6]
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

            % [28 Contrabass_I_Rest_Voice measure 261 / measure 6]
            R1 * 1/4

        }

    >>

    % [28 Contrabass_I_Music_Voice measure 262 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override NoteHead.style = #'harmonic
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak padding 1
    _ \baca-string-iii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    - \tweak bound-details.right.padding 3
    \startTrillSpan

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    % [28 Contrabass_I_Music_Voice measure 263 / measure 8]
    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    % [28 Contrabass_I_Music_Voice measure 264 / measure 9]
    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    % [28 Contrabass_I_Music_Voice measure 265 / measure 10]
    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>

    cs'!4 * 1/2
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<

    \abjad-invisible-music-coloring
    cs'!4 * 1/2
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \>
    \revert NoteHead.style
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [28 Contrabass_I_Music_Voice measure 266 / measure 11]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4
            - \tweak color #(x11-color 'blue)
            \!
            \stopTrillSpan

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [28 Contrabass_I_Rest_Voice measure 266 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ab_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ab_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \ab_Contrabass_I_Music_Voice

>>


ab_Contrabass_II_Music_Voice = {

    % [28 Contrabass_II_Music_Voice measure 256 / measure 1]
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
    a,2
    - \tweak padding 1
    _ \baca-string-iii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T4"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [28 Contrabass_II_Music_Voice measure 257 / measure 2]
    \once \override Dots.transparent = ##t
    \once \override Stem.transparent = ##t
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    \override Dots.transparent = ##t
    \override Stem.transparent = ##t
    a,2

    % [28 Contrabass_II_Music_Voice measure 258 / measure 3]
    a,2
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \baca-text-spanner-right-text "T4"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    % [28 Contrabass_II_Music_Voice measure 259 / measure 4]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    \revert Dots.transparent
    \revert Stem.transparent
    a,2 * 3/4
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>

    \abjad-invisible-music-coloring
    a,8
    \bacaStopTextSpanSCP

    % [28 Contrabass_II_Music_Voice measure 260 / measure 5]
    \override NoteHead.style = #'harmonic-black
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    <g' af'! bf'!>2.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    ^ \baca-quasi-bisb-markup
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \override NoteHead.transparent = ##t
    c''8
    [

    c''8
    \!
    - \tweak color #(x11-color 'blue)
    \<
    ]
    \revert NoteHead.transparent

    <g' af'! bf'!>2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \revert NoteHead.style

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [28 Contrabass_II_Music_Voice measure 261 / measure 6]
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

            % [28 Contrabass_II_Rest_Voice measure 261 / measure 6]
            R1 * 1/4

        }

    >>

    % [28 Contrabass_II_Music_Voice measure 262 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    a,4
    - \tweak padding 1
    _ \baca-string-iii-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    \<
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T4+"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    a,4

    a,4

    a,4
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    a,4

    a,4
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T2"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    a,4

    % [28 Contrabass_II_Music_Voice measure 263 / measure 8]
    a,4
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    a,4

    a,4

    a,4
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    a,4

    a,4
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    a,4

    % [28 Contrabass_II_Music_Voice measure 264 / measure 9]
    a,4
    - \tweak color #(x11-color 'blue)
    \ff
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    a,4

    a,4

    a,4
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    a,4

    a,4
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    a,4

    % [28 Contrabass_II_Music_Voice measure 265 / measure 10]
    a,4
    - \tweak color #(x11-color 'blue)
    \baca-ff-parenthesized
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \baca-text-spanner-right-text "T4+"
    - \tweak bound-details.right.padding 3.25
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP

    a,4

    a,4

    a,4

    a,4

    a,4

    a,4
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [28 Contrabass_II_Music_Voice measure 266 / measure 11]
            \abjad-invisible-music-coloring
            \revert Accidental.stencil
            \revert NoteColumn.glissando-skip
            \revert NoteHead.no-ledgers
            \undo \hide NoteHead
            a,1 * 1/4
            \bacaStopTextSpanSCP
            \!

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [28 Contrabass_II_Rest_Voice measure 266 / measure 11]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


ab_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \ab_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \ab_Contrabass_II_Music_Voice

>>
