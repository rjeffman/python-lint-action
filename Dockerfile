FROM python:3-alpine

LABEL "com.github.actions.name"="Python Lint (pydocstyle/flake8)"
LABEL "com.github.actions.description"="Checks repository against pydocstyle and flake8."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/rjeffman/python-lint-action"
LABEL "homepage"="https://github.com/rjeffman/python-lint-action"
LABEL "maintainer"="Rafael Guterres Jeffman  <rjeffman@wredhat.com>"

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
