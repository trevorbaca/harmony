import baca

distances = [18, (26), (21, 21, 26), (21, 21, 21, 21, 26)]

spacing = baca.SpacingSpecifier(
    breaks=baca.breaks(
        baca.page(
            baca.system(measure=1, y_offset=90, distances=distances),
        ),
    ),
    fallback_duration=(1, 40),
    overrides=(baca.space(3, (1, 64)),),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(spacing)
