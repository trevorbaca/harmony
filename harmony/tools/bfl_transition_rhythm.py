import abjad
import baca
import inspect
from abjadext import rmakers


def bfl_transition_rhythm(
    *commands,
    divisions: abjad.IntegerSequence = (1, 4, 3, 2),
    extra_counts: abjad.IntegerSequence = (2, 3),
    rotation: int = 0,
) -> baca.RhythmCommand:
    """
    Makes bass flute transition rhythm.
    """
    divisions_ = baca.sequence([(_, 4) for _ in divisions])
    divisions_ = divisions_.rotate(n=rotation)

    return baca.rhythm(
        rmakers.talea([1], 16, extra_counts=extra_counts),
        *commands,
        rmakers.beam(),
        rmakers.denominator((1, 16)),
        rmakers.force_fraction(),
        rmakers.rewrite_rest_filled(),
        rmakers.extract_trivial(),
        preprocessor=baca.sequence()
        .fuse()
        .split_divisions(divisions_, cyclic=True),
        tag="harmony.bfl_transition_rhythm",
    )
