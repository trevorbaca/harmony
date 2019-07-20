import abjad
import baca
from abjadext import rmakers


def begin_end_rhythm(*specifiers: rmakers.Command,) -> baca.RhythmCommand:
    """
    Makes begin-end rhythm.
    """
    return baca.rhythm(
        rmakers.incised(
            *specifiers,
            rmakers.rewrite_rest_filled(),
            rmakers.extract_trivial(),
            incise=rmakers.Incise(
                fill_with_rests=True,
                prefix_talea=[3, 1],
                prefix_counts=[2],
                suffix_talea=[3, 1],
                suffix_counts=[2],
                talea_denominator=16,
            ),
        ),
        tag="harmony.begin_end_rhythm",
    )
