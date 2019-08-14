import abjad
import baca
import inspect
from abjadext import rmakers


def tag(frame):
    frame_info = inspect.getframeinfo(frame)
    return f"harmony.{frame_info.function}"


def begin_end_rhythm(*commands: rmakers.Command,) -> baca.RhythmCommand:
    """
    Makes begin-end rhythm.
    """
    frame = inspect.currentframe()

    return baca.rhythm(
        rmakers.incised(
            fill_with_rests=True,
            prefix_talea=[3, 1],
            prefix_counts=[2],
            suffix_talea=[3, 1],
            suffix_counts=[2],
            talea_denominator=16,
        ),
        *commands,
        rmakers.rewrite_rest_filled(),
        rmakers.extract_trivial(),
        tag=tag(inspect.currentframe()),
    )
