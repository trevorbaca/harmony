#!/usr/bin/env python
import setuptools

if __name__ == "__main__":
    setuptools.setup(
        author="Trevor Bača",
        author_email="trevor.baca@gmail.com",
        install_requires=["abjad>=3.15"],
        keywords="abjad, lilypond, music composition, music notation",
        name="harmony",
        packages=["harmony"],
        platforms="Any",
        python_requires=">=3.10",
        url="https://github.com/trevorbaca/harmony",
        version="3.15",
    )
