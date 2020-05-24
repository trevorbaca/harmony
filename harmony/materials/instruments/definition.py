import abjad

instruments = abjad.OrderedDict(
    [
        ("BassFlute", abjad.BassFlute(pitch_range="[C3, E6]")),
        #        ("Glockenspiel", abjad.Glockenspiel()),
        (
            "Percussion",
            abjad.Percussion(allowable_clefs=["bass", "percussion", "treble"]),
        ),
        (
            "PercussionI",
            abjad.Percussion(allowable_clefs=["bass", "percussion", "treble"]),
        ),
        (
            "PercussionII",
            abjad.Percussion(allowable_clefs=["bass", "percussion", "treble"]),
        ),
        ("Harp", abjad.Harp()),
        ("Viola", abjad.Viola(pitch_range="[C3, +inf]")),
        ("Cello", abjad.Cello(pitch_range="[C2, +inf]")),
        ("CelloI", abjad.Cello(pitch_range="[C2, +inf]")),
        ("CelloII", abjad.Cello(pitch_range="[C2, +inf]")),
        ("Contrabass", abjad.Contrabass(pitch_range="[E1, +inf]")),
        ("ContrabassI", abjad.Contrabass(pitch_range="[E1, +inf]")),
        ("ContrabassII", abjad.Contrabass(pitch_range="[E1, +inf]")),
    ]
)
