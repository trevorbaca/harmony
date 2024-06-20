import baca


def main(environment):
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
    breaks = baca.layout.Breaks(
        baca.layout.Page(
            1,
            baca.layout.System(1, y_offset=y_offset_3, distances=distances),
            baca.layout.System(4, y_offset=y_offset_4, distances=distances),
            baca.layout.System(7, y_offset=y_offset_5, distances=distances),
            baca.layout.System(12, y_offset=y_offset_6, distances=distances),
            baca.layout.System(17, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            2,
            baca.layout.System(25, y_offset=y_offset_1, distances=distances),
            baca.layout.System(32, y_offset=y_offset_2, distances=distances),
            baca.layout.System(36, y_offset=y_offset_3, distances=distances),
            baca.layout.System(40, y_offset=y_offset_4, distances=distances),
            baca.layout.System(46, y_offset=y_offset_5, distances=distances),
            baca.layout.System(51, y_offset=y_offset_6, distances=distances),
            baca.layout.System(56, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            3,
            baca.layout.System(61, y_offset=y_offset_1, distances=distances),
            baca.layout.System(66, y_offset=y_offset_2, distances=distances),
            baca.layout.System(71, y_offset=y_offset_3, distances=distances),
            baca.layout.System(76, y_offset=y_offset_4, distances=distances),
            baca.layout.System(81, y_offset=y_offset_5, distances=distances),
            baca.layout.System(86, y_offset=y_offset_6, distances=distances),
            baca.layout.System(90, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            4,
            baca.layout.System(96, y_offset=y_offset_1, distances=distances),
            baca.layout.System(101, y_offset=y_offset_2, distances=distances),
            baca.layout.System(108, y_offset=y_offset_3, distances=distances),
            baca.layout.System(113, y_offset=y_offset_4, distances=distances),
            baca.layout.System(120, y_offset=y_offset_5, distances=distances),
            baca.layout.System(126, y_offset=y_offset_6, distances=distances),
            baca.layout.System(131, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            5,
            baca.layout.System(136, y_offset=y_offset_1, distances=distances),
            baca.layout.System(141, y_offset=y_offset_2, distances=distances),
            baca.layout.System(146, y_offset=y_offset_3, distances=distances),
            baca.layout.System(152, y_offset=y_offset_4, distances=distances),
            baca.layout.System(158, y_offset=y_offset_5, distances=distances),
            baca.layout.System(161, y_offset=y_offset_6, distances=distances),
            baca.layout.System(166, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            6,
            baca.layout.System(169, y_offset=y_offset_1, distances=distances),
            baca.layout.System(176, y_offset=y_offset_2, distances=distances),
            baca.layout.System(181, y_offset=y_offset_3, distances=distances),
            baca.layout.System(186, y_offset=y_offset_4, distances=distances),
            baca.layout.System(192, y_offset=y_offset_5, distances=distances),
            baca.layout.System(196, y_offset=y_offset_6, distances=distances),
            baca.layout.System(200, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            7,
            baca.layout.System(204, y_offset=y_offset_1, distances=distances),
            baca.layout.System(210, y_offset=y_offset_2, distances=distances),
            baca.layout.System(216, y_offset=y_offset_3, distances=distances),
            baca.layout.System(221, y_offset=y_offset_4, distances=distances),
            baca.layout.System(225, y_offset=y_offset_5, distances=distances),
            baca.layout.System(230, y_offset=y_offset_6, distances=distances),
            baca.layout.System(234, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            8,
            baca.layout.System(240, y_offset=y_offset_1, distances=distances),
            baca.layout.System(245, y_offset=y_offset_2, distances=distances),
            baca.layout.System(250, y_offset=y_offset_3, distances=distances),
            baca.layout.System(255, y_offset=y_offset_4, distances=distances),
            baca.layout.System(262, y_offset=y_offset_5, distances=distances),
            baca.layout.System(264, y_offset=y_offset_6, distances=distances),
            baca.layout.System(266, y_offset=y_offset_7, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 32),
        overrides=(baca.layout.Override(empty_measures, (1, 4)),),
    )
    return baca.section.make_layout_score(
        breaks,
        environment.time_signatures,
        fermata_measure_numbers=environment.fermata_measure_numbers,
        spacing=spacing,
    )


if __name__ == "__main__":
    environment = baca.build.read_build_directory_environment()
    lilypond_file, bol_measure_numbers = main(environment)
    baca.build.persist_layout_ily(environment.build_directory, lilypond_file)
    baca.build.write_bol_metadata(environment.build_directory, bol_measure_numbers)
