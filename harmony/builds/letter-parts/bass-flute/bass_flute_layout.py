import baca


distances = (10,)
y_offset_1 = 12 + 1 * 9
y_offset_2 = 40 + 2 * 9
y_offset_3 = 68 + 3 * 9
y_offset_4 = 96 + 4 * 9
y_offset_5 = 124 + 5 * 9
y_offset_6 = 152 + 6 * 9
y_offset_7 = 180 + 7 * 9

breaks = baca.breaks(

    baca.page(
        baca.system(
            distances,
            measure=1,
            y_offset=y_offset_3,
        ),
        baca.system(
            distances,
            measure=4,
            y_offset=y_offset_4,
        ),
        baca.system(
            distances,
            measure=7,
            y_offset=y_offset_5,
        ),
        baca.system(
            distances,
            measure=12,
            y_offset=y_offset_6,
        ),
        baca.system(
            distances,
            measure=17,
            y_offset=y_offset_7,
        ),
        number=1,
    ),

    baca.page(
        baca.system(
            distances,
            measure=25,
            y_offset=y_offset_1,
        ),
        baca.system(
            distances,
            measure=32,
            y_offset=y_offset_2,
        ),
        baca.system(
            distances,
            measure=36,
            y_offset=y_offset_3,
        ),
        baca.system(
            distances,
            #measure=41, # fermata
            measure=40,
            y_offset=y_offset_4,
        ),
        baca.system(
            distances,
            measure=46,
            y_offset=y_offset_5,
        ),
        baca.system(
            distances,
            measure=51,
            y_offset=y_offset_6,
        ),
        baca.system(
            distances,
            measure=56,
            y_offset=y_offset_7,
        ),
        number=2,
    ),

    baca.page(
        baca.system(
            distances,
            measure=61,
            y_offset=y_offset_1,
        ),
        baca.system(
            distances,
            measure=66,
            y_offset=y_offset_2,
        ),
        baca.system(
            distances,
            measure=71,
            y_offset=y_offset_3,
        ),
        baca.system(
            distances,
            measure=76,
            y_offset=y_offset_4,
        ),
        baca.system(
            distances,
            measure=81,
            y_offset=y_offset_5,
        ),
        baca.system(
            distances,
            measure=86,
            y_offset=y_offset_6,
        ),
        baca.system(
            distances,
            #measure=91, # fermata
            measure=90,
            y_offset=y_offset_7,
        ),
        number=3,
    ),

    baca.page(
        baca.system(
            distances,
            measure=96,
            y_offset=y_offset_1,
        ),
        baca.system(
            distances,
            measure=101,
            y_offset=y_offset_2,
        ),
        baca.system(
            distances,
            measure=106,
            y_offset=y_offset_3,
        ),
        baca.system(
            distances,
            #measure=116, # spacing
            measure=114,
            y_offset=y_offset_4,
        ),
        baca.system(
            distances,
            measure=121,
            y_offset=y_offset_5,
        ),
        baca.system(
            distances,
            measure=126,
            y_offset=y_offset_6,
        ),
        baca.system(
            distances,
            measure=131,
            y_offset=y_offset_7,
        ),
        number=4,
    ),

    baca.page(
        baca.system(
            distances,
            measure=136,
            y_offset=y_offset_1,
        ),
        baca.system(
            distances,
            measure=141,
            y_offset=y_offset_2,
        ),
        baca.system(
            distances,
            #measure=156, # fermata
            measure=146,
            y_offset=y_offset_3,
        ),
        baca.system(
            distances,
            measure=152,
            y_offset=y_offset_4,
        ),
        baca.system(
            distances,
            #measure=156, # fermata
            measure=158,
            y_offset=y_offset_5,
        ),
        baca.system(
            distances,
            measure=161,
            y_offset=y_offset_6,
        ),
        baca.system(
            distances,
            measure=166,
            y_offset=y_offset_7,
        ),
        number=5,
    ),

    baca.page(
        baca.system(
            distances,
            measure=169,
            y_offset=y_offset_1,
        ),
        baca.system(
            distances,
            measure=176,
            y_offset=y_offset_2,
        ),
        baca.system(
            distances,
            measure=181,
            y_offset=y_offset_3,
        ),
        baca.system(
            distances,
            measure=186,
            y_offset=y_offset_4,
        ),
        baca.system(
            distances,
            measure=192,
            y_offset=y_offset_5,
        ),
        baca.system(
            distances,
            measure=196,
            y_offset=y_offset_6,
        ),
        baca.system(
            distances,
            measure=200,
            y_offset=y_offset_7,
        ),
        number=6,
    ),

    baca.page(
        baca.system(
            distances,
            #measure=206, # fermata
            measure=204,
            y_offset=y_offset_1,
        ),
        baca.system(
            distances,
            #measure=211, # fermata
            measure=210,
            y_offset=y_offset_2,
        ),
        baca.system(
            distances,
            measure=216,
            y_offset=y_offset_3,
        ),
        baca.system(
            distances,
            measure=221,
            y_offset=y_offset_4,
        ),
        baca.system(
            distances,
            measure=226,
            y_offset=y_offset_5,
        ),
        baca.system(
            distances,
            measure=231,
            y_offset=y_offset_6,
        ),
        baca.system(
            distances,
            #measure=236, # fermata
            measure=234,
            y_offset=y_offset_7,
        ),
        number=7,
    ),

    baca.page(
        baca.system(
            distances,
            measure=241,
            y_offset=y_offset_1,
        ),
        baca.system(
            distances,
            measure=246,
            y_offset=y_offset_2,
        ),
        baca.system(
            distances,
            measure=251,
            y_offset=y_offset_3,
        ),
        baca.system(
            distances,
            measure=256,
            y_offset=y_offset_4,
        ),
        baca.system(
            distances,
            #measure=261, # fermata
            #measure=260,
            measure=262,
            y_offset=y_offset_5,
        ),
        baca.system(
            distances,
            measure=266,
            y_offset=y_offset_6,
        ),
        number=8,
    ),

)

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 32),
)
