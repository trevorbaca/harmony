import baca

distances = [18, (26), (21, 21, 26), (21, 21, 21, 21, 26)]
breaks = baca.breaks(
    baca.page(
        baca.system(
            *distances,
            measure=1,
            y_offset=90,
        ),
        number=1,
    ),
    local_measure_numbers=True,
)

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 40),
)
spacing.override(3, (1, 64))

if __name__ == "__main__":
    baca.build.make_layout_ly(__file__, breaks, spacing)
