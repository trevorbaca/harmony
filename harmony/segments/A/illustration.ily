A_Global_Skips = {                                                             %! abjad.Path.extern()

    % [A Global_Skips measure 1]                                               %! baca.SegmentMaker._comment_measure_numbers()
    \time 6/4                                                                  %! EXPLICIT_TIME_SIGNATURE:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 3/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "1"                                             %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[A.1]"                                        %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "96"                        %! EXPLICIT_METRONOME_MARK:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "96" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-left-only "[0'00'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [A Global_Skips measure 2]                                               %! baca.SegmentMaker._comment_measure_numbers()
    \bar ".|:"                                                                 %! baca.bar_line():baca.IndicatorCommand._call()
%%% \once \override Score.BarLine.X-extent = #'(0 . 2)                         %! MEASURE_2:NOT_MOL:baca.bar_line_x_extent():baca.OverrideCommand._call(1)
    \once \override Score.BarLine.X-extent = #'(0 . 3)                         %! MEASURE_2:ONLY_MOL:baca.bar_line_x_extent():baca.OverrideCommand._call(1)
    \time 5/4                                                                  %! EXPLICIT_TIME_SIGNATURE:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 5/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    - \tweak extra-offset #'(0 . 18)                                           %! baca.rehearsal_mark():baca.IndicatorCommand._call()
    - \baca-rehearsal-mark-markup "A"                                          %! baca.rehearsal_mark():baca.IndicatorCommand._call()
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "2"                                             %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-left-only "[A.2]"                                        %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \baca-start-ct-left-only "[0'03'']"                                      %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()

    % [A Global_Skips measure 3]                                               %! baca.SegmentMaker._comment_measure_numbers()
    \time 3/4                                                                  %! EXPLICIT_TIME_SIGNATURE:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 3/4                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! baca.SegmentMaker._attach_metronome_marks(1)
%@% \bacaStopTextSpanCT                                                        %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% - \baca-start-mn-left-only "3"                                             %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    - \baca-start-snm-colored-left-only "[▶C.1]" #darkgreen                    %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStartTextSpanSNM                                                      %! STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) %! EXPLICIT_METRONOME_MARK:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-colored-bracketed-mixed-number-metric-modulation-tuplet-lhs #2 #0 #1 #"57" #"3" #"5" #2 #0 #5 #3 #2 #0 #'(1 . 1) #'blue %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
%@% - \baca-start-ct-both "[0'06'']" "[0'10'']"                                %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
%@% \bacaStartTextSpanCT                                                       %! CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    \bar ":|."                                                                 %! baca.bar_line():baca.IndicatorCommand._call()
%%% \once \override Score.BarLine.X-extent = #'(0 . 1.5)                       %! MEASURE_4:ONLY_MOL:baca.bar_line_x_extent():baca.OverrideCommand._call(1)

    % [A Global_Skips measure 4]                                               %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):baca.SegmentMaker._comment_measure_numbers()
    \time 1/4                                                                  %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):EXPLICIT_TIME_SIGNATURE:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._make_global_skips(3)
    \baca-time-signature-transparent                                           %! PHANTOM:baca.SegmentMaker._style_phantom_measures(2)
    s1 * 1/4                                                                   %! PHANTOM:baca.SegmentMaker._make_global_skips(3)
    \bacaStopTextSpanLMN                                                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):LOCAL_MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
%@% \bacaStopTextSpanMN                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):MEASURE_NUMBER:baca.SegmentMaker._label_measure_numbers()
    \bacaStopTextSpanSNM                                                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):STAGE_NUMBER:baca.SegmentMaker._label_stage_numbers()
    \bacaStopTextSpanMM                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):SEGMENT_FINAL_STOP_MM_SPANNER:baca.SegmentMaker._attach_metronome_marks(4)
%@% \bacaStopTextSpanCT                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(1):CLOCK_TIME:baca.SegmentMaker._label_clock_time()
    \once \override Score.BarLine.transparent = ##t                            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(3)
    \once \override Score.SpanBar.transparent = ##t                            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(3)

}                                                                              %! abjad.Path.extern()


A_Global_Rests = {                                                             %! abjad.Path.extern()

    % [A Global_Rests measure 1]                                               %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [A Global_Rests measure 2]                                               %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 5/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [A Global_Rests measure 3]                                               %! baca.SegmentMaker._comment_measure_numbers()
    R1 * 3/4                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [A Global_Rests measure 4]                                               %! PHANTOM:baca.SegmentMaker._style_phantom_measures(4):baca.SegmentMaker._comment_measure_numbers()
    R1 * 1/4                                                                   %! PHANTOM:baca.SegmentMaker._make_global_rests(2)

}                                                                              %! abjad.Path.extern()


A_Bass_Flute_Music_Voice_A = {                                                 %! abjad.Path.extern()

    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    d'2...                                                                     %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


A_Bass_Flute_Music_Voice_B = {                                                 %! abjad.Path.extern()

    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    e'4..                                                                      %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


A_Bass_Flute_Music_Voice_C = {                                                 %! abjad.Path.extern()

    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    d'8.

    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    d'2
    \repeatTie

}                                                                              %! abjad.Path.extern()


A_Bass_Flute_Music_Voice_D = {                                                 %! abjad.Path.extern()

    \voiceTwo                                                                  %! abjad.on_beat_grace_container(4)
    \baca-mock-pitch-coloring                                                  %! MOCK:baca.SegmentMaker._color_mock_pitch()
    e'4..                                                                      %! harmony.appoggiato()

}                                                                              %! abjad.Path.extern()


A_Bass_Flute_Music_Voice = {                                                   %! abjad.Path.extern()

    % [A Bass_Flute_Music_Voice measure 1]                                     %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():-PARTS:baca.IndicatorCommand._call()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.margin_markup():-PARTS:baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-bass-flute-markup                     %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    \clef "treble"                                                             %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    r16                                                                        %! harmony.appoggiato()
    ^ \baca-default-indicator-markup "(“BassFlute”)"                           %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-explicit-indicator-markup "[“Bfl.”]"                               %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-bfl-markup                       %! REDRAWN_EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):baca.margin_markup():-PARTS:baca.IndicatorCommand._call()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d'
                f'
            >8 * 2/5
            [
            (

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            g'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            a'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            g'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            f'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            g'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            a'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            g'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            f'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        \A_Bass_Flute_Music_Voice_A                                            %! abjad.Path.extern()

    >>

    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    r16                                                                        %! harmony.appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            <
                \tweak font-size #0
                \tweak transparent ##t
                e'
                g'
            >8 * 2/5
            [
            (

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            a'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            g'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            f'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            g'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            a'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        \A_Bass_Flute_Music_Voice_B                                            %! abjad.Path.extern()

    >>

    % [A Bass_Flute_Music_Voice measure 2]                                     %! baca.SegmentMaker._comment_measure_numbers()
    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    r16                                                                        %! harmony.appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            <
                \tweak font-size #0
                \tweak transparent ##t
                d'
                g'
            >8 * 2/5
            [
            (

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            f'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            g'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            a'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            g'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            f'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            g'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            a'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        \A_Bass_Flute_Music_Voice_C                                            %! abjad.Path.extern()

    >>

    \oneVoice                                                                  %! abjad.on_beat_grace_container(5)
    r16                                                                        %! harmony.appoggiato()

    <<

        \context Voice = "On_Beat_Grace_Container"
        {
            \set fontSize = #-3                                                %! abjad.on_beat_grace_container(1)

            \slash                                                             %! abjad.on_beat_grace_container(2)
            \voiceOne                                                          %! abjad.on_beat_grace_container(3)
            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            <
                \tweak font-size #0
                \tweak transparent ##t
                e'
                g'
            >8 * 2/5
            [
            (

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            f'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            g'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

            \baca-mock-pitch-coloring                                          %! MOCK:baca.SegmentMaker._color_mock_pitch()
            a'8 * 2/5
        %@% ^ \baca-duration-multiplier-markup #"2" #"5"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            )
            ]

        }

        \context Voice = "Bass_Flute_Music_Voice"
        \A_Bass_Flute_Music_Voice_D                                            %! abjad.Path.extern()

    >>

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Music_Voice"                              %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Bass_Flute_Music_Voice measure 3]                             %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 3/4                                                         %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Rest_Voice"                               %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Bass_Flute_Rest_Voice measure 3]                              %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Music_Voice"                              %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Bass_Flute_Music_Voice measure 4]                             %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM_MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Bass_Flute_Rest_Voice"                               %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Bass_Flute_Rest_Voice measure 4]                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


A_Bass_Flute_Music_Staff = <<                                                  %! abjad.Path.extern()

    \context GlobalRests = "Global_Rests"                                      %! abjad.ScoreTemplate._make_global_context()
    \A_Global_Rests                                                            %! abjad.Path.extern()

    \context Voice = "Bass_Flute_Music_Voice"                                  %! harmony.ScoreTemplate.__call__()
    \A_Bass_Flute_Music_Voice                                                  %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


A_Percussion_I_Music_Voice = {                                                 %! abjad.Path.extern()

    % [A Percussion_I_Music_Voice measure 1]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.margin_markup():-PARTS:baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-percussion-i-markup                   %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    \override Staff.BarLine.bar-extent = #'(-2 . 0)                            %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():-PARTS:baca.IndicatorCommand._call()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \override DynamicLineSpanner.staff-padding = #6                            %! baca.dls_staff_padding():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f                                  %! MEASURE_1:SHIFTED_CLEF:baca.clef_shift():baca.clef_x_extent_false():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! MEASURE_1:SHIFTED_CLEF:baca.clef_extra_offset():baca.clef_shift():baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! EXPLICIT_CLEF:baca.SegmentMaker._set_status_tag():baca.clef():baca.IndicatorCommand._call()
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! EXPLICIT_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! EXPLICIT_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! EXPLICIT_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):baca.clef():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    r1                                                                         %! harmony.upbeat_quarter_note()
    ^ \baca-default-indicator-markup "(“Percussion”)"                          %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-explicit-indicator-markup "[“Perc. I”]"                            %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-perc-i-markup                    %! REDRAWN_EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):baca.margin_markup():-PARTS:baca.IndicatorCommand._call()
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! EXPLICIT_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    r4                                                                         %! harmony.upbeat_quarter_note()

    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    b4 * 3/4                                                                   %! harmony.upbeat_quarter_note()
    - \tweak parent-alignment-X #0                                             %! baca.markup():baca.IndicatorCommand._call()
    - \tweak self-alignment-X #0                                               %! baca.markup():baca.IndicatorCommand._call()
    - \tweak staff-padding #5.5                                                %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-bd-superball-markup                                                %! baca.markup():baca.IndicatorCommand._call()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.hairpin():PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.hairpin():PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.hairpin():PiecewiseCommand(1)

%@% \baca-invisible-music-coloring                                             %! INVISIBLE_COLORING:baca.invisible_music():baca.IndicatorCommand._call()
    \baca-invisible-music                                                      %! INVISIBLE:baca.invisible_music():baca.IndicatorCommand._call()
    b4 * 1/4                                                                   %! harmony.upbeat_quarter_note()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():SPANNER_STOP:baca.hairpin():PiecewiseCommand(2)
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
    \breathe                                                                   %! baca.breathe():baca.IndicatorCommand._call()

    % [A Percussion_I_Music_Voice measure 2]                                   %! baca.SegmentMaker._comment_measure_numbers()
    b4 * 3/4                                                                   %! harmony.begin_end_quarter_notes()
    - \laissezVibrer                                                           %! baca.laissez_vibrer():baca.IndicatorCommand._call()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.hairpin():PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.hairpin():PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.hairpin():PiecewiseCommand(1)

%@% \baca-invisible-music-coloring                                             %! INVISIBLE_COLORING:baca.invisible_music():baca.IndicatorCommand._call()
    \baca-invisible-music                                                      %! INVISIBLE:baca.invisible_music():baca.IndicatorCommand._call()
    b4 * 1/4                                                                   %! harmony.begin_end_quarter_notes()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():SPANNER_STOP:baca.hairpin():PiecewiseCommand(2)
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

    r2.                                                                        %! harmony.begin_end_quarter_notes()

    b4 * 3/4                                                                   %! harmony.begin_end_quarter_notes()
%@% ^ \baca-duration-multiplier-markup #"3" #"4"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak circled-tip ##t                                                   %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.hairpin():PiecewiseCommand(1)
    - \tweak stencil #abjad-flared-hairpin                                     %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.hairpin():PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.hairpin():PiecewiseCommand(1)

%@% \baca-invisible-music-coloring                                             %! INVISIBLE_COLORING:baca.invisible_music():baca.IndicatorCommand._call()
    \baca-invisible-music                                                      %! INVISIBLE:baca.invisible_music():baca.IndicatorCommand._call()
    b4 * 1/4                                                                   %! harmony.begin_end_quarter_notes()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():SPANNER_STOP:baca.hairpin():PiecewiseCommand(2)
%@% ^ \baca-duration-multiplier-markup #"1" #"4"                               %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)
    \breathe                                                                   %! baca.breathe():baca.IndicatorCommand._call()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Percussion_I_Music_Voice measure 3]                           %! baca.SegmentMaker._comment_measure_numbers()
            \override Staff.BarLine.bar-extent = #'(-2 . 1)                    %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():-PARTS:baca.IndicatorCommand._call()
            \stopStaff                                                         %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \once \override Staff.StaffSymbol.line-count = 3                   %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \startStaff                                                        %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c'1 * 3/4                                                          %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
            - \tweak staff-padding #5.5                                        %! baca.markup():baca.IndicatorCommand._call()
            ^ \baca-purpleheart-markup                                         %! baca.markup():baca.IndicatorCommand._call()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            \revert DynamicLineSpanner.staff-padding                           %! baca.dls_staff_padding():baca.OverrideCommand._call(2)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Percussion_I_Rest_Voice measure 3]                            %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Music_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Percussion_I_Music_Voice measure 4]                           %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM_MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_I_Rest_Voice"                             %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Percussion_I_Rest_Voice measure 4]                            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


A_Percussion_I_Music_Staff = <<                                                %! abjad.Path.extern()

    \context Voice = "Percussion_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \A_Percussion_I_Music_Voice                                                %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


A_Percussion_II_Music_Voice = {                                                %! abjad.Path.extern()

    % [A Percussion_II_Music_Voice measure 1]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.margin_markup():-PARTS:baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-percussion-ii-markup                  %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.X-extent = ##f                                  %! MEASURE_1:SHIFTED_CLEF:baca.clef_shift():baca.clef_x_extent_false():baca.OverrideCommand._call(1)
%%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)                     %! MEASURE_1:SHIFTED_CLEF:baca.clef_extra_offset():baca.clef_shift():baca.OverrideCommand._call(1)
    \clef "percussion"                                                         %! EXPLICIT_CLEF:baca.SegmentMaker._set_status_tag():baca.clef():baca.IndicatorCommand._call()
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'blue)                      %! EXPLICIT_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! EXPLICIT_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! EXPLICIT_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):baca.clef():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    d'4                                                                        %! harmony.quarter_initiated_cells()
    ^ \baca-default-indicator-markup "(“Percussion”)"                          %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding #9.5                                                %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-slate-scrape-markup                                                %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-explicit-indicator-markup "[“Perc. II”]"                           %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \abjad-dashed-line-with-hook                                             %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-circle-markup                       %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-circle-bowing-markup %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanCircleBow                                                %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-perc-ii-markup                   %! REDRAWN_EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):baca.margin_markup():-PARTS:baca.IndicatorCommand._call()
    \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)                    %! EXPLICIT_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    r2..                                                                       %! harmony.quarter_initiated_cells()
    \bacaStopTextSpanCircleBow                                                 %! SPANNER_STOP:CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(3)

    d'8
    - \abjad-dashed-line-with-hook                                             %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-circle-markup                       %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-circle-bowing-markup %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanCircleBow                                                %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)

    d'8
    \repeatTie

    r8                                                                         %! harmony.quarter_initiated_cells()
    \bacaStopTextSpanCircleBow                                                 %! SPANNER_STOP:CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(3)

    % [A Percussion_II_Music_Voice measure 2]                                  %! baca.SegmentMaker._comment_measure_numbers()
    d'4                                                                        %! harmony.quarter_initiated_cells()
    - \abjad-dashed-line-with-hook                                             %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-circle-markup                       %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-circle-bowing-markup %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanCircleBow                                                %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)

    r4.                                                                        %! harmony.quarter_initiated_cells()
    \bacaStopTextSpanCircleBow                                                 %! SPANNER_STOP:CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(3)

    d'8
    - \abjad-dashed-line-with-hook                                             %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-circle-markup                       %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-circle-bowing-markup %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanCircleBow                                                %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)

    d'8
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    d'8
    \bacaStopTextSpanCircleBow                                                 %! SPANNER_STOP:CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(3)
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__
    - \abjad-dashed-line-with-hook                                             %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-circle-markup                       %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-circle-bowing-markup %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #5.5                                                %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanCircleBow                                                %! CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(1)

    d'8
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r8                                                                         %! harmony.quarter_initiated_cells()
    \bacaStopTextSpanCircleBow                                                 %! SPANNER_STOP:CIRCLE_BOW:baca.circle_bow_spanner():PiecewiseCommand(3)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Percussion_II_Music_Voice measure 3]                          %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \once \override Staff.StaffSymbol.line-count = 3                   %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \startStaff                                                        %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c'1 * 3/4                                                          %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
            - \tweak staff-padding #5.5                                        %! baca.markup():baca.IndicatorCommand._call()
            ^ \baca-purpleheart-markup                                         %! baca.markup():baca.IndicatorCommand._call()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Percussion_II_Rest_Voice measure 3]                           %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Music_Voice"                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Percussion_II_Music_Voice measure 4]                          %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM_MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Percussion_II_Rest_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Percussion_II_Rest_Voice measure 4]                           %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


A_Percussion_II_Music_Staff = <<                                               %! abjad.Path.extern()

    \context Voice = "Percussion_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \A_Percussion_II_Music_Voice                                               %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


A_Harp_Music_Voice = {                                                         %! abjad.Path.extern()

    % [A Harp_Music_Voice measure 1]                                           %! baca.SegmentMaker._comment_measure_numbers()
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.margin_markup():-PARTS:baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-harp-markup                           %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    \override Staff.BarLine.bar-extent = #'(0 . 2)                             %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():-PARTS:baca.IndicatorCommand._call()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.line-count = 1                           %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \override Stem.direction = #down                                           %! baca.stem_down():baca.OverrideCommand._call(1)
    \clef "treble"                                                             %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    b'4                                                                        %! harmony.quarter_initiated_cells()
    ^ \baca-default-indicator-markup "(“Harp”)"                                %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    - \tweak staff-padding #5.5                                                %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-whisk-markup                                                       %! baca.markup():baca.IndicatorCommand._call()
    ^ \baca-explicit-indicator-markup "[“Hp.”]"                                %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-hp-markup                        %! REDRAWN_EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):baca.margin_markup():-PARTS:baca.IndicatorCommand._call()

    r2..                                                                       %! harmony.quarter_initiated_cells()

    b'8

    b'8
    \repeatTie

    r8                                                                         %! harmony.quarter_initiated_cells()

    % [A Harp_Music_Voice measure 2]                                           %! baca.SegmentMaker._comment_measure_numbers()
    b'4                                                                        %! harmony.quarter_initiated_cells()

    r4.                                                                        %! harmony.quarter_initiated_cells()

    b'8

    b'8
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    b'8
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    b'8
    \repeatTie
    \revert Stem.direction                                                     %! baca.stem_down():baca.OverrideCommand._call(2)

    r8                                                                         %! harmony.quarter_initiated_cells()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Music_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Harp_Music_Voice measure 3]                                   %! baca.SegmentMaker._comment_measure_numbers()
            \override Staff.BarLine.bar-extent = #'(-2 . 2)                    %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():-PARTS:baca.IndicatorCommand._call()
            \stopStaff                                                         %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \once \override Staff.StaffSymbol.line-count = 5                   %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \startStaff                                                        %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c'1 * 3/4                                                          %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Rest_Voice"                                     %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Harp_Rest_Voice measure 3]                                    %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Music_Voice"                                    %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Harp_Music_Voice measure 4]                                   %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM_MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Harp_Rest_Voice"                                     %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Harp_Rest_Voice measure 4]                                    %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


A_Harp_Music_Staff = <<                                                        %! abjad.Path.extern()

    \context Voice = "Harp_Music_Voice"                                        %! harmony.ScoreTemplate.__call__()
    \A_Harp_Music_Voice                                                        %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


A_Viola_Music_Voice = {                                                        %! abjad.Path.extern()

    % [A Viola_Music_Voice measure 1]                                          %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():-PARTS:baca.IndicatorCommand._call()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.margin_markup():-PARTS:baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-viola-markup                          %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    \clef "alto"                                                               %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    r16                                                                        %! harmony.appoggiato()
    ^ \baca-default-indicator-markup "(“Viola”)"                               %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-explicit-indicator-markup "[“Va.”]"                                %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-va-markup                        %! REDRAWN_EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):baca.margin_markup():-PARTS:baca.IndicatorCommand._call()

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    c'2...                                                                     %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #8                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    r16                                                                        %! harmony.appoggiato()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    c'4..                                                                      %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #8                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    % [A Viola_Music_Voice measure 2]                                          %! baca.SegmentMaker._comment_measure_numbers()
    r16                                                                        %! harmony.appoggiato()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    c'8.
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #8                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    c'2
    \repeatTie

    r16                                                                        %! harmony.appoggiato()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    c'4..                                                                      %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #8                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Music_Voice"                                   %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Viola_Music_Voice measure 3]                                  %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \once \override Staff.StaffSymbol.line-count = 1                   %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \startStaff                                                        %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c'1 * 3/4                                                          %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            \bacaStopTextSpanDamp                                              %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)
            \override Staff.BarLine.bar-extent = #'(-2 . 0)                    %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():-PARTS:baca.IndicatorCommand._call()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Rest_Voice"                                    %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Viola_Rest_Voice measure 3]                                   %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Music_Voice"                                   %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Viola_Music_Voice measure 4]                                  %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM_MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Viola_Rest_Voice"                                    %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Viola_Rest_Voice measure 4]                                   %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


A_Viola_Music_Staff = <<                                                       %! abjad.Path.extern()

    \context Voice = "Viola_Music_Voice"                                       %! harmony.ScoreTemplate.__call__()
    \A_Viola_Music_Voice                                                       %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


A_Cello_I_Music_Voice = {                                                      %! abjad.Path.extern()

    % [A Cello_I_Music_Voice measure 1]                                        %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.margin_markup():-PARTS:baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-cello-i-markup                        %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    \clef "bass"                                                               %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    r4                                                                         %! baca.skeleton()
    ^ \baca-default-indicator-markup "(“Cello”)"                               %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-explicit-indicator-markup "[“Vc. I”]"                              %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-vc-i-markup                      %! REDRAWN_EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):baca.margin_markup():-PARTS:baca.IndicatorCommand._call()

    \tweak text #tuplet-number::calc-fraction-text                             %! baca.skeleton()
    \times 5/3 {                                                               %! baca.skeleton()

        \baca-not-yet-pitched-coloring                                         %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
        d4                                                                     %! baca.skeleton()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \p                                                                     %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.dynamic():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
        d2                                                                     %! baca.skeleton()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()

    }                                                                          %! baca.skeleton()

    \tweak text #tuplet-number::calc-fraction-text                             %! baca.skeleton()
    \times 5/3 {                                                               %! baca.skeleton()

        % [A Cello_I_Music_Voice measure 2]                                    %! baca.SegmentMaker._comment_measure_numbers()
        \baca-not-yet-pitched-coloring                                         %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
        d4                                                                     %! baca.skeleton()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
        d4                                                                     %! baca.skeleton()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()

        \baca-not-yet-pitched-coloring                                         %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
        d4                                                                     %! baca.skeleton()
        :32                                                                    %! baca.stem_tremolo():baca.IndicatorCommand._call()
        - \accent                                                              %! baca.accent():baca.IndicatorCommand._call()

    }                                                                          %! baca.skeleton()

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Music_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Cello_I_Music_Voice measure 3]                                %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \once \override Staff.StaffSymbol.line-count = 1                   %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \startStaff                                                        %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c'1 * 3/4                                                          %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Rest_Voice"                                  %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Cello_I_Rest_Voice measure 3]                                 %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Music_Voice"                                 %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Cello_I_Music_Voice measure 4]                                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM_MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_I_Rest_Voice"                                  %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Cello_I_Rest_Voice measure 4]                                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


A_Cello_I_Music_Staff = <<                                                     %! abjad.Path.extern()

    \context Voice = "Cello_I_Music_Voice"                                     %! harmony.ScoreTemplate.__call__()
    \A_Cello_I_Music_Voice                                                     %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


A_Cello_II_Music_Voice = {                                                     %! abjad.Path.extern()

    % [A Cello_II_Music_Voice measure 1]                                       %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.margin_markup():-PARTS:baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-cello-ii-markup                       %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    \clef "bass"                                                               %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    r16                                                                        %! harmony.appoggiato()
    ^ \baca-default-indicator-markup "(“Cello”)"                               %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-explicit-indicator-markup "[“Vc. II”]"                             %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-vc-ii-markup                     %! REDRAWN_EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):baca.margin_markup():-PARTS:baca.IndicatorCommand._call()

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2...                                                                      %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #8                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    r16                                                                        %! harmony.appoggiato()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4..                                                                       %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #8                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    % [A Cello_II_Music_Voice measure 2]                                       %! baca.SegmentMaker._comment_measure_numbers()
    r16                                                                        %! harmony.appoggiato()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8.
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #8                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2
    \repeatTie

    r16                                                                        %! harmony.appoggiato()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4..                                                                       %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #8                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Music_Voice"                                %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Cello_II_Music_Voice measure 3]                               %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c'1 * 3/4                                                          %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            \bacaStopTextSpanDamp                                              %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Rest_Voice"                                 %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Cello_II_Rest_Voice measure 3]                                %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Music_Voice"                                %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Cello_II_Music_Voice measure 4]                               %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM_MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Cello_II_Rest_Voice"                                 %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Cello_II_Rest_Voice measure 4]                                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


A_Cello_II_Music_Staff = <<                                                    %! abjad.Path.extern()

    \context Voice = "Cello_II_Music_Voice"                                    %! harmony.ScoreTemplate.__call__()
    \A_Cello_II_Music_Voice                                                    %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


A_Contrabass_I_Music_Voice = {                                                 %! abjad.Path.extern()

    % [A Contrabass_I_Music_Voice measure 1]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.margin_markup():-PARTS:baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-contrabass-i-markup                   %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    \clef "bass"                                                               %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d1                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:baca.SegmentMaker._set_status_tag():baca.dynamic():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ^ \baca-default-indicator-markup "(“Contrabass”)"                          %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-explicit-indicator-markup "[“Cb. I”]"                              %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-cb-i-markup                      %! REDRAWN_EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):baca.margin_markup():-PARTS:baca.IndicatorCommand._call()

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \repeatTie

    % [A Contrabass_I_Music_Voice measure 2]                                   %! baca.SegmentMaker._comment_measure_numbers()
    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \repeatTie
    [                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    - \accent                                                                  %! baca.accent():baca.IndicatorCommand._call()
    ]                                                                          %! rmakers.RewriteMeterCommand.__call__

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4                                                                         %! harmony.sixteenths()
    :32                                                                        %! baca.stem_tremolo():baca.IndicatorCommand._call()
    \repeatTie

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Music_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Contrabass_I_Music_Voice measure 3]                           %! baca.SegmentMaker._comment_measure_numbers()
            \stopStaff                                                         %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \once \override Staff.StaffSymbol.line-count = 1                   %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \startStaff                                                        %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            \once \override Staff.StaffSymbol.color = #(x11-color 'blue)       %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
            c''1 * 3/4                                                         %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Rest_Voice"                             %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Contrabass_I_Rest_Voice measure 3]                            %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Music_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Contrabass_I_Music_Voice measure 4]                           %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM_MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_I_Rest_Voice"                             %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Contrabass_I_Rest_Voice measure 4]                            %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


A_Contrabass_I_Music_Staff = <<                                                %! abjad.Path.extern()

    \context Voice = "Contrabass_I_Music_Voice"                                %! harmony.ScoreTemplate.__call__()
    \A_Contrabass_I_Music_Voice                                                %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()


A_Contrabass_II_Music_Voice = {                                                %! abjad.Path.extern()

    % [A Contrabass_II_Music_Voice measure 1]                                  %! baca.SegmentMaker._comment_measure_numbers()
    \override Staff.BarLine.bar-extent = #'(-2 . 2)                            %! EXPLICIT_BAR_EXTENT:baca.SegmentMaker._set_status_tag():-PARTS:baca.IndicatorCommand._call()
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \once \override Staff.StaffSymbol.line-count = 5                           %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:baca.SegmentMaker._set_status_tag():baca.staff_lines():baca.IndicatorCommand._call()
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.margin_markup():-PARTS:baca.IndicatorCommand._call()
    \set Staff.instrumentName = \harmony-contrabass-ii-markup                  %! baca.start_markup():-PARTS:baca.IndicatorCommand._call()
    \clef "bass"                                                               %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.Clef.color = #(x11-color 'DarkViolet)                %! DEFAULT_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! DEFAULT_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! DEFAULT_CLEF:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(2):abjad.ScoreTemplate.attach_defaults(3)
    \once \override Staff.StaffSymbol.color = #(x11-color 'blue)               %! EXPLICIT_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \once \override Staff.InstrumentName.color = #(x11-color 'blue)            %! EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    r16                                                                        %! harmony.appoggiato()
    ^ \baca-default-indicator-markup "(“Contrabass”)"                          %! DEFAULT_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    ^ \baca-explicit-indicator-markup "[“Cb. II”]"                             %! EXPLICIT_MARGIN_MARKUP_ALERT:baca.SegmentMaker._attach_latent_indicator_alert()
    \override Staff.Clef.color = #(x11-color 'violet)                          %! DEFAULT_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \override Staff.InstrumentName.color = #(x11-color 'DeepSkyBlue2)          %! REDRAWN_EXPLICIT_MARGIN_MARKUP_COLOR:baca.SegmentMaker._attach_color_literal(2)
    \set Staff.shortInstrumentName = \harmony-cb-ii-markup                     %! REDRAWN_EXPLICIT_MARGIN_MARKUP:baca.SegmentMaker._set_status_tag():baca.SegmentMaker._treat_persistent_wrapper(3):baca.margin_markup():-PARTS:baca.IndicatorCommand._call()

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2...                                                                      %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #8                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    r16                                                                        %! harmony.appoggiato()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4..                                                                       %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #8                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    % [A Contrabass_II_Music_Voice measure 2]                                  %! baca.SegmentMaker._comment_measure_numbers()
    r16                                                                        %! harmony.appoggiato()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d8.
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #8                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d2
    \repeatTie

    r16                                                                        %! harmony.appoggiato()
    \bacaStopTextSpanDamp                                                      %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

    \baca-not-yet-pitched-coloring                                             %! NOT_YET_PITCHED:baca.SegmentMaker._color_not_yet_pitched()
    d4..                                                                       %! harmony.appoggiato()
    - \abjad-dashed-line-with-hook                                             %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \baca-text-spanner-left-markup \baca-damp-markup                         %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.left-broken.text \baca-left-broken-damp-markup      %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    - \tweak bound-details.right.padding #2.75                                 %! DAMP:baca.damp_spanner():PiecewiseCommand(1):autodetect
    - \tweak staff-padding #8                                                  %! DAMP:baca.damp_spanner():PiecewiseCommand(1)
    \bacaStartTextSpanDamp                                                     %! DAMP:baca.damp_spanner():PiecewiseCommand(1)

    <<                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Music_Voice"                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Contrabass_II_Music_Voice measure 3]                          %! baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! baca.SegmentMaker._make_multimeasure_rest_container()
            c''1 * 3/4                                                         %! PHANTOM_NOTE:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()
            \bacaStopTextSpanDamp                                              %! SPANNER_STOP:DAMP:baca.damp_spanner():PiecewiseCommand(3)

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Rest_Voice"                            %! baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Contrabass_II_Rest_Voice measure 3]                           %! baca.SegmentMaker._comment_measure_numbers()
            R1 * 3/4                                                           %! baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"3" #"4"                       %! DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! baca.SegmentMaker._make_multimeasure_rest_container()

    <<                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Music_Voice"                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Contrabass_II_Music_Voice measure 4]                          %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \baca-invisible-music                                              %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._make_multimeasure_rest_container()
            R1 * 1/4                                                           %! PHANTOM_MULTIMEASURE_REST:PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

        \context Voice = "Contrabass_II_Rest_Voice"                            %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        {                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

            % [A Contrabass_II_Rest_Voice measure 4]                           %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):baca.SegmentMaker._comment_measure_numbers()
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:baca.SegmentMaker._style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:baca.SegmentMaker._style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()
        %@% ^ \baca-duration-multiplier-markup #"1" #"4"                       %! PHANTOM:baca.SegmentMaker._style_phantom_measures(5):DURATION_MULTIPLIER:baca.SegmentMaker._label_duration_multipliers()

        }                                                                      %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

    >>                                                                         %! PHANTOM:baca.SegmentMaker._make_multimeasure_rest_container()

}                                                                              %! abjad.Path.extern()


A_Contrabass_II_Music_Staff = <<                                               %! abjad.Path.extern()

    \context Voice = "Contrabass_II_Music_Voice"                               %! harmony.ScoreTemplate.__call__()
    \A_Contrabass_II_Music_Voice                                               %! abjad.Path.extern()

>>                                                                             %! abjad.Path.extern()
