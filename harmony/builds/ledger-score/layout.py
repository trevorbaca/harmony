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
            measure=11,
            y_offset=40,
            ),
        number=2,
        ),
    baca.page(
        baca.system(
            *distances,
            measure=21,
            y_offset=40,
            ),
        number=3,
        ),
    )
    
spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 32),
    )
