import abjad
import baca
from abjadext import rmakers


def begin_end_rhythm(
    *, dmask: rmakers.MasksTyping = None
) -> baca.RhythmCommand:
    """
    Makes begin-end rhythm.
    """
    return baca.rhythm(
        rhythm_maker=rmakers.IncisedRhythmMaker(
            rmakers.TupletSpecifier(extract_trivial=True),
            division_masks=dmask,
            incise_specifier=rmakers.InciseSpecifier(
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
