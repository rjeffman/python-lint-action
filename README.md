# python-lint-action

GitHub Action for python linting with `pydocstyle` and `flake8`, using
project's settings.

## Usage

```
---
name: Run Linters
on:
  - push
  - pull_request
jobs:
  linters:
    name: Run Linters
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-python@v2

      - name: Run Python linters
        uses: rjeffman/python-lint-action@master
```
