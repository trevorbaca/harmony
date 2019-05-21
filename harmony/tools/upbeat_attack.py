import abjad
import baca
from abjadext import rmakers


def upbeat_attack(*, dmask=None, ltmask=None):
    """
    Makes upbeat attack rhythm.
    """

    if dmask is not None:
        dmask = [dmask]

    if ltmask is not None:
        ltmask = [ltmask]

    rhythm_specifier = baca.rhythm(
        rhythm_maker=rmakers.IncisedRhythmMaker(
            division_masks=dmask,
            incise_specifier=rmakers.InciseSpecifier(
                fill_with_rests=True,
                suffix_talea=[1],
                suffix_counts=[1],
                talea_denominator=4,
            ),
            logical_tie_masks=ltmask,
            tag="harmony_upbeat_attack",
        )
    )
    return rhythm_specifier
