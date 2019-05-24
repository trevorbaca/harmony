import abjad
import baca
from abjadext import rmakers


def bfl_transition_rhythm() -> baca.RhythmCommand:
    """
    Makes bass flute transition rhythm.
    """

    rhythm_maker = rmakers.TaleaRhythmMaker(
        talea=rmakers.Talea(counts=[1], denominator=16)
    )

    return baca.rhythm(rhythm_maker)
