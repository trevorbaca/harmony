import baca


def main():
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
    layout = baca.layout.layout(
        baca.layout.page(
            1,
            baca.layout.System(
                measure=1,
                y_offset=90,
                distances=[18, (26), (21, 21, 26), (21, 21, 21, 21, 26)],
            ),
        ),
        baca.layout.page(
            2,
            baca.layout.System(7, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            3,
            baca.layout.System(13, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            4,
            baca.layout.System(19, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            5,
            baca.layout.System(26, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            6,
            baca.layout.System(36, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            7,
            baca.layout.System(42, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            8,
            baca.layout.System(49, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            9,
            baca.layout.System(58, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            10,
            baca.layout.System(64, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            11,
            baca.layout.System(70, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            12,
            baca.layout.System(78, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            13,
            baca.layout.System(85, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            14,
            baca.layout.System(92, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            15,
            baca.layout.System(99, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            16,
            baca.layout.System(106, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            17,
            baca.layout.System(113, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            18,
            baca.layout.System(120, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            19,
            baca.layout.System(127, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            20,
            baca.layout.System(134, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            21,
            baca.layout.System(141, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            22,
            baca.layout.System(151, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            23,
            baca.layout.System(157, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            24,
            baca.layout.System(164, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            25,
            baca.layout.System(171, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            26,
            baca.layout.System(178, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            27,
            baca.layout.System(183, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            28,
            baca.layout.System(190, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            29,
            baca.layout.System(196, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            30,
            baca.layout.System(204, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            31,
            baca.layout.System(212, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            32,
            baca.layout.System(218, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            33,
            baca.layout.System(225, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            34,
            baca.layout.System(230, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            35,
            baca.layout.System(237, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            36,
            baca.layout.System(244, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            37,
            baca.layout.System(249, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            38,
            baca.layout.System(255, y_offset=40, distances=distances),
        ),
        baca.layout.page(
            39,
            baca.layout.System(262, y_offset=40, distances=distances),
        ),
        default_spacing=(1, 40),
        spacing_overrides=(
            baca.layout.Override((21, 26), (1, 32)),
            baca.layout.Override((49, 56), (1, 20)),
            baca.layout.Override((113, 114), (1, 20)),
            baca.layout.Override((116, 118), (1, 20)),
            baca.layout.Override((171, 176), (1, 20)),
            baca.layout.Override([191, 192, 194, 195], (1, 32)),
            baca.layout.Override(text_measure_numbers, (1, 288)),
        ),
    )
    baca.build.write_layout_ly(layout)


if __name__ == "__main__":
    main()
