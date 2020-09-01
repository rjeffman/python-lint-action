#!/bin/sh -e

echo "Running pydocstyle `pydocstyle --version`"
pydocstyle 

echo "Running flake8 `flake8 --version`"
flake8 .
