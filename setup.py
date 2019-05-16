#!/usr/bin/env python
import setuptools


if __name__ == '__main__':
    setuptools.setup(
        author='Trevor Bača',
        author_email='trevor.baca@gmail.com',
        install_requires = (
            'abjad',
            ),
        name='harmony',
        packages=(
            'harmony',
            ),
        url='https://github.com/trevorbaca/harmony',
        version='0.1',
        zip_safe=False,
        )
