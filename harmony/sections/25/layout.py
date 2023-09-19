import baca


def main():
    distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=40, distances=distances),
        ),
        baca.page(
            2,
            baca.system(measure=7, y_offset=40, distances=distances),
        ),
        spacing=(1, 32),
        overrides=(
            baca.space((1, 2), (1, 20)),
            baca.space([4, 11], (1, 288)),
        ),
    )
    baca.section.make_layout_ly(spacing)


if __name__ == "__main__":
    main()
