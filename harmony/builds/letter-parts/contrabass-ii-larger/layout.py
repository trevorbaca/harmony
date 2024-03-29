import baca


def main():
    distances = (10,)
    y_offset_1 = 5 + 1 * 9
    y_offset_2 = 27 + 2 * 9
    y_offset_3 = 49 + 3 * 9
    y_offset_4 = 71 + 4 * 9
    y_offset_5 = 93 + 5 * 9
    y_offset_6 = 115 + 6 * 9
    empty_measures = [77, 78, 79, 80, 121, 188, 196, 197, 212, 216, 247, 267]
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=70, distances=distances),
            baca.system(measure=6, y_offset=114.5, distances=distances),
            baca.system(measure=11, y_offset=159, distances=distances),
        ),
        baca.page(
            2,
            baca.system(measure=16, y_offset=y_offset_1, distances=distances),
            baca.system(measure=21, y_offset=y_offset_2, distances=distances),
            baca.system(measure=26, y_offset=y_offset_3, distances=distances),
            baca.system(measure=31, y_offset=y_offset_4, distances=distances),
            baca.system(measure=36, y_offset=y_offset_5, distances=distances),
            baca.system(measure=40, y_offset=y_offset_6, distances=distances),
        ),
        baca.page(
            3,
            baca.system(measure=46, y_offset=y_offset_1, distances=distances),
            baca.system(measure=51, y_offset=y_offset_2, distances=distances),
            baca.system(measure=56, y_offset=y_offset_3, distances=distances),
            baca.system(measure=61, y_offset=y_offset_4, distances=distances),
            baca.system(measure=66, y_offset=y_offset_5, distances=distances),
            baca.system(measure=71, y_offset=y_offset_6, distances=distances),
        ),
        baca.page(
            4,
            baca.system(measure=76, y_offset=y_offset_1, distances=distances),
            baca.system(measure=83, y_offset=y_offset_2, distances=distances),
            baca.system(measure=86, y_offset=y_offset_3, distances=distances),
            baca.system(measure=92, y_offset=y_offset_4, distances=distances),
            baca.system(measure=96, y_offset=y_offset_5, distances=distances),
            baca.system(measure=101, y_offset=y_offset_6, distances=distances),
        ),
        baca.page(
            5,
            baca.system(measure=106, y_offset=y_offset_1, distances=distances),
            baca.system(measure=112, y_offset=y_offset_2, distances=distances),
            baca.system(measure=117, y_offset=y_offset_3, distances=distances),
            baca.system(measure=124, y_offset=y_offset_4, distances=distances),
            baca.system(measure=130, y_offset=y_offset_5, distances=distances),
            baca.system(measure=136, y_offset=y_offset_6, distances=distances),
        ),
        baca.page(
            6,
            baca.system(measure=141, y_offset=y_offset_1, distances=distances),
            baca.system(measure=146, y_offset=y_offset_2, distances=distances),
            baca.system(measure=151, y_offset=y_offset_3, distances=distances),
            baca.system(measure=157, y_offset=y_offset_4, distances=distances),
            baca.system(measure=161, y_offset=y_offset_5, distances=distances),
            baca.system(measure=166, y_offset=y_offset_6, distances=distances),
        ),
        baca.page(
            7,
            baca.system(measure=171, y_offset=y_offset_1, distances=distances),
            baca.system(measure=176, y_offset=y_offset_2, distances=distances),
            baca.system(measure=181, y_offset=y_offset_3, distances=distances),
            baca.system(measure=186, y_offset=y_offset_4, distances=distances),
            baca.system(measure=191, y_offset=y_offset_5, distances=distances),
            baca.system(measure=196, y_offset=y_offset_6, distances=distances),
        ),
        baca.page(
            8,
            baca.system(measure=202, y_offset=y_offset_1, distances=distances),
            baca.system(measure=207, y_offset=y_offset_2, distances=distances),
            baca.system(measure=212, y_offset=y_offset_3, distances=distances),
            baca.system(measure=216, y_offset=y_offset_4, distances=distances),
            baca.system(measure=221, y_offset=y_offset_5, distances=distances),
            baca.system(measure=226, y_offset=y_offset_6, distances=distances),
        ),
        baca.page(
            9,
            baca.system(measure=231, y_offset=y_offset_1, distances=distances),
            baca.system(measure=237, y_offset=y_offset_2, distances=distances),
            baca.system(measure=241, y_offset=y_offset_3, distances=distances),
            baca.system(measure=246, y_offset=y_offset_4, distances=distances),
            baca.system(measure=251, y_offset=y_offset_5, distances=distances),
            baca.system(measure=256, y_offset=y_offset_6, distances=distances),
        ),
        baca.page(
            10,
            baca.system(measure=262, y_offset=y_offset_1, distances=distances),
            baca.system(measure=264, y_offset=y_offset_2, distances=distances),
            baca.system(measure=266, y_offset=y_offset_3, distances=distances),
        ),
        spacing=(1, 32),
        overrides=(baca.space(empty_measures, (1, 4)),),
    )
    baca.section.make_layout_ly(spacing)


if __name__ == "__main__":
    main()
