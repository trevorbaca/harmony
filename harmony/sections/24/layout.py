import baca

distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]

spacing = baca.make_layout(
    baca.page(
        1,
        baca.system(measure=1, y_offset=40, distances=distances),
    ),
    spacing=(1, 40),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(spacing)