.DEFAULT_GOAL := all
all: test build publish

.PHONY: test
test:
	python -m unittest tests/test_*.py

.PHONY: build
build:
	python setup.py sdist bdist_wheel

.PHONY: publish
publish:
	twine upload dist/*
