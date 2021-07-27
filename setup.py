#!/usr/bin/env python
import setuptools

install_requires = [
    "abjad",
    "black",
    "flake8",
    "isort",
    "pytest",
]

keywords = [
    "abjad",
    "lilypond",
    "music composition",
    "music notation",
]

if __name__ == "__main__":
    setuptools.setup(
        author="Trevor Bača",
        author_email="trevor.baca@gmail.com",
        install_requires=install_requires,
        keywords=", ".join(keywords),
        name="harmony",
        packages=["harmony"],
        platforms="Any",
        url="https://github.com/trevorbaca/harmony",
    )
