import abjad
import baca


instruments = abjad.OrderedDict(
    [
        ("BassFlute", abjad.BassFlute()),
        ("Glockenspiel", abjad.Glockenspiel()),
        (
            "Percussion",
            abjad.Percussion(allowable_clefs=["bass", "percussion", "treble"]),
        ),
        ("Harp", abjad.Harp()),
        ("Viola", abjad.Viola()),
        ("Cello", abjad.Cello()),
        ("Contrabass", abjad.Contrabass()),
    ]
)
