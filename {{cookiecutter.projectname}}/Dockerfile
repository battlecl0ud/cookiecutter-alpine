FROM {{ cookiecutter.alpineversion }}

LABEL maintainer={{ cookiecutter.name}}
LABEL email={{ cookiecutter.email}}
LABEL image={{ cookiecutter.projectname }}
LABEL source={{ cookiecutter.giturl }}

RUN apk add --no-cache git {{cookiecutter.alpinepackages}}

RUN git clone {{cookiecutter.giturl}} {{cookiecutter.projectname}}
WORKDIR {{cookiecutter.projectname}}
# Is a python requirements.txt present
{% if cookiecutter.requirements == "requirements.txt" %}
RUN pip install -r requirements.txt
{% endif %}
# Expose ports
{% if cookiecutter.ports %}
EXPOSE {{cookiecutter.ports}}
{% endif %}
# Start tool
{% if 'python' in cookiecutter.alpineversion %}
ENTRYPOINctfrT ["python", "{{ cookiecutter.pythonfile }}"]
{% else %}
ENTRYPOINT ["{{ cookiecutter.pythonfile }}"]
{% endif %}
