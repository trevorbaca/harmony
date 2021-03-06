import baca

distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]

breaks = baca.breaks(
    baca.page(
        baca.system(
            *[18, (26), (21, 21, 26), (21, 21, 21, 21, 26)],
            measure=1,
            y_offset=90,
        ),
        number=1,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=8,
            measure=7,
            y_offset=40,
        ),
        number=2,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=15,
            measure=13,
            y_offset=40,
        ),
        number=3,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=22,
            measure=19,
            y_offset=40,
        ),
        number=4,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=29,
            # measure=27,
            measure=26,
            y_offset=40,
        ),
        number=5,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=36,
            y_offset=40,
        ),
        number=6,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=43,
            measure=42,
            y_offset=40,
        ),
        number=7,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=50,
            measure=49,
            y_offset=40,
        ),
        number=8,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=57,
            measure=58,
            y_offset=40,
        ),
        number=9,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=64,
            y_offset=40,
        ),
        number=10,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=71,
            measure=70,
            y_offset=40,
        ),
        number=11,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=78,
            y_offset=40,
        ),
        number=12,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=85,
            y_offset=40,
        ),
        number=13,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=92,
            y_offset=40,
        ),
        number=14,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=99,
            y_offset=40,
        ),
        number=15,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=106,
            y_offset=40,
        ),
        number=16,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=113,
            y_offset=40,
        ),
        number=17,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=120,
            y_offset=40,
        ),
        number=18,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=127,
            y_offset=40,
        ),
        number=19,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=134,
            y_offset=40,
        ),
        number=20,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=141,
            y_offset=40,
        ),
        number=21,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=148,
            measure=151,
            y_offset=40,
        ),
        number=22,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=155,
            measure=157,
            y_offset=40,
        ),
        number=23,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=162,
            measure=164,
            y_offset=40,
        ),
        number=24,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=169,
            measure=171,
            y_offset=40,
        ),
        number=25,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=176,
            measure=178,
            y_offset=40,
        ),
        number=26,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=183,
            y_offset=40,
        ),
        number=27,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=190,
            y_offset=40,
        ),
        number=28,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=197,
            measure=196,
            y_offset=40,
        ),
        number=29,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=204,
            y_offset=40,
        ),
        number=30,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=211,
            measure=212,
            y_offset=40,
        ),
        number=31,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=218,
            y_offset=40,
        ),
        number=32,
    ),
    baca.page(
        baca.system(
            *distances,
            measure=225,
            y_offset=40,
        ),
        number=33,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=232,
            measure=230,
            y_offset=40,
        ),
        number=34,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=239,
            measure=237,
            y_offset=40,
        ),
        number=35,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=246,
            measure=244,
            y_offset=40,
        ),
        number=36,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=251,
            measure=249,
            y_offset=40,
        ),
        number=37,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=258,
            measure=255,
            y_offset=40,
        ),
        number=38,
    ),
    baca.page(
        baca.system(
            *distances,
            # measure=265,
            measure=262,
            y_offset=40,
        ),
        number=39,
    ),
)

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 40),
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
spacing.override(text_measure_numbers, (1, 288), fermata=True)

spacing.override((21, 26), (1, 32))
spacing.override((49, 56), (1, 20))
spacing.override((113, 114), (1, 20))
spacing.override((116, 118), (1, 20))
spacing.override((171, 176), (1, 20))
spacing.override([191, 192, 194, 195], (1, 32))
