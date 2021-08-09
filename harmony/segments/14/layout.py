import baca

distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]

breaks = baca.breaks(
    baca.page(
        baca.system(measure=1, y_offset=40, distances=distances),
        number=1,
    ),
    baca.page(
        baca.system(measure=6, y_offset=40, distances=distances),
        number=2,
    ),
)

spacing = baca.spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 40),
    overrides=(
        baca.space([3, 10], (1, 288), fermata=True),
    ),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(breaks, spacing)
