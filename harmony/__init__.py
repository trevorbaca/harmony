import sys

from . import library

if sys.version_info[:2] < (3, 9):
    raise ImportError("Requires Python 3.9 or later")
del sys
