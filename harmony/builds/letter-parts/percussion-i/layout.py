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
        22,
        26,
        27,
        31,
        34,
        38,
        46,
        51,
        52,
        53,
        70,
        71,
        74,
        77,
        78,
        79,
        88,
        108,
        112,
        126,
        127,
        140,
        196,
        197,
        210,
        226,
        240,
        247,
    ]
    breaks = baca.layout.Breaks(
        baca.layout.Page(
            1,
            baca.layout.System(1, y_offset=y_offset_3, distances=distances),
            baca.layout.System(6, y_offset=y_offset_4, distances=distances),
            baca.layout.System(11, y_offset=y_offset_5, distances=distances),
            baca.layout.System(16, y_offset=y_offset_6, distances=distances),
            baca.layout.System(21, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            2,
            baca.layout.System(26, y_offset=y_offset_1, distances=distances),
            baca.layout.System(31, y_offset=y_offset_2, distances=distances),
            baca.layout.System(36, y_offset=y_offset_3, distances=distances),
            baca.layout.System(42, y_offset=y_offset_4, distances=distances),
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
            baca.layout.System(92, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            4,
            baca.layout.System(96, y_offset=y_offset_1, distances=distances),
            baca.layout.System(101, y_offset=y_offset_2, distances=distances),
            baca.layout.System(106, y_offset=y_offset_3, distances=distances),
            baca.layout.System(114, y_offset=y_offset_4, distances=distances),
            baca.layout.System(121, y_offset=y_offset_5, distances=distances),
            baca.layout.System(126, y_offset=y_offset_6, distances=distances),
            baca.layout.System(131, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            5,
            baca.layout.System(136, y_offset=y_offset_1, distances=distances),
            baca.layout.System(141, y_offset=y_offset_2, distances=distances),
            baca.layout.System(146, y_offset=y_offset_3, distances=distances),
            baca.layout.System(151, y_offset=y_offset_4, distances=distances),
            baca.layout.System(157, y_offset=y_offset_5, distances=distances),
            baca.layout.System(161, y_offset=y_offset_6, distances=distances),
            baca.layout.System(166, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            6,
            baca.layout.System(171, y_offset=y_offset_1, distances=distances),
            baca.layout.System(176, y_offset=y_offset_2, distances=distances),
            baca.layout.System(181, y_offset=y_offset_3, distances=distances),
            baca.layout.System(186, y_offset=y_offset_4, distances=distances),
            baca.layout.System(191, y_offset=y_offset_5, distances=distances),
            baca.layout.System(196, y_offset=y_offset_6, distances=distances),
            baca.layout.System(201, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            7,
            baca.layout.System(207, y_offset=y_offset_1, distances=distances),
            baca.layout.System(212, y_offset=y_offset_2, distances=distances),
            baca.layout.System(216, y_offset=y_offset_3, distances=distances),
            baca.layout.System(221, y_offset=y_offset_4, distances=distances),
            baca.layout.System(226, y_offset=y_offset_5, distances=distances),
            baca.layout.System(231, y_offset=y_offset_6, distances=distances),
            baca.layout.System(237, y_offset=y_offset_7, distances=distances),
        ),
        baca.layout.Page(
            8,
            baca.layout.System(241, y_offset=y_offset_1, distances=distances),
            baca.layout.System(246, y_offset=y_offset_2, distances=distances),
            baca.layout.System(251, y_offset=y_offset_3, distances=distances),
            baca.layout.System(256, y_offset=y_offset_4, distances=distances),
            baca.layout.System(262, y_offset=y_offset_5, distances=distances),
            baca.layout.System(264, y_offset=y_offset_6, distances=distances),
            baca.layout.System(266, y_offset=y_offset_7, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 32),
        strict_overrides=(baca.layout.Override(empty_measures, (1, 4)),),
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
    baca.build.persist_build_layout_ily(environment.build_directory, lilypond_file)
    baca.build.write_bol_metadata(environment.build_directory, bol_measure_numbers)
