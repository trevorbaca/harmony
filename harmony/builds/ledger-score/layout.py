import baca

distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]

breaks = baca.breaks(
    baca.page(
        baca.system(
            measure=1,
            y_offset=90,
            distances=[18, (26), (21, 21, 26), (21, 21, 21, 21, 26)],
        ),
        number=1,
    ),
    baca.page(
        baca.system(measure=7, y_offset=40, distances=distances),
        number=2,
    ),
    baca.page(
        baca.system(measure=13, y_offset=40, distances=distances),
        number=3,
    ),
    baca.page(
        baca.system(measure=19, y_offset=40, distances=distances),
        number=4,
    ),
    baca.page(
        baca.system(measure=26, y_offset=40, distances=distances),
        number=5,
    ),
    baca.page(
        baca.system(measure=36, y_offset=40, distances=distances),
        number=6,
    ),
    baca.page(
        baca.system(measure=42, y_offset=40, distances=distances),
        number=7,
    ),
    baca.page(
        baca.system(measure=49, y_offset=40, distances=distances),
        number=8,
    ),
    baca.page(
        baca.system(measure=58, y_offset=40, distances=distances),
        number=9,
    ),
    baca.page(
        baca.system(measure=64, y_offset=40, distances=distances),
        number=10,
    ),
    baca.page(
        baca.system(measure=70, y_offset=40, distances=distances),
        number=11,
    ),
    baca.page(
        baca.system(measure=78, y_offset=40, distances=distances),
        number=12,
    ),
    baca.page(
        baca.system(measure=85, y_offset=40, distances=distances),
        number=13,
    ),
    baca.page(
        baca.system(measure=92, y_offset=40, distances=distances),
        number=14,
    ),
    baca.page(
        baca.system(measure=99, y_offset=40, distances=distances),
        number=15,
    ),
    baca.page(
        baca.system(measure=106, y_offset=40, distances=distances),
        number=16,
    ),
    baca.page(
        baca.system(measure=113, y_offset=40, distances=distances),
        number=17,
    ),
    baca.page(
        baca.system(measure=120, y_offset=40, distances=distances),
        number=18,
    ),
    baca.page(
        baca.system(measure=127, y_offset=40, distances=distances),
        number=19,
    ),
    baca.page(
        baca.system(measure=134, y_offset=40, distances=distances),
        number=20,
    ),
    baca.page(
        baca.system(measure=141, y_offset=40, distances=distances),
        number=21,
    ),
    baca.page(
        baca.system(measure=151, y_offset=40, distances=distances),
        number=22,
    ),
    baca.page(
        baca.system(measure=157, y_offset=40, distances=distances),
        number=23,
    ),
    baca.page(
        baca.system(measure=164, y_offset=40, distances=distances),
        number=24,
    ),
    baca.page(
        baca.system(measure=171, y_offset=40, distances=distances),
        number=25,
    ),
    baca.page(
        baca.system(measure=178, y_offset=40, distances=distances),
        number=26,
    ),
    baca.page(
        baca.system(measure=183, y_offset=40, distances=distances),
        number=27,
    ),
    baca.page(
        baca.system(measure=190, y_offset=40, distances=distances),
        number=28,
    ),
    baca.page(
        baca.system(measure=196, y_offset=40, distances=distances),
        number=29,
    ),
    baca.page(
        baca.system(measure=204, y_offset=40, distances=distances),
        number=30,
    ),
    baca.page(
        baca.system(measure=212, y_offset=40, distances=distances),
        number=31,
    ),
    baca.page(
        baca.system(measure=218, y_offset=40, distances=distances),
        number=32,
    ),
    baca.page(
        baca.system(measure=225, y_offset=40, distances=distances),
        number=33,
    ),
    baca.page(
        baca.system(measure=230, y_offset=40, distances=distances),
        number=34,
    ),
    baca.page(
        baca.system(measure=237, y_offset=40, distances=distances),
        number=35,
    ),
    baca.page(
        baca.system(measure=244, y_offset=40, distances=distances),
        number=36,
    ),
    baca.page(
        baca.system(measure=249, y_offset=40, distances=distances),
        number=37,
    ),
    baca.page(
        baca.system(measure=255, y_offset=40, distances=distances),
        number=38,
    ),
    baca.page(
        baca.system(measure=262, y_offset=40, distances=distances),
        number=39,
    ),
)

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

if __name__ == "__main__":
    baca.build.make_layout_ly(
        breaks,
        fallback_duration=(1, 40),
        overrides=(
            baca.space((21, 26), (1, 32)),
            baca.space((49, 56), (1, 20)),
            baca.space((113, 114), (1, 20)),
            baca.space((116, 118), (1, 20)),
            baca.space((171, 176), (1, 20)),
            baca.space([191, 192, 194, 195], (1, 32)),
            baca.space(text_measure_numbers, (1, 288), fermata=True),
        ),
    )
