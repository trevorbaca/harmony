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
        rhythm_maker=rmakers.TaleaRhythmMaker(
            *specifiers,
            rmakers.BeamSpecifier(selector=baca.tuplets()),
            rmakers.TupletSpecifier(
                denominator=(1, 16),
                extract_trivial=True,
                force_fraction=True,
                rewrite_rest_filled=True,
            ),
            divisions=baca.divisions().fuse().split(divisions_, cyclic=True),
            extra_counts_per_division=extra_counts,
            tag="harmony.bfl_transition_rhythm",
            talea=rmakers.Talea(counts=[1], denominator=16),
        ),
    )
