import baca

distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]

spacing = baca.make_layout(
    baca.page(
        1,
        baca.system(measure=1, y_offset=40, distances=distances),
    ),
    baca.page(
        2,
        baca.system(measure=8, y_offset=40, distances=distances),
    ),
    spacing=(1, 40),
    overrides=(
        baca.space((4, 9), (1, 20)),
        baca.space([3, 10], (1, 288)),
    ),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(spacing)
