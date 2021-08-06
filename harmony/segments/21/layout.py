import baca

distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]
breaks = baca.breaks(
    baca.page(
        baca.system(measure=1, y_offset=40, distances=distances),
    ),
    local_measure_numbers=True,
)

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 40),
)
spacing.override([3], (1, 288), fermata=True)

if __name__ == "__main__":
    baca.build.make_layout_ly(__file__, breaks, spacing)
