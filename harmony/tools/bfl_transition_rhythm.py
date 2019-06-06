import abjad
import baca
from abjadext import rmakers


def bfl_transition_rhythm(
    *,
    divisions: abjad.IntegerSequence = (1, 4, 3, 2),
    dmask: rmakers.MasksTyping = rmakers.silence([2], period=3),
    extra_counts: abjad.IntegerSequence = (2, 3),
    rotation: int = 0,
) -> baca.RhythmCommand:
    """
    Makes bass flute transition rhythm.
    """
    divisions_ = baca.sequence([(_, 4) for _ in divisions])
    divisions_ = divisions_.rotate(n=rotation)
    return baca.rhythm(
        divisions=baca.divisions().fuse().split(divisions_, cyclic=True),
        rhythm_maker=rmakers.TaleaRhythmMaker(
            beam_specifier=rmakers.BeamSpecifier(beam_each_division=True),
            division_masks=dmask,
            extra_counts_per_division=extra_counts,
            talea=rmakers.Talea(counts=[1], denominator=16),
            tuplet_specifier=rmakers.TupletSpecifier(
                denominator=(1, 16), force_fraction=True
            ),
        ),
        tag="harmony.bfl_transition_rhythm",
    )
