import os
import pathlib

import baca


def main():
    distances = [20, (34), (31, 31, 34), (31, 31, 31, 31, 34)]
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
    eol_fermata_spacing = (1, 132)
    mol_fermata_spacing = (1, 172)
    breaks = baca.layout.Breaks(
        baca.layout.Page(
            1,
            baca.layout.System(
                measure=1,
                y_offset=90,
                distances=[22, (28), (25, 25, 28), (25, 25, 25, 25, 28)],
            ),
        ),
        baca.layout.Page(
            2,
            baca.layout.System(4, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            3,
            baca.layout.System(8, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            4,
            baca.layout.System(12, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            5,
            baca.layout.System(16, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            6,
            baca.layout.System(21, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            7,
            baca.layout.System(25, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            8,
            baca.layout.System(29, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            9,
            baca.layout.System(34, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            10,
            baca.layout.System(37, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            11,
            baca.layout.System(40, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            12,
            baca.layout.System(45, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            13,
            baca.layout.System(49, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            14,
            baca.layout.System(53, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            15,
            baca.layout.System(58, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            16,
            baca.layout.System(61, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            17,
            baca.layout.System(65, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            18,
            baca.layout.System(68, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            19,
            baca.layout.System(73, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            20,
            baca.layout.System(77, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            21,
            baca.layout.System(81, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            22,
            baca.layout.System(85, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            23,
            baca.layout.System(89, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            24,
            baca.layout.System(94, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            25,
            baca.layout.System(98, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            26,
            baca.layout.System(101, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            27,
            baca.layout.System(105, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            28,
            baca.layout.System(109, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            29,
            baca.layout.System(113, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            30,
            baca.layout.System(117, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            31,
            baca.layout.System(121, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            32,
            baca.layout.System(125, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            33,
            baca.layout.System(130, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            34,
            baca.layout.System(133, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            35,
            baca.layout.System(137, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            36,
            baca.layout.System(141, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            37,
            baca.layout.System(145, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            38,
            baca.layout.System(149, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            39,
            baca.layout.System(154, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            40,
            baca.layout.System(157, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            41,
            baca.layout.System(161, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            42,
            baca.layout.System(165, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            43,
            baca.layout.System(169, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            44,
            baca.layout.System(173, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            45,
            baca.layout.System(178, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            46,
            baca.layout.System(181, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            47,
            baca.layout.System(185, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            48,
            baca.layout.System(189, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            49,
            baca.layout.System(194, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            50,
            baca.layout.System(197, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            51,
            baca.layout.System(201, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            52,
            baca.layout.System(205, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            53,
            baca.layout.System(209, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            54,
            baca.layout.System(213, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            55,
            baca.layout.System(217, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            56,
            baca.layout.System(221, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            57,
            baca.layout.System(225, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            58,
            baca.layout.System(228, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            59,
            baca.layout.System(232, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            60,
            baca.layout.System(235, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            61,
            baca.layout.System(240, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            62,
            baca.layout.System(245, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            63,
            baca.layout.System(249, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            64,
            baca.layout.System(252, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            65,
            baca.layout.System(256, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            66,
            baca.layout.System(260, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            67,
            baca.layout.System(263, y_offset=32, distances=distances),
        ),
        baca.layout.Page(
            68,
            baca.layout.System(266, y_offset=32, distances=distances),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 40),
        overrides=(
            # baca.layout.Override(text_measure_numbers, (1, 288)),
            # baca.layout.Override(text_measure_numbers, (1, 144)),
            baca.layout.Override(text_measure_numbers, eol_fermata_spacing),
            baca.layout.Override(11, (1, 20)),
            # baca.layout.Override([12, 13, 14], (1, 16)),
            baca.layout.Override([12, 13, 14], (1, 20)),
            # baca.layout.Override([16, 17, 19], (1, 20)),
            # baca.layout.Override([16, 17, 19], (1, 16)),
            # baca.layout.Override([16, 19], (1, 16)),
            baca.layout.Override(19, (1, 16)),
            # baca.layout.Override(18, (1, 144)),
            # baca.layout.Override(18, (1, 188)),
            # baca.layout.Override(18, (1, 166)),
            baca.layout.Override(18, mol_fermata_spacing),
            baca.layout.Override(41, mol_fermata_spacing),
            # baca.layout.Override([40, 42, 43, 44], (1, 32)),
            # baca.layout.Override([40, 42, 43, 44], (1, 20)),
            baca.layout.Override([40, 42, 43, 44], (1, 16)),
            baca.layout.Override((45, 47), (1, 36)),
            # baca.layout.Override((53, 56), (1, 36)),
            # baca.layout.Override((53, 56), (1, 32)),
            baca.layout.Override((53, 56), (1, 20)),
            baca.layout.Override(69, mol_fermata_spacing),
            baca.layout.Override([68, 70, 71, 72], (1, 20)),
            baca.layout.Override(82, mol_fermata_spacing),
            baca.layout.Override([81, 83, 84], (1, 20)),
            baca.layout.Override(91, mol_fermata_spacing),
            baca.layout.Override([90, 92, 93], (1, 20)),
            baca.layout.Override((94, 96), (1, 32)),
            baca.layout.Override(107, mol_fermata_spacing),
            baca.layout.Override([105, 106, 108], (1, 20)),
            baca.layout.Override(115, mol_fermata_spacing),
            baca.layout.Override([113, 114, 116], (1, 20)),
            baca.layout.Override(119, mol_fermata_spacing),
            baca.layout.Override([117, 118, 120], (1, 32)),
            baca.layout.Override(122, mol_fermata_spacing),
            # baca.layout.Override([121, 123, 124], (1, 32)),
            baca.layout.Override([121, 123, 124], (1, 24)),
            # baca.layout.Override((125, 128), (1, 32)),
            baca.layout.Override((125, 128), (1, 24)),
            baca.layout.Override(163, mol_fermata_spacing),
            # baca.layout.Override([161, 162, 164], (1, 32)),
            baca.layout.Override([161, 162, 164], (1, 24)),
            baca.layout.Override(170, mol_fermata_spacing),
            # baca.layout.Override([169, 171, 172], (1, 32)),
            baca.layout.Override([169, 171, 172], (1, 24)),
            # baca.layout.Override((173, 176), (1, 32)),
            baca.layout.Override((173, 176), (1, 20)),
            baca.layout.Override((189, 192), (1, 20)),
            baca.layout.Override(206, mol_fermata_spacing),
            baca.layout.Override([205, 207, 208], (1, 32)),
            # baca.layout.Override((226, 227), (1, 20)),
            ### baca.layout.Override((225, 228), (1, 20)),
            # baca.layout.Override((233, 235), (1, 32)),
            baca.layout.Override(229, mol_fermata_spacing),
            baca.layout.Override([228, 230, 231], (1, 20)),
            ### baca.layout.Override((233, 235), (1, 20)),
            ### baca.layout.Override(239, mol_fermata_spacing),
            # baca.layout.Override([237, 238, 240], (1, 32)),
            ### baca.layout.Override([237, 238, 240], (1, 24)),
            baca.layout.Override(236, mol_fermata_spacing),
            baca.layout.Override(235, (1, 20)),
            baca.layout.Override([237, 238], (1, 12)),
            # baca.layout.Override((246, 247), (1, 20)),
            baca.layout.Override((245, 247), (1, 20)),
            baca.layout.Override(254, mol_fermata_spacing),
            baca.layout.Override(255, (1, 12)),
            baca.layout.Override((256, 259), (1, 56)),
            baca.layout.Override(261, mol_fermata_spacing),
            baca.layout.Override(262, (1, 24)),
            baca.layout.Override((266, 267), (1, 24)),
            baca.layout.Override(268, mol_fermata_spacing),
        ),
    )
    build_directory = pathlib.Path(os.getcwd())
    sections_directory = baca.path.get_contents_directory(build_directory) / "sections"
    time_signatures = baca.build.accumulate_time_signatures(sections_directory)
    fmns = baca.build.accumulate_fermata_measure_numbers(sections_directory)
    baca.build.write_layout_ily(
        breaks, time_signatures, spacing, fermata_measure_numbers=fmns
    )


if __name__ == "__main__":
    main()
