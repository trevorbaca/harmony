import abjad
import baca
from abjadext import rmakers


def upbeat_attack() -> baca.RhythmCommand:
    """
    Makes upbeat attack rhythm.
    """
    return baca.rhythm(
        rmakers.incised(
            fill_with_rests=True,
            suffix_talea=[3, 1],
            suffix_counts=[2],
            talea_denominator=16,
        ),
        rmakers.extract_trivial(),
        stack=True,
        tag="harmony.upbeat_attack",
    )
