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
    layout = baca.make_layout(
        baca.page(
            1,
            baca.system(
                measure=1,
                y_offset=90,
                distances=[22, (28), (25, 25, 28), (25, 25, 25, 25, 28)],
            ),
        ),
        baca.page(
            2,
            baca.system(measure=4, y_offset=32, distances=distances),
        ),
        baca.page(
            3,
            baca.system(measure=8, y_offset=32, distances=distances),
        ),
        baca.page(
            4,
            baca.system(measure=12, y_offset=32, distances=distances),
        ),
        baca.page(
            5,
            baca.system(measure=16, y_offset=32, distances=distances),
        ),
        baca.page(
            6,
            baca.system(measure=21, y_offset=32, distances=distances),
        ),
        baca.page(
            7,
            baca.system(measure=25, y_offset=32, distances=distances),
        ),
        baca.page(
            8,
            baca.system(measure=29, y_offset=32, distances=distances),
        ),
        baca.page(
            9,
            baca.system(measure=34, y_offset=32, distances=distances),
        ),
        baca.page(
            10,
            baca.system(measure=37, y_offset=32, distances=distances),
        ),
        baca.page(
            11,
            baca.system(measure=40, y_offset=32, distances=distances),
        ),
        baca.page(
            12,
            baca.system(measure=45, y_offset=32, distances=distances),
        ),
        baca.page(
            13,
            baca.system(measure=49, y_offset=32, distances=distances),
        ),
        baca.page(
            14,
            baca.system(measure=53, y_offset=32, distances=distances),
        ),
        baca.page(
            15,
            baca.system(measure=58, y_offset=32, distances=distances),
        ),
        baca.page(
            16,
            baca.system(measure=61, y_offset=32, distances=distances),
        ),
        baca.page(
            17,
            baca.system(measure=65, y_offset=32, distances=distances),
        ),
        baca.page(
            18,
            baca.system(measure=68, y_offset=32, distances=distances),
        ),
        baca.page(
            19,
            baca.system(measure=73, y_offset=32, distances=distances),
        ),
        baca.page(
            20,
            baca.system(measure=77, y_offset=32, distances=distances),
        ),
        baca.page(
            21,
            baca.system(measure=81, y_offset=32, distances=distances),
        ),
        baca.page(
            22,
            baca.system(measure=85, y_offset=32, distances=distances),
        ),
        baca.page(
            23,
            baca.system(measure=89, y_offset=32, distances=distances),
        ),
        baca.page(
            24,
            baca.system(measure=94, y_offset=32, distances=distances),
        ),
        baca.page(
            25,
            baca.system(measure=98, y_offset=32, distances=distances),
        ),
        baca.page(
            26,
            baca.system(measure=101, y_offset=32, distances=distances),
        ),
        baca.page(
            27,
            baca.system(measure=105, y_offset=32, distances=distances),
        ),
        baca.page(
            28,
            baca.system(measure=109, y_offset=32, distances=distances),
        ),
        baca.page(
            29,
            baca.system(measure=113, y_offset=32, distances=distances),
        ),
        baca.page(
            30,
            baca.system(measure=117, y_offset=32, distances=distances),
        ),
        baca.page(
            31,
            baca.system(measure=121, y_offset=32, distances=distances),
        ),
        baca.page(
            32,
            baca.system(measure=125, y_offset=32, distances=distances),
        ),
        baca.page(
            33,
            baca.system(measure=130, y_offset=32, distances=distances),
        ),
        baca.page(
            34,
            baca.system(measure=133, y_offset=32, distances=distances),
        ),
        baca.page(
            35,
            baca.system(measure=137, y_offset=32, distances=distances),
        ),
        baca.page(
            36,
            baca.system(measure=141, y_offset=32, distances=distances),
        ),
        baca.page(
            37,
            baca.system(measure=145, y_offset=32, distances=distances),
        ),
        baca.page(
            38,
            baca.system(measure=149, y_offset=32, distances=distances),
        ),
        baca.page(
            39,
            baca.system(measure=154, y_offset=32, distances=distances),
        ),
        baca.page(
            40,
            baca.system(measure=157, y_offset=32, distances=distances),
        ),
        baca.page(
            41,
            baca.system(measure=161, y_offset=32, distances=distances),
        ),
        baca.page(
            42,
            baca.system(measure=165, y_offset=32, distances=distances),
        ),
        baca.page(
            43,
            baca.system(measure=169, y_offset=32, distances=distances),
        ),
        baca.page(
            44,
            baca.system(measure=173, y_offset=32, distances=distances),
        ),
        baca.page(
            45,
            baca.system(measure=178, y_offset=32, distances=distances),
        ),
        baca.page(
            46,
            baca.system(measure=181, y_offset=32, distances=distances),
        ),
        baca.page(
            47,
            baca.system(measure=185, y_offset=32, distances=distances),
        ),
        baca.page(
            48,
            baca.system(measure=189, y_offset=32, distances=distances),
        ),
        baca.page(
            49,
            baca.system(measure=194, y_offset=32, distances=distances),
        ),
        baca.page(
            50,
            baca.system(measure=197, y_offset=32, distances=distances),
        ),
        baca.page(
            51,
            baca.system(measure=201, y_offset=32, distances=distances),
        ),
        baca.page(
            52,
            baca.system(measure=205, y_offset=32, distances=distances),
        ),
        baca.page(
            53,
            baca.system(measure=209, y_offset=32, distances=distances),
        ),
        baca.page(
            54,
            baca.system(measure=213, y_offset=32, distances=distances),
        ),
        baca.page(
            55,
            baca.system(measure=217, y_offset=32, distances=distances),
        ),
        baca.page(
            56,
            baca.system(measure=221, y_offset=32, distances=distances),
        ),
        baca.page(
            57,
            baca.system(measure=225, y_offset=32, distances=distances),
        ),
        baca.page(
            58,
            baca.system(measure=228, y_offset=32, distances=distances),
        ),
        baca.page(
            59,
            baca.system(measure=232, y_offset=32, distances=distances),
        ),
        baca.page(
            60,
            baca.system(measure=235, y_offset=32, distances=distances),
        ),
        baca.page(
            61,
            baca.system(measure=240, y_offset=32, distances=distances),
        ),
        baca.page(
            62,
            baca.system(measure=245, y_offset=32, distances=distances),
        ),
        baca.page(
            63,
            baca.system(measure=249, y_offset=32, distances=distances),
        ),
        baca.page(
            64,
            baca.system(measure=252, y_offset=32, distances=distances),
        ),
        baca.page(
            65,
            baca.system(measure=256, y_offset=32, distances=distances),
        ),
        baca.page(
            66,
            baca.system(measure=260, y_offset=32, distances=distances),
        ),
        baca.page(
            67,
            baca.system(measure=263, y_offset=32, distances=distances),
        ),
        baca.page(
            68,
            baca.system(measure=266, y_offset=32, distances=distances),
        ),
        spacing=(1, 40),
        overrides=(
            # baca.region(text_measure_numbers, (1, 288)),
            # baca.region(text_measure_numbers, (1, 144)),
            baca.region(text_measure_numbers, eol_fermata_spacing),
            baca.region(11, (1, 20)),
            # baca.region([12, 13, 14], (1, 16)),
            baca.region([12, 13, 14], (1, 20)),
            # baca.region([16, 17, 19], (1, 20)),
            # baca.region([16, 17, 19], (1, 16)),
            # baca.region([16, 19], (1, 16)),
            baca.region(19, (1, 16)),
            # baca.region(18, (1, 144)),
            # baca.region(18, (1, 188)),
            # baca.region(18, (1, 166)),
            baca.region(18, mol_fermata_spacing),
            baca.region(41, mol_fermata_spacing),
            # baca.region([40, 42, 43, 44], (1, 32)),
            # baca.region([40, 42, 43, 44], (1, 20)),
            baca.region([40, 42, 43, 44], (1, 16)),
            baca.region((45, 47), (1, 36)),
            # baca.region((53, 56), (1, 36)),
            # baca.region((53, 56), (1, 32)),
            baca.region((53, 56), (1, 20)),
            baca.region(69, mol_fermata_spacing),
            baca.region([68, 70, 71, 72], (1, 20)),
            baca.region(82, mol_fermata_spacing),
            baca.region([81, 83, 84], (1, 20)),
            baca.region(91, mol_fermata_spacing),
            baca.region([90, 92, 93], (1, 20)),
            baca.region((94, 96), (1, 32)),
            baca.region(107, mol_fermata_spacing),
            baca.region([105, 106, 108], (1, 20)),
            baca.region(115, mol_fermata_spacing),
            baca.region([113, 114, 116], (1, 20)),
            baca.region(119, mol_fermata_spacing),
            baca.region([117, 118, 120], (1, 32)),
            baca.region(122, mol_fermata_spacing),
            # baca.region([121, 123, 124], (1, 32)),
            baca.region([121, 123, 124], (1, 24)),
            # baca.region((125, 128), (1, 32)),
            baca.region((125, 128), (1, 24)),
            baca.region(163, mol_fermata_spacing),
            # baca.region([161, 162, 164], (1, 32)),
            baca.region([161, 162, 164], (1, 24)),
            baca.region(170, mol_fermata_spacing),
            # baca.region([169, 171, 172], (1, 32)),
            baca.region([169, 171, 172], (1, 24)),
            # baca.region((173, 176), (1, 32)),
            baca.region((173, 176), (1, 20)),
            baca.region((189, 192), (1, 20)),
            baca.region(206, mol_fermata_spacing),
            baca.region([205, 207, 208], (1, 32)),
            # baca.region((226, 227), (1, 20)),
            ### baca.region((225, 228), (1, 20)),
            # baca.region((233, 235), (1, 32)),
            baca.region(229, mol_fermata_spacing),
            baca.region([228, 230, 231], (1, 20)),
            ### baca.region((233, 235), (1, 20)),
            ### baca.region(239, mol_fermata_spacing),
            # baca.region([237, 238, 240], (1, 32)),
            ### baca.region([237, 238, 240], (1, 24)),
            baca.region(236, mol_fermata_spacing),
            baca.region(235, (1, 20)),
            baca.region([237, 238], (1, 12)),
            # baca.region((246, 247), (1, 20)),
            baca.region((245, 247), (1, 20)),
            baca.region(254, mol_fermata_spacing),
            baca.region(255, (1, 12)),
            baca.region((256, 259), (1, 56)),
            baca.region(261, mol_fermata_spacing),
            baca.region(262, (1, 24)),
            baca.region((266, 267), (1, 24)),
            baca.region(268, mol_fermata_spacing),
        ),
    )
    baca.section.make_layout_ly(layout)


if __name__ == "__main__":
    main()
