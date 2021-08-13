import baca

distances = [18, (32), (26, 26, 32), (26, 26, 26, 26, 32)]

spacing = baca.SpacingSpecifier(
    breaks=baca.breaks(
        baca.page(
            baca.system(measure=1, y_offset=40, distances=distances),
            number=1,
        ),
        baca.page(
            baca.system(measure=10, y_offset=40, distances=distances),
            number=2,
        ),
    ),
    fallback_duration=(1, 40),
    overrides=(baca.space([9], (1, 288)),),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(spacing)
