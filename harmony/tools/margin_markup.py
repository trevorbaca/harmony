import abjad
import baca
import harmony
import typing


def margin_markup(
    key: str,
    *,
    alert: baca.IndicatorCommand = None,
    context: str = "Staff",
    selector: abjad.Selector = "baca.leaf(0)",
) -> baca.CommandTyping:
    """
    Makes tagged margin markup indicator command.
    """
    margin_markup = harmony.margin_markups[key]
    command = baca.margin_markup(
        margin_markup, alert=alert, context=context, selector=selector
    )
    return baca.not_parts(command)
