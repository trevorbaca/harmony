import baca

distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]
breaks = baca.breaks(
    baca.page(
        baca.system(
            *distances,
            measure=1,
            y_offset=40,
        ),
        number=1,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=6,
            y_offset=40,
        ),
        number=2,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=12,
            y_offset=40,
        ),
        number=3,
    ),
    local_measure_numbers=True,
)

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 40),
)
spacing.override([2, 9], (1, 288), fermata=True)
