import abjad


metronome_marks = abjad.OrderedDict(
    [
        ("48", abjad.MetronomeMark((1, 4), 48)),
        (
            "57.6",
            abjad.MetronomeMark(
                reference_duration=(1, 4),
                units_per_minute=abjad.Fraction(288, 5),
                custom_markup=abjad.Markup.abjad_metronome_mark(2, 0, 1, 57.6),
            ),
        ),
        ("72", abjad.MetronomeMark((1, 4), 72)),
        ("96", abjad.MetronomeMark((1, 4), 96)),
        ("144", abjad.MetronomeMark((1, 4), 144)),
        # slower
        (
            "4=5:6(4)",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"),
                right_rhythm=abjad.Tuplet((5, 6), [abjad.Note("c4")]),
            ),
        ),
        (
            "4=4:5(4)",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"),
                right_rhythm=abjad.Tuplet((4, 5), [abjad.Note("c4")]),
            ),
        ),
        (
            "4=4:5(8)",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"),
                right_rhythm=abjad.Tuplet((4, 5), [abjad.Note("c8")]),
            ),
        ),
        (
            "4=3:4(4)",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"),
                right_rhythm=abjad.Tuplet((3, 4), [abjad.Note("c4")]),
            ),
        ),
        (
            "4=2:3(4)",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"),
                right_rhythm=abjad.Tuplet((2, 3), [abjad.Note("c4")]),
            ),
        ),
        (
            "4=2:3(8)",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"),
                right_rhythm=abjad.Tuplet((2, 3), [abjad.Note("c8")]),
            ),
        ),
        (
            "4=8",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"), right_rhythm=abjad.Note("c8")
            ),
        ),
        # faster
        (
            "4=6:5(4)",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"),
                right_rhythm=abjad.Tuplet((6, 5), [abjad.Note("c4")]),
            ),
        ),
        (
            "4=5:4(4)",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"),
                right_rhythm=abjad.Tuplet((5, 4), [abjad.Note("c4")]),
            ),
        ),
        (
            "4=5:4(8)",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"),
                right_rhythm=abjad.Tuplet((5, 4), [abjad.Note("c8")]),
            ),
        ),
        (
            "4=4:3(4)",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"),
                right_rhythm=abjad.Tuplet((4, 3), [abjad.Note("c4")]),
            ),
        ),
        (
            "4=3:2(4)",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"),
                right_rhythm=abjad.Tuplet((3, 2), [abjad.Note("c4")]),
            ),
        ),
        (
            "4=3:2(8)",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"),
                right_rhythm=abjad.Tuplet((3, 2), [abjad.Note("c8")]),
            ),
        ),
        (
            "8=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4"), right_rhythm=abjad.Note("c8")
            ),
        ),
    ]
)
