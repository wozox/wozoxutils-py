
.PHONY: build
build:
	python setup.py sdist bdist_wheel

.PHONY: publish
publish:
	twine upload dist/*

.PHONY: test
test:
	python -m unittest tests/test_*.py