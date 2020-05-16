import distutils.version
import platform

from harmony.ScoreTemplate import ScoreTemplate, margin_markup
from harmony.materials.instruments.definition import instruments
from harmony.materials.margin_markups.definition import margin_markups
from harmony.materials.metronome_marks.definition import metronome_marks
from harmony.tools import *

if not (
    distutils.version.LooseVersion("3.7")
    < distutils.version.LooseVersion(platform.python_version())
):
    raise ImportError("Requires Python 3.7.")
del distutils
del platform
