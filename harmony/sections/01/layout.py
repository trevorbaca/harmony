import baca


def main():
    distances = [18, (26), (21, 21, 26), (21, 21, 21, 21, 26)]
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=90, distances=distances),
        ),
        spacing=(1, 40),
        overrides=(baca.space(3, (1, 64)),),
    )
    baca.section.make_layout_ly(spacing)


if __name__ == "__main__":
    main()
