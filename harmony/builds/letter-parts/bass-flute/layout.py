import baca

distances = (10,)
y_offset_1 = 12 + 1 * 9
y_offset_2 = 40 + 2 * 9
y_offset_3 = 68 + 3 * 9
y_offset_4 = 96 + 4 * 9
y_offset_5 = 124 + 5 * 9
y_offset_6 = 152 + 6 * 9
y_offset_7 = 180 + 7 * 9

empty_measures = [
    19,
    35,
    40,
    49,
    50,
    51,
    52,
    53,
    54,
    56,
    63,
    64,
    65,
    66,
    67,
    68,
    77,
    78,
    79,
    90,
    92,
    102,
    104,
    106,
    120,
    126,
    127,
    140,
    144,
    157,
    158,
    164,
    165,
    166,
    167,
    169,
    171,
    172,
    173,
    174,
    175,
    196,
    197,
    207,
    209,
    215,
    220,
    226,
    247,
    256,
    257,
    258,
    259,
    267,
]


def main():
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=y_offset_3, distances=distances),
            baca.system(measure=4, y_offset=y_offset_4, distances=distances),
            baca.system(measure=7, y_offset=y_offset_5, distances=distances),
            baca.system(measure=12, y_offset=y_offset_6, distances=distances),
            baca.system(measure=17, y_offset=y_offset_7, distances=distances),
        ),
        baca.page(
            2,
            baca.system(measure=25, y_offset=y_offset_1, distances=distances),
            baca.system(measure=32, y_offset=y_offset_2, distances=distances),
            baca.system(measure=36, y_offset=y_offset_3, distances=distances),
            baca.system(measure=40, y_offset=y_offset_4, distances=distances),
            baca.system(measure=46, y_offset=y_offset_5, distances=distances),
            baca.system(measure=51, y_offset=y_offset_6, distances=distances),
            baca.system(measure=56, y_offset=y_offset_7, distances=distances),
        ),
        baca.page(
            3,
            baca.system(measure=61, y_offset=y_offset_1, distances=distances),
            baca.system(measure=66, y_offset=y_offset_2, distances=distances),
            baca.system(measure=71, y_offset=y_offset_3, distances=distances),
            baca.system(measure=76, y_offset=y_offset_4, distances=distances),
            baca.system(measure=81, y_offset=y_offset_5, distances=distances),
            baca.system(measure=86, y_offset=y_offset_6, distances=distances),
            baca.system(measure=90, y_offset=y_offset_7, distances=distances),
        ),
        baca.page(
            4,
            baca.system(measure=96, y_offset=y_offset_1, distances=distances),
            baca.system(measure=101, y_offset=y_offset_2, distances=distances),
            baca.system(measure=108, y_offset=y_offset_3, distances=distances),
            baca.system(measure=113, y_offset=y_offset_4, distances=distances),
            baca.system(measure=120, y_offset=y_offset_5, distances=distances),
            baca.system(measure=126, y_offset=y_offset_6, distances=distances),
            baca.system(measure=131, y_offset=y_offset_7, distances=distances),
        ),
        baca.page(
            5,
            baca.system(measure=136, y_offset=y_offset_1, distances=distances),
            baca.system(measure=141, y_offset=y_offset_2, distances=distances),
            baca.system(measure=146, y_offset=y_offset_3, distances=distances),
            baca.system(measure=152, y_offset=y_offset_4, distances=distances),
            baca.system(measure=158, y_offset=y_offset_5, distances=distances),
            baca.system(measure=161, y_offset=y_offset_6, distances=distances),
            baca.system(measure=166, y_offset=y_offset_7, distances=distances),
        ),
        baca.page(
            6,
            baca.system(measure=169, y_offset=y_offset_1, distances=distances),
            baca.system(measure=176, y_offset=y_offset_2, distances=distances),
            baca.system(measure=181, y_offset=y_offset_3, distances=distances),
            baca.system(measure=186, y_offset=y_offset_4, distances=distances),
            baca.system(measure=192, y_offset=y_offset_5, distances=distances),
            baca.system(measure=196, y_offset=y_offset_6, distances=distances),
            baca.system(measure=200, y_offset=y_offset_7, distances=distances),
        ),
        baca.page(
            7,
            baca.system(measure=204, y_offset=y_offset_1, distances=distances),
            baca.system(measure=210, y_offset=y_offset_2, distances=distances),
            baca.system(measure=216, y_offset=y_offset_3, distances=distances),
            baca.system(measure=221, y_offset=y_offset_4, distances=distances),
            baca.system(measure=225, y_offset=y_offset_5, distances=distances),
            baca.system(measure=230, y_offset=y_offset_6, distances=distances),
            baca.system(measure=234, y_offset=y_offset_7, distances=distances),
        ),
        baca.page(
            8,
            baca.system(measure=240, y_offset=y_offset_1, distances=distances),
            baca.system(measure=245, y_offset=y_offset_2, distances=distances),
            baca.system(measure=250, y_offset=y_offset_3, distances=distances),
            baca.system(measure=255, y_offset=y_offset_4, distances=distances),
            baca.system(measure=262, y_offset=y_offset_5, distances=distances),
            baca.system(measure=264, y_offset=y_offset_6, distances=distances),
            baca.system(measure=266, y_offset=y_offset_7, distances=distances),
        ),
        spacing=(1, 32),
        overrides=(baca.space(empty_measures, (1, 4)),),
    )
    baca.section.make_layout_ly(spacing)


if __name__ == "__main__":
    main()
