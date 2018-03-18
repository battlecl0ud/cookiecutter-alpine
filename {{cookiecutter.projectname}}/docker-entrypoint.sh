#!/bin/sh

if [ -z "$USER_INPUT" ]
then
      /bin/sh
else
      {% if "python" in cookiecutter.alpineversion %}
      python {{cookiecutter.script}} $USER_INPUT
      {% elif "golang" in cookiecutter.alpineversion %}
      go {{cookiecutter.script}} $USER_INPUT
      {% else %}
      /bin/sh $USER_INPUT
      {% endif %}
fi
