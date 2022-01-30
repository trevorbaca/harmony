import sys

from . import library

__all__ = ["library"]

if sys.version_info[:2] < (3, 10):
    raise ImportError("Requires Python 3.10 or later")
del sys
