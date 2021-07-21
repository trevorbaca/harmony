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
            measure=7,
            y_offset=40,
        ),
        number=2,
    ),
    local_measure_numbers=True,
)

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 32),
)
spacing.override((1, 2), (1, 20))
spacing.override([4, 11], (1, 288), fermata=True)

if __name__ == "__main__":
    baca.build.make_layout_ly(__file__, breaks, spacing)
