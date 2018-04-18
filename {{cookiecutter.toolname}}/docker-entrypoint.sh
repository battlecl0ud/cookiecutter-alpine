#!/bin/sh

# USER_INPUT is the user input field on the portainer template interface

if [ -z "$USER_INPUT" ]
then
      {% if "python" in cookiecutter.alpineversion %}
      python {{cookiecutter.toolname}}.py "$@"
      {% elif "golang" in cookiecutter.alpineversion %}
      {{cookiecutter.toolname}} "$@"
      {% else %}
      /bin/sh "$@"
      {% endif %}
else
      {% if "python" in cookiecutter.alpineversion %}
      python {{cookiecutter.toolname}}.py $USER_INPUT
      {% elif "golang" in cookiecutter.alpineversion %}
      {{cookiecutter.toolname}} $USER_INPUT
      {% else %}
      /bin/sh $USER_INPUT
      {% endif %}
fi
