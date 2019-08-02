import abjad
import baca
from abjadext import rmakers


def begin_end_rhythm(*commands: rmakers.Command,) -> baca.RhythmCommand:
    """
    Makes begin-end rhythm.
    """
    return baca.rhythm(
        rmakers.incised(
            fill_with_rests=True,
            prefix_talea=[3, 1],
            prefix_counts=[2],
            suffix_talea=[3, 1],
            suffix_counts=[2],
            talea_denominator=16,
        ),
        *commands,
        rmakers.rewrite_rest_filled(),
        rmakers.extract_trivial(),
        stack=True,
        tag="harmony.begin_end_rhythm",
    )
