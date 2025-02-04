black-check:
	black --check --diff .

black-reformat:
	black .

clean:
	find . -name '*.pyc' | xargs rm
	rm -Rif *.egg-info/
	rm -Rif .cache
	rm -Rif .tox
	rm -Rif __pycache__
	rm -Rif build
	rm -Rif dist
	rm -Rif htmlcov
	rm -Rif prof

flake_ignore = --ignore=E203,E266,E501,F811,W503
flake_options = --isolated --max-line-length=88

flake8:
	flake8 ${flake_exclude} ${flake_ignore} ${flake_options}

isort-check:
	isort \
	--case-sensitive \
	--check-only \
	--line-width=88 \
	--multi-line=3 \
	--thirdparty=abjad \
	--thirdparty=abjadext \
	--thirdparty=baca \
	--thirdparty=ply \
	--thirdparty=uqbar \
	--trailing-comma \
	--use-parentheses \
	.

isort-reformat:
	isort \
	--case-sensitive \
	--line-width=88 \
	--multi-line=3 \
	--thirdparty=abjad \
	--thirdparty=abjadext \
	--thirdparty=baca \
	--thirdparty=ply \
	--thirdparty=uqbar \
	--trailing-comma \
	--use-parentheses \
	.

pytest:
	pytest .

pytest-x:
	pytest -x .

reformat:
	make black-reformat
	make isort-reformat

check:
	make black-check
	make flake8
	make isort-check

test:
	make black-check
	make flake8
	make isort-check
