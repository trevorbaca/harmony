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
            baca.system(measure=10, y_offset=40, distances=distances),
        ),
        spacing=(1, 40),
        overrides=(baca.space([9], (1, 288)),),
    )
    baca.section.make_layout_ly(spacing)


if __name__ == "__main__":
    main()
