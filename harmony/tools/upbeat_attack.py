import abjad
import baca
from abjadext import rmakers


def upbeat_attack(*, dmask=None, ltmask=None) -> baca.RhythmCommand:
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
            beam_specifier=rmakers.BeamSpecifier(beam_each_division=False),
            incise_specifier=rmakers.InciseSpecifier(
                fill_with_rests=True,
                suffix_talea=[3, 1],
                suffix_counts=[2],
                talea_denominator=16,
            ),
            logical_tie_masks=ltmask,
            tag="harmony_upbeat_attack",
        )
    )
    return rhythm_specifier
