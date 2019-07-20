import abjad
import baca
from abjadext import rmakers


def bfl_transition_rhythm(
    *specifiers,
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
        rmakers.TaleaRhythmMaker(
            *specifiers,
            rmakers.beam(),
            rmakers.denominator((1, 16)),
            rmakers.force_fraction(),
            rmakers.rewrite_rest_filled(),
            rmakers.extract_trivial(),
            preprocessor=baca.divisions()
            .fuse()
            .split(divisions_, cyclic=True),
            extra_counts=extra_counts,
            talea=rmakers.Talea(counts=[1], denominator=16),
        ),
        tag="harmony.bfl_transition_rhythm",
    )
