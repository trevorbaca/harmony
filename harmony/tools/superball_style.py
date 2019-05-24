import baca


def superball_style() -> baca.Suite:
    """
    Makes superball style.
    """
    return baca.chunk(baca.staff_position(-1), baca.stem_down())
