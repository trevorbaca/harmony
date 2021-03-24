x_Global_Skips = {

    % [24 Global_Skips measure 217 / measure 1]
    \time 4/4
    \bar ""
    \baca-time-signature-color #'green4
    s1 * 1
    - \tweak extra-offset #'(0 . 18)
    - \baca-rehearsal-mark-markup "X" #10
%%% - \tweak extra-offset #'(0 . 10)
%%% - \baca-rehearsal-mark-markup "X" #4
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[X.1-3]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #1 #1 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [24 Global_Skips measure 218 / measure 2]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [24 Global_Skips measure 219 / measure 3]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [24 Global_Skips measure 220 / measure 4]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-snm-colored-left-only "[◀V.6]" #darkgreen
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation-tuplet-lhs #2 #0 #1 #"72" #2 #0 #2 #3 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [24 Global_Skips measure 221 / measure 5]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[X.4-5]"
    \bacaStartTextSpanSNM
    - \abjad-invisible-line
    - \baca-colored-bracketed-metric-modulation #2 #0 #1 #"48" #2 #1 #2 #0 #'(1 . 1) #'blue
    \bacaStartTextSpanMM

    % [24 Global_Skips measure 222 / measure 6]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [24 Global_Skips measure 223 / measure 7]
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-snm-left-only "[X.6-8]"
    \bacaStartTextSpanSNM

    % [24 Global_Skips measure 224 / measure 8]
    s1 * 1
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN

    % [24 Global_Skips measure 225 / measure 9]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN

    % [24 Global_Skips measure 226 / measure 10]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanSNM
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


x_Global_Rests = {

    % [24 Global_Rests measure 217 / measure 1]
    R1 * 1

    % [24 Global_Rests measure 218 / measure 2]
    R1 * 1

    % [24 Global_Rests measure 219 / measure 3]
    R1 * 1

    % [24 Global_Rests measure 220 / measure 4]
    R1 * 3/4

    % [24 Global_Rests measure 221 / measure 5]
    R1 * 1

    % [24 Global_Rests measure 222 / measure 6]
    R1 * 1

    % [24 Global_Rests measure 223 / measure 7]
    R1 * 1

    % [24 Global_Rests measure 224 / measure 8]
    R1 * 1

    % [24 Global_Rests measure 225 / measure 9]
    R1 * 5/4

    % [24 Global_Rests measure 226 / measure 10]
    R1 * 1/4

}


x_Bass_Flute_Music_Voice = {

    % [24 Bass_Flute_Music_Voice measure 217 / measure 1]
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
    f'''8
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
    - \tweak staff-padding 9
    \startTextSpan
    \set Staff.shortInstrumentName = \harmony-bfl-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    f'''8
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "A"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 9
    \startTextSpan
    - \tweak stencil ##f
    ~

    f'''16
    \repeatTie

    r8.
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \stopTextSpan

    f'''8
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
    - \tweak staff-padding 9
    \startTextSpan

    f'''8
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "A"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 9
    \startTextSpan
    - \tweak stencil ##f
    ~

    f'''16
    \repeatTie

    r8.
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \stopTextSpan

    % [24 Bass_Flute_Music_Voice measure 218 / measure 2]
    f'''8
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
    - \tweak staff-padding 9
    \startTextSpan

    f'''8
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "A"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 9
    \startTextSpan
    - \tweak stencil ##f
    ~

    f'''16
    \repeatTie

    r8.
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \stopTextSpan

    f'''8
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
    - \tweak staff-padding 9
    \startTextSpan

    f'''8
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "A"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 9
    \startTextSpan
    - \tweak stencil ##f
    ~

    f'''16
    \repeatTie

    r8.
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \stopTextSpan

    % [24 Bass_Flute_Music_Voice measure 219 / measure 3]
    f'''8
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
    - \tweak staff-padding 9
    \startTextSpan

    f'''8
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "A"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 9
    \startTextSpan
    - \tweak stencil ##f
    ~

    f'''16
    \repeatTie

    r8.
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \stopTextSpan

    f'''8
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
    - \tweak staff-padding 9
    \startTextSpan

    f'''8
    - \tweak color #(x11-color 'blue)
    \mf
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \stopTextSpan
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T"
    - \baca-text-spanner-right-text "A"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 9
    \startTextSpan
    - \tweak stencil ##f
    ~

    f'''16
    \repeatTie

    r8.
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \stopTextSpan

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [24 Bass_Flute_Music_Voice measure 220 / measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [24 Bass_Flute_Rest_Voice measure 220 / measure 4]
            R1 * 3/4

        }

    >>

    % [24 Bass_Flute_Music_Voice measure 221 / measure 5]
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

    % [24 Bass_Flute_Music_Voice measure 222 / measure 6]
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

    % [24 Bass_Flute_Music_Voice measure 223 / measure 7]
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

    % [24 Bass_Flute_Music_Voice measure 224 / measure 8]
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

    % [24 Bass_Flute_Music_Voice measure 225 / measure 9]
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
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Bass_Flute_Music_Voice"
        {

            % [24 Bass_Flute_Music_Voice measure 226 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 1/4

        }

        \context Voice = "Bass_Flute_Rest_Voice"
        {

            % [24 Bass_Flute_Rest_Voice measure 226 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


x_Bass_Flute_Music_Staff = <<

    \context GlobalRests = "Global_Rests"
    \x_Global_Rests

    \context Voice = "Bass_Flute_Music_Voice"
    \x_Bass_Flute_Music_Voice

>>


x_Percussion_I_Music_Voice = {

    % [24 Percussion_I_Music_Voice measure 217 / measure 1]
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
    \mp
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-perc-i-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    d'16
    \repeatTie

    r8.

    d'4
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    % [24 Percussion_I_Music_Voice measure 218 / measure 2]
    d'4
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    d'4
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    % [24 Percussion_I_Music_Voice measure 219 / measure 3]
    d'4
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    d'4
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie
    \revert Stem.direction

    r8.
    \revert TupletBracket.direction

    % [24 Percussion_I_Music_Voice measure 220 / measure 4]
    \once \override Stem.direction = #up
    d'2.
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-pp-ancora
    - \tweak staff-padding 6
    ^ \baca-triangle-markup

    % [24 Percussion_I_Music_Voice measure 221 / measure 5]
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    d'8.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-p-sempre
    - \tweak staff-padding 6
    ^ \baca-slate-scrape-markup

    r16

    r8

    d'8
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    d'8.

    r16

    % [24 Percussion_I_Music_Voice measure 222 / measure 6]
    r8

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

    % [24 Percussion_I_Music_Voice measure 223 / measure 7]
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

    r8.

    % [24 Percussion_I_Music_Voice measure 224 / measure 8]
    d'8.

    r16

    r8

    d'8
    - \tweak stencil ##f
    ~

    d'16
    \repeatTie

    r8.

    d'8.

    r16

    % [24 Percussion_I_Music_Voice measure 225 / measure 9]
    r8

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
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_I_Music_Voice"
        {

            % [24 Percussion_I_Music_Voice measure 226 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Percussion_I_Rest_Voice"
        {

            % [24 Percussion_I_Rest_Voice measure 226 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


x_Percussion_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \x_Global_Rests

    \context Voice = "Percussion_I_Music_Voice"
    \x_Percussion_I_Music_Voice

>>


x_Percussion_II_Music_Voice = {

    % [24 Percussion_II_Music_Voice measure 217 / measure 1]
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
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    b8
    - \tweak staff-padding 6
    ^ \baca-bd-superball-markup
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r8
    - \tweak color #(x11-color 'blue)
    \mf

    r4

    r8

    b8
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<

    r8.
    - \tweak color #(x11-color 'blue)
    \mf

    b16
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    ~

    % [24 Percussion_II_Music_Voice measure 218 / measure 2]
    b16

    r8.
    - \tweak color #(x11-color 'blue)
    \mf

    r4

    r16

    b16
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    ~
    [

    b16
    ]

    r16
    - \tweak color #(x11-color 'blue)
    \mf

    r4

    % [24 Percussion_II_Music_Voice measure 219 / measure 3]
    r8.

    b16
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    ~

    b16

    r8.
    - \tweak color #(x11-color 'blue)
    \mf

    b8
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    \revert Stem.direction

    r8
    - \tweak color #(x11-color 'blue)
    \mf

    r4
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [24 Percussion_II_Music_Voice measure 220 / measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 3/4

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [24 Percussion_II_Rest_Voice measure 220 / measure 4]
            R1 * 3/4

        }

    >>

    % [24 Percussion_II_Music_Voice measure 221 / measure 5]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 3
    \startStaff
    \once \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override TupletBracket.staff-padding = 0.5
    \override DynamicLineSpanner.staff-padding = 5
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    e'16
    - \tweak color #(x11-color 'blue)
    \ff
    - \tweak staff-padding 5
    ^ \baca-purpleheart-markup

    r8.

    r2.
    \revert TupletBracket.direction
    \revert TupletBracket.staff-padding
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [24 Percussion_II_Music_Voice measure 222 / measure 6]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [24 Percussion_II_Rest_Voice measure 222 / measure 6]
            R1 * 1

        }

    >>

    % [24 Percussion_II_Music_Voice measure 223 / measure 7]
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 1
    \startStaff
    \override Stem.direction = #down
    \override TupletBracket.direction = #up
    \override DynamicLineSpanner.staff-padding = 6
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    c'1
    :32
    - \tweak color #(x11-color 'blue)
    \p
    - \tweak staff-padding 6
    ^ \baca-tam-tam-markup
    \glissando

    % [24 Percussion_II_Music_Voice measure 224 / measure 8]
    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    c'1

    % [24 Percussion_II_Music_Voice measure 225 / measure 9]
    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    c'1
    :32
    \revert Stem.direction
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 3
        \startStaff
        \override Stem.direction = #down
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 0.5
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        r4

        \once \override DynamicLineSpanner.staff-padding = 5
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
        \revert Stem.direction
        \revert TupletBracket.direction
        \revert TupletBracket.staff-padding

    }

    <<

        \context Voice = "Percussion_II_Music_Voice"
        {

            % [24 Percussion_II_Music_Voice measure 226 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \bacaStopTextSpanMetricModulation

        }

        \context Voice = "Percussion_II_Rest_Voice"
        {

            % [24 Percussion_II_Rest_Voice measure 226 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


x_Percussion_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \x_Global_Rests

    \context Voice = "Percussion_II_Music_Voice"
    \x_Percussion_II_Music_Voice

>>


x_Harp_Music_Voice = {

    % [24 Harp_Music_Voice measure 217 / measure 1]
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
    a'16
    - \tweak color #(x11-color 'blue)
    \mf
    \laissezVibrer
    - \tweak staff-padding 4
    ^ \baca-pdlt-markup
    \set Staff.shortInstrumentName = \harmony-hp-markup
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    r8.

    r4

    r8

    a'16
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer

    r16

    r8.

    a'16
    \laissezVibrer

    % [24 Harp_Music_Voice measure 218 / measure 2]
    r2

    r16

    a'16
    - \tweak color #(x11-color 'blue)
    \mf
    \laissezVibrer

    r8

    r4

    % [24 Harp_Music_Voice measure 219 / measure 3]
    r8.

    a'16
    - \tweak color #(x11-color 'blue)
    \mp
    \laissezVibrer

    r4

    a'16
    \laissezVibrer

    r8.

    r4
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [24 Harp_Music_Voice measure 220 / measure 4]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 3/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [24 Harp_Rest_Voice measure 220 / measure 4]
            R1 * 3/4

        }

    >>

    % [24 Harp_Music_Voice measure 221 / measure 5]
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
    c'8.
    - \tweak color #(x11-color 'blue)
    - \tweak self-alignment-X -0.9
    \baca-p-sempre
    - \tweak staff-padding 6
    ^ \baca-whisk-markup
    \override Staff.BarLine.bar-extent = #'(0 . 2)
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    r16

    r8

    c'8
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r8.

    c'8.

    r16

    % [24 Harp_Music_Voice measure 222 / measure 6]
    r8

    c'8
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r8.

    c'8.

    r16

    r8

    c'8
    - \tweak stencil ##f
    ~

    % [24 Harp_Music_Voice measure 223 / measure 7]
    c'16
    \repeatTie

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

    % [24 Harp_Music_Voice measure 224 / measure 8]
    c'8.

    r16

    r8

    c'8
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r8.

    c'8.

    r16

    % [24 Harp_Music_Voice measure 225 / measure 9]
    r8

    c'8
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie

    r8.

    c'8.

    r16

    r8

    c'8
    - \tweak stencil ##f
    ~

    c'16
    \repeatTie
    \revert Stem.direction

    r8.
    \revert TupletBracket.direction
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Harp_Music_Voice"
        {

            % [24 Harp_Music_Voice measure 226 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Harp_Rest_Voice"
        {

            % [24 Harp_Rest_Voice measure 226 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


x_Harp_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \x_Global_Rests

    \context Voice = "Harp_Music_Voice"
    \x_Harp_Music_Voice

>>


x_Viola_Music_Voice = {

    % [24 Viola_Music_Voice measure 217 / measure 1]
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
    \pitchedTrill
    f'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak staff-padding 3
    \startTrillSpan g'
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-va-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    f'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    r2
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    r8

    \pitchedTrill
    f'8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak staff-padding 3
    \startTrillSpan g'
    - \tweak stencil ##f
    ~

    % [24 Viola_Music_Voice measure 218 / measure 2]
    f'8
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    r2

    \pitchedTrill
    f'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak staff-padding 3
    \startTrillSpan g'
    - \tweak stencil ##f
    ~

    \abjad-invisible-music-coloring
    f'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    % [24 Viola_Music_Voice measure 219 / measure 3]
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    r8

    \pitchedTrill
    f'8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak staff-padding 3
    \startTrillSpan g'
    - \tweak stencil ##f
    ~

    f'8
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    % [24 Viola_Music_Voice measure 220 / measure 4]
    \afterGrace
    d'2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \bacaStopTextSpanSCP
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T2"
    - \baca-text-spanner-right-text "T4"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        cs'!8
        - \tweak color #(x11-color 'blue)
        \!
        \bacaStopTextSpanSCP

    }


    % [24 Viola_Music_Voice measure 221 / measure 5]
    fs!4
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs!8
    :32
    [

    fs!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P4"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs!4
    :32

    fs!16
    :32
    [

    fs!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [24 Viola_Music_Voice measure 222 / measure 6]
    fs!4
    :32

    fs!16
    :32
    [

    fs!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs!2
    :32

    % [24 Viola_Music_Voice measure 223 / measure 7]
    fs!8
    :32
    - \tweak color #(x11-color 'blue)
    \baca-pp-parenthesized
    - \tweak color #(x11-color 'blue)
    \<
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

    fs!8.
    :32
    [

    fs!16
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs!2
    :32

    % [24 Viola_Music_Voice measure 224 / measure 8]
    fs!8.
    :32
    [

    fs!16
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs!2
    :32

    fs!4
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [24 Viola_Music_Voice measure 225 / measure 9]
    fs!4
    :32
    - \tweak color #(x11-color 'blue)
    \f

    fs!8
    :32
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

    fs!16
    :32
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

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs!2
    :32
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Viola_Music_Voice"
        {

            % [24 Viola_Music_Voice measure 226 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "Viola_Rest_Voice"
        {

            % [24 Viola_Rest_Voice measure 226 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


x_Viola_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \x_Global_Rests

    \context Voice = "Viola_Music_Voice"
    \x_Viola_Music_Voice

>>


x_Cello_I_Music_Voice = {

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [24 Cello_I_Music_Voice measure 217 / measure 1]
        \set Staff.shortInstrumentName = \harmony-vc-i-markup
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        \set Staff.instrumentName = \harmony-vc-i-markup
        \override TupletBracket.direction = #down
        \override DynamicLineSpanner.staff-padding = 4
    %%% \once \override Staff.Clef.X-extent = ##f
    %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
        \clef "treble"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        f'4
        - \tweak color #(x11-color 'green4)
        \pp
        - \baca-staccati #3
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "P"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP
        \set Staff.shortInstrumentName = \harmony-vc-i-markup
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        f'4
        - \baca-staccati #3

        f'4
        - \baca-staccati #3

    }

    r4
    \bacaStopTextSpanSCP

    r8

    \pitchedTrill
    f'8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak staff-padding 3
    \startTrillSpan g'

    % [24 Cello_I_Music_Voice measure 218 / measure 2]
    f'8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    r2

    \pitchedTrill
    f'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak staff-padding 3
    \startTrillSpan g'
    - \tweak stencil ##f
    ~

    \abjad-invisible-music-coloring
    f'8
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    % [24 Cello_I_Music_Voice measure 219 / measure 3]
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanSCP
    \stopTrillSpan

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        f'4
        - \baca-staccati #3
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "P"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanMetricModulation

        f'4
        - \baca-staccati #3
        \revert TupletBracket.direction

    }

    % [24 Cello_I_Music_Voice measure 220 / measure 4]
    f'4
    - \baca-staccati #3

    r2
    \bacaStopTextSpanSCP
    \bacaStopTextSpanMetricModulation

    % [24 Cello_I_Music_Voice measure 221 / measure 5]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    fs,!2.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    \glissando
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs,!4
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [24 Cello_I_Music_Voice measure 222 / measure 6]
    fs,!4
    :32

    fs,!8.
    :32
    [

    fs,!16
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P4"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!8.
    :32
    [

    fs,!16
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [24 Cello_I_Music_Voice measure 223 / measure 7]
    fs,!2.
    :32
    - \tweak color #(x11-color 'blue)
    \baca-pp-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    fs,!4
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [24 Cello_I_Music_Voice measure 224 / measure 8]
    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    % [24 Cello_I_Music_Voice measure 225 / measure 9]
    fs,!4
    :32
    - \tweak color #(x11-color 'blue)
    \f

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    [
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!16
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!16
    :32
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

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs,!4
    :32
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_I_Music_Voice"
        {

            % [24 Cello_I_Music_Voice measure 226 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_I_Rest_Voice"
        {

            % [24 Cello_I_Rest_Voice measure 226 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


x_Cello_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \x_Global_Rests

    \context Voice = "Cello_I_Music_Voice"
    \x_Cello_I_Music_Voice

>>


x_Cello_II_Music_Voice = {

    % [24 Cello_II_Music_Voice measure 217 / measure 1]
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-vc-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
    \pitchedTrill
    f'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak staff-padding 3
    \startTrillSpan g'
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    f'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    r2
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    r8

    \pitchedTrill
    f'8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak staff-padding 3
    \startTrillSpan g'
    - \tweak stencil ##f
    ~

    % [24 Cello_II_Music_Voice measure 218 / measure 2]
    f'8
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    r2

    \pitchedTrill
    f'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak staff-padding 3
    \startTrillSpan g'
    - \tweak stencil ##f
    ~

    \abjad-invisible-music-coloring
    f'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    % [24 Cello_II_Music_Voice measure 219 / measure 3]
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    r8

    \pitchedTrill
    f'8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak staff-padding 3
    \startTrillSpan g'
    - \tweak stencil ##f
    ~

    f'8
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [24 Cello_II_Music_Voice measure 220 / measure 4]
    \afterGrace
    d2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \bacaStopTextSpanSCP
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T2"
    - \baca-text-spanner-right-text "T4"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 3
    \bacaStartTextSpanSCP
    {

        cs!8
        - \tweak color #(x11-color 'blue)
        \!
        \bacaStopTextSpanSCP

    }


    % [24 Cello_II_Music_Voice measure 221 / measure 5]
    fs,!2
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    % [24 Cello_II_Music_Voice measure 222 / measure 6]
    fs,!2
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!2
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P4"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [24 Cello_II_Music_Voice measure 223 / measure 7]
    fs,!4
    :32
    - \tweak color #(x11-color 'blue)
    \baca-pp-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    % [24 Cello_II_Music_Voice measure 224 / measure 8]
    fs,!4
    :32

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    [
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!16
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [24 Cello_II_Music_Voice measure 225 / measure 9]
    fs,!2
    :32
    - \tweak color #(x11-color 'blue)
    \f

    fs,!16
    :32
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

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs,!2
    :32
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Cello_II_Music_Voice"
        {

            % [24 Cello_II_Music_Voice measure 226 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_II_Rest_Voice"
        {

            % [24 Cello_II_Rest_Voice measure 226 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


x_Cello_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \x_Global_Rests

    \context Voice = "Cello_II_Music_Voice"
    \x_Cello_II_Music_Voice

>>


x_Contrabass_I_Music_Voice = {

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        % [24 Contrabass_I_Music_Voice measure 217 / measure 1]
        \set Staff.shortInstrumentName = \harmony-cb-i-markup
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        \set Staff.instrumentName = \harmony-cb-i-markup
        \override TupletBracket.direction = #down
        \override DynamicLineSpanner.staff-padding = 4
    %%% \once \override Staff.Clef.X-extent = ##f
    %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
        \clef "treble"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        \once \override Staff.StaffSymbol.color = #(x11-color 'blue)
        e'4
        - \tweak color #(x11-color 'green4)
        \pp
        - \baca-staccati #3
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "P"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP
        \set Staff.shortInstrumentName = \harmony-cb-i-markup
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        e'4
        - \baca-staccati #3

        e'4
        - \baca-staccati #3

    }

    r4
    \bacaStopTextSpanSCP

    r8

    \pitchedTrill
    e'8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak staff-padding 3
    \startTrillSpan f'

    % [24 Contrabass_I_Music_Voice measure 218 / measure 2]
    e'8
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    r2

    \pitchedTrill
    e'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak staff-padding 3
    \startTrillSpan f'
    - \tweak stencil ##f
    ~

    \abjad-invisible-music-coloring
    e'8
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    % [24 Contrabass_I_Music_Voice measure 219 / measure 3]
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \bacaStopTextSpanSCP
    \stopTrillSpan

    \tweak text #tuplet-number::calc-fraction-text
    \times 2/3
    {

        r4

        e'4
        - \baca-staccati #3
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "P"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 3
        \bacaStartTextSpanSCP
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "MM"
        - \tweak bound-details.right.padding 2.75
        - \tweak staff-padding 5.5
        \bacaStartTextSpanMetricModulation

        e'4
        - \baca-staccati #3
        \revert TupletBracket.direction

    }

    % [24 Contrabass_I_Music_Voice measure 220 / measure 4]
    e'4
    - \baca-staccati #3

    r2
    \bacaStopTextSpanSCP
    \bacaStopTextSpanMetricModulation

    % [24 Contrabass_I_Music_Voice measure 221 / measure 5]
    \once \override Staff.Clef.X-extent = ##f
    \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    fs,!2
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    \glissando
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    % [24 Contrabass_I_Music_Voice measure 222 / measure 6]
    fs,!4
    :32

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!16
    :32
    [

    fs,!8.
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [24 Contrabass_I_Music_Voice measure 223 / measure 7]
    fs,!2
    :32
    - \tweak color #(x11-color 'blue)
    \baca-pp-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P4"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!8.
    :32
    [

    fs,!16
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [24 Contrabass_I_Music_Voice measure 224 / measure 8]
    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!2
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [24 Contrabass_I_Music_Voice measure 225 / measure 9]
    fs,!4
    :32
    - \tweak color #(x11-color 'blue)
    \f

    fs,!2
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!16
    :32
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

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs,!4
    :32
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_I_Music_Voice"
        {

            % [24 Contrabass_I_Music_Voice measure 226 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_I_Rest_Voice"
        {

            % [24 Contrabass_I_Rest_Voice measure 226 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


x_Contrabass_I_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \x_Global_Rests

    \context Voice = "Contrabass_I_Music_Voice"
    \x_Contrabass_I_Music_Voice

>>


x_Contrabass_II_Music_Voice = {

    % [24 Contrabass_II_Music_Voice measure 217 / measure 1]
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.BarLine.bar-extent = #'(-2 . 2)
    \stopStaff
    \once \override Staff.StaffSymbol.line-count = 5
    \startStaff
    \set Staff.instrumentName = \harmony-cb-ii-markup
    \override DynamicLineSpanner.staff-padding = 4
%%% \once \override Staff.Clef.X-extent = ##f
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
    \clef "treble"
    \once \override Staff.StaffSymbol.color = #(x11-color 'green4)
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    \pitchedTrill
    e'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "T4"
    - \tweak bound-details.right.padding 2.75
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    - \tweak staff-padding 3
    \startTrillSpan f'
    - \tweak stencil ##f
    ~
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    \abjad-invisible-music-coloring
    e'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    r2
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    r8

    \pitchedTrill
    e'8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak staff-padding 3
    \startTrillSpan f'
    - \tweak stencil ##f
    ~

    % [24 Contrabass_II_Music_Voice measure 218 / measure 2]
    e'8
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    r2

    \pitchedTrill
    e'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak staff-padding 3
    \startTrillSpan f'
    - \tweak stencil ##f
    ~

    \abjad-invisible-music-coloring
    e'4 * 1/2
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    % [24 Contrabass_II_Music_Voice measure 219 / measure 3]
    r2
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan

    r8

    \pitchedTrill
    e'8
    - \tweak color #(x11-color 'blue)
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \<
    - \tweak staff-padding 3
    \startTrillSpan f'
    - \tweak stencil ##f
    ~

    e'8
    - \tweak color #(x11-color 'blue)
    \mp
    \repeatTie
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    - \tweak stencil #abjad-flared-hairpin
    \>

    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'blue)
    \set Staff.forceClef = ##t
    r8
    - \tweak color #(x11-color 'blue)
    \!
    \stopTrillSpan
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [24 Contrabass_II_Music_Voice measure 220 / measure 4]
    \afterGrace
    d'2.
    - \tweak color #(x11-color 'blue)
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak circled-tip ##t
    \>
    \bacaStopTextSpanSCP
    \glissando
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "T2"
    - \baca-text-spanner-right-text "T4"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    {

        cs'!8
        - \tweak color #(x11-color 'blue)
        \!
        \bacaStopTextSpanSCP

    }


    % [24 Contrabass_II_Music_Voice measure 221 / measure 5]
    fs,!8.
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    - \accent
    [
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "O"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP
    \glissando

    \hide NoteHead
    \override Accidental.stencil = ##f
    \override NoteColumn.glissando-skip = ##t
    \override NoteHead.no-ledgers = ##t
    fs,!16
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    % [24 Contrabass_II_Music_Voice measure 222 / measure 6]
    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!2
    :32

    fs,!8.
    :32
    [

    fs,!16
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [24 Contrabass_II_Music_Voice measure 223 / measure 7]
    fs,!4
    :32
    - \tweak color #(x11-color 'blue)
    \baca-pp-parenthesized
    - \tweak color #(x11-color 'blue)
    \<

    fs,!4
    :32
    - \accent
    \bacaStopTextSpanSCP
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P4"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P2"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    % [24 Contrabass_II_Music_Voice measure 224 / measure 8]
    fs,!4
    :32

    fs,!8
    :32
    [

    fs,!8
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P3"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    fs,!4
    :32

    fs,!8.
    :32
    [

    fs,!16
    :32
    - \accent
    \bacaStopTextSpanSCP
    ]
    - \abjad-solid-line-with-arrow
    - \baca-text-spanner-left-text "P1"
    - \tweak staff-padding 5.5
    \bacaStartTextSpanSCP

    % [24 Contrabass_II_Music_Voice measure 225 / measure 9]
    fs,!2
    :32
    - \tweak color #(x11-color 'blue)
    \f

    fs,!16
    :32
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

    \revert Accidental.stencil
    \revert NoteColumn.glissando-skip
    \revert NoteHead.no-ledgers
    \undo \hide NoteHead
    fs,!2
    :32
    \bacaStopTextSpanSCP
    \revert DynamicLineSpanner.staff-padding

    <<

        \context Voice = "Contrabass_II_Music_Voice"
        {

            % [24 Contrabass_II_Music_Voice measure 226 / measure 10]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Contrabass_II_Rest_Voice"
        {

            % [24 Contrabass_II_Rest_Voice measure 226 / measure 10]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


x_Contrabass_II_Music_Staff = <<

%%% \context GlobalRests = "Global_Rests"
%%% \x_Global_Rests

    \context Voice = "Contrabass_II_Music_Voice"
    \x_Contrabass_II_Music_Voice

>>
