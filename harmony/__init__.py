import distutils.version
import platform

from harmony.ScoreTemplate import ScoreTemplate, margin_markup

from .tools import (
    appoggiato,
    appoggiato_pitches_a,
    appoggiato_pitches_a_flat,
    appoggiato_pitches_b_2,
    appoggiato_pitches_b_flat,
    appoggiato_pitches_c_3,
    appoggiato_pitches_d_flat_3,
    appoggiato_pitches_g,
    bass_drum_staff_position,
    brake_drum_staff_position,
    bridge_staff_position,
    cerulean,
    damp_counts,
    damp_counts_curtailed,
    duration_color,
    glissando_counts,
    glissando_counts_curtailed,
    instruments,
    margin_markups,
    metronome_marks,
    phjc,
    purpleheart_staff_positions,
    rimbalzandi,
    sixteenths,
    slate_staff_position,
    tam_tam_staff_position,
    tessera_1,
    tessera_2,
    tessera_3,
    tessera_4,
    train,
    triangle_staff_position,
    tuplet,
    warble,
    warble_pitches,
    whisk_staff_position,
)

__all__ = [
    "ScoreTemplate",
    "margin_markup",
    "instruments",
    "margin_markups",
    "metronome_marks",
    "appoggiato_pitches_d_flat_3",
    "appoggiato_pitches_c_3",
    "appoggiato_pitches_b_2",
    "appoggiato_pitches_b_flat",
    "appoggiato_pitches_a",
    "appoggiato_pitches_a_flat",
    "appoggiato_pitches_g",
    "damp_counts",
    "damp_counts_curtailed",
    "glissando_counts",
    "glissando_counts_curtailed",
    "duration_color",
    "cerulean",
    "warble_pitches",
    "appoggiato",
    "phjc",
    "rimbalzandi",
    "sixteenths",
    "tessera_1",
    "tessera_2",
    "tessera_3",
    "tessera_4",
    "train",
    "tuplet",
    "warble",
    "bass_drum_staff_position",
    "bridge_staff_position",
    "brake_drum_staff_position",
    "purpleheart_staff_positions",
    "slate_staff_position",
    "tam_tam_staff_position",
    "triangle_staff_position",
    "whisk_staff_position",
]

if not (
    distutils.version.LooseVersion("3.7")
    < distutils.version.LooseVersion(platform.python_version())
):
    raise ImportError("Requires Python 3.7.")
del distutils
del platform
