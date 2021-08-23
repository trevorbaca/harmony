import baca

distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]

text_measure_numbers = [
    15,
    18,
    20,
    41,
    48,
    57,
    69,
    82,
    91,
    97,
    107,
    115,
    119,
    122,
    129,
    156,
    163,
    170,
    177,
    193,
    206,
    229,
    236,
    239,
    248,
    254,
    261,
    268,
]


spacing = baca.SpacingSpecifier(
    breaks=baca.breaks(
        baca.page(
            1,
            baca.system(
                measure=1,
                y_offset=90,
                distances=[18, (26), (21, 21, 26), (21, 21, 21, 21, 26)],
            ),
        ),
        baca.page(
            2,
            baca.system(measure=7, y_offset=40, distances=distances),
        ),
        baca.page(
            3,
            baca.system(measure=13, y_offset=40, distances=distances),
        ),
        baca.page(
            4,
            baca.system(measure=19, y_offset=40, distances=distances),
        ),
        baca.page(
            5,
            baca.system(measure=26, y_offset=40, distances=distances),
        ),
        baca.page(
            6,
            baca.system(measure=36, y_offset=40, distances=distances),
        ),
        baca.page(
            7,
            baca.system(measure=42, y_offset=40, distances=distances),
        ),
        baca.page(
            8,
            baca.system(measure=49, y_offset=40, distances=distances),
        ),
        baca.page(
            9,
            baca.system(measure=58, y_offset=40, distances=distances),
        ),
        baca.page(
            10,
            baca.system(measure=64, y_offset=40, distances=distances),
        ),
        baca.page(
            11,
            baca.system(measure=70, y_offset=40, distances=distances),
        ),
        baca.page(
            12,
            baca.system(measure=78, y_offset=40, distances=distances),
        ),
        baca.page(
            13,
            baca.system(measure=85, y_offset=40, distances=distances),
        ),
        baca.page(
            14,
            baca.system(measure=92, y_offset=40, distances=distances),
        ),
        baca.page(
            15,
            baca.system(measure=99, y_offset=40, distances=distances),
        ),
        baca.page(
            16,
            baca.system(measure=106, y_offset=40, distances=distances),
        ),
        baca.page(
            17,
            baca.system(measure=113, y_offset=40, distances=distances),
        ),
        baca.page(
            18,
            baca.system(measure=120, y_offset=40, distances=distances),
        ),
        baca.page(
            19,
            baca.system(measure=127, y_offset=40, distances=distances),
        ),
        baca.page(
            20,
            baca.system(measure=134, y_offset=40, distances=distances),
        ),
        baca.page(
            21,
            baca.system(measure=141, y_offset=40, distances=distances),
        ),
        baca.page(
            22,
            baca.system(measure=151, y_offset=40, distances=distances),
        ),
        baca.page(
            23,
            baca.system(measure=157, y_offset=40, distances=distances),
        ),
        baca.page(
            24,
            baca.system(measure=164, y_offset=40, distances=distances),
        ),
        baca.page(
            25,
            baca.system(measure=171, y_offset=40, distances=distances),
        ),
        baca.page(
            26,
            baca.system(measure=178, y_offset=40, distances=distances),
        ),
        baca.page(
            27,
            baca.system(measure=183, y_offset=40, distances=distances),
        ),
        baca.page(
            28,
            baca.system(measure=190, y_offset=40, distances=distances),
        ),
        baca.page(
            29,
            baca.system(measure=196, y_offset=40, distances=distances),
        ),
        baca.page(
            30,
            baca.system(measure=204, y_offset=40, distances=distances),
        ),
        baca.page(
            31,
            baca.system(measure=212, y_offset=40, distances=distances),
        ),
        baca.page(
            32,
            baca.system(measure=218, y_offset=40, distances=distances),
        ),
        baca.page(
            33,
            baca.system(measure=225, y_offset=40, distances=distances),
        ),
        baca.page(
            34,
            baca.system(measure=230, y_offset=40, distances=distances),
        ),
        baca.page(
            35,
            baca.system(measure=237, y_offset=40, distances=distances),
        ),
        baca.page(
            36,
            baca.system(measure=244, y_offset=40, distances=distances),
        ),
        baca.page(
            37,
            baca.system(measure=249, y_offset=40, distances=distances),
        ),
        baca.page(
            38,
            baca.system(measure=255, y_offset=40, distances=distances),
        ),
        baca.page(
            39,
            baca.system(measure=262, y_offset=40, distances=distances),
        ),
    ),
    fallback_duration=(1, 40),
    overrides=(
        baca.space((21, 26), (1, 32)),
        baca.space((49, 56), (1, 20)),
        baca.space((113, 114), (1, 20)),
        baca.space((116, 118), (1, 20)),
        baca.space((171, 176), (1, 20)),
        baca.space([191, 192, 194, 195], (1, 32)),
        baca.space(text_measure_numbers, (1, 288)),
    ),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(spacing)
