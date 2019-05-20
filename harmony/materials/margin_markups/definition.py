import abjad
import baca


margin_markups = abjad.OrderedDict(
    [
        ("Bfl.", abjad.MarginMarkup(markup=r"\harmony-bfl-markup")),
        ("Perc. I", abjad.MarginMarkup(markup=r"\harmony-perc-i-markup")),
        ("Perc. II", abjad.MarginMarkup(markup=r"\harmony-perc-ii-markup")),
        ("Hp.", abjad.MarginMarkup(markup=r"\harmony-harp-markup")),
        ("Va.", abjad.MarginMarkup(markup=r"\harmony-va-markup")),
        ("Vc. I", abjad.MarginMarkup(markup=r"\harmony-vc-i-markup")),
        ("Vc. II", abjad.MarginMarkup(markup=r"\harmony-vc-ii-markup")),
        ("Cb. I", abjad.MarginMarkup(markup=r"\harmony-cb-i-markup")),
        ("Cb. II", abjad.MarginMarkup(markup=r"\harmony-cb-ii-markup")),
    ]
)
