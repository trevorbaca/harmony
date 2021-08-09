import baca

distances = [18, (26), (21, 21, 26), (21, 21, 21, 21, 26)]

breaks = baca.breaks(
    baca.page(
        baca.system(measure=1, y_offset=90, distances=distances),
    ),
)

spacing = baca.spacing(
    breaks=breaks,
    fallback_duration=(1, 40),
    overrides=(
        baca.space(3, (1, 64)),
    ),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(breaks, spacing)
