#!/bin/sh

if [ -z "$USER_INPUT" ]
then
      /bin/sh
else
      {% if "python" in cookiecutter.alpineversion %}
      python {{cookiecutter.projectname}} $USER_INPUT
      {% elif "golang" in cookiecutter.alpineversion %}
      go {{cookiecutter.projectname}} $USER_INPUT
      {% else %}
      /bin/sh $USER_INPUT
      {% endif %}
fi
