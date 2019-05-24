import abjad
import baca
from abjadext import rmakers


def begin_end_rhythm(*, dmask=None, ltmask=None) -> baca.RhythmCommand:
    """
    Makes begin-end rhythm.
    """

    if dmask is not None:
        dmask = [dmask]

    if ltmask is not None:
        ltmask = [ltmask]

    rhythm_specifier = baca.rhythm(
        rhythm_maker=rmakers.IncisedRhythmMaker(
            beam_specifier=rmakers.BeamSpecifier(beam_each_division=False),
            division_masks=dmask,
            incise_specifier=rmakers.InciseSpecifier(
                fill_with_rests=True,
                prefix_talea=[3, 1],
                prefix_counts=[2],
                suffix_talea=[3, 1],
                suffix_counts=[2],
                talea_denominator=16,
            ),
            logical_tie_masks=ltmask,
            tag="harmony_begin_end_rhythm",
        )
    )
    return rhythm_specifier
