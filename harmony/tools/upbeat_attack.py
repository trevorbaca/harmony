import abjad
import baca
from abjadext import rmakers


def upbeat_attack(*, dmask: rmakers.MasksTyping = None) -> baca.RhythmCommand:
    """
    Makes upbeat attack rhythm.
    """
    return baca.rhythm(
        rhythm_maker=rmakers.IncisedRhythmMaker(
            division_masks=dmask,
            incise_specifier=rmakers.InciseSpecifier(
                fill_with_rests=True,
                suffix_talea=[3, 1],
                suffix_counts=[2],
                talea_denominator=16,
            ),
        ),
        tag="harmony.upbeat_attack",
    )
