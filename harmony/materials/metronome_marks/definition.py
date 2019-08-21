import abjad


metronome_marks = abjad.OrderedDict(
    [
        ("48", abjad.MetronomeMark((1, 4), 48)),
        (
            "57 3/5",
            abjad.MetronomeMark((1, 4), abjad.Fraction(288, 5), decimal=True),
        ),
        ("72", abjad.MetronomeMark((1, 4), 72)),
        ("96", abjad.MetronomeMark((1, 4), 96)),
        ("144", abjad.MetronomeMark((1, 4), 144)),
        # slower
        (
            "2.=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c2."), right_rhythm=abjad.Note("c4")
            ),
        ),
        (
            "4:5(2)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("4:5", "c2"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "2=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c2"), right_rhythm=abjad.Note("c4")
            ),
        ),
        (
            "5:6(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("5:6", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "4:5(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("4:5", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "3:5(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("3:5", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "3:4(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("3:4", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "4.=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c4."), right_rhythm=abjad.Note("c4")
            ),
        ),
        # faster
        (
            "6:5(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("6:5", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "5:4(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("5:4", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "5:4(8)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("5:4", "c8"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "5:3(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("5:3", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "4:3(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("4:3", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "3:2(4)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("3:2", "c4"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
        (
            "8=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Note("c8"), right_rhythm=abjad.Note("c4")
            ),
        ),
        (
            "3:2(8)=4",
            abjad.MetricModulation(
                left_rhythm=abjad.Tuplet("3:2", "c8"),
                right_rhythm=abjad.Note("c4"),
            ),
        ),
    ]
)
