
.PHONY: build
build:
	python setup.py sdist bdist_wheel

.PHONY: publish
publish:
	twine upload dist/*