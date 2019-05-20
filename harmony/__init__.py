import distutils.version
import platform

if not (
    distutils.version.LooseVersion("3.6")
    < distutils.version.LooseVersion(platform.python_version())
):
    raise ImportError("Requires Python 3.6.")
del distutils
del platform
from harmony.tools import *

from harmony.materials.instruments.definition import instruments
# from harmony.materials.metronome_marks.definition import metronome_marks
from harmony import segments
