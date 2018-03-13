FROM alpine:latest
# Generated with <3 with battlecloud cookiecutter
MAINTAINER {{ cookiecutter.name }} <{{ cookiecutter.email }}>
# Python version
{% if cookiecutter.pythonversion == "python2" %}
RUN apk add --update python py-pip git tini
{% elif cookiecutter.pythonversion == "python3" %}
RUN apk add --update python3 py3-pip git tini; alias pip=pip3
{% else %}
RUN apk add --update git tini
{% endif %}
# Additional alpine packages
{% if cookiecutter.alpinepackages %}
RUN apk add {{cookiecutter.alpinepackages}}
{% endif %}
# Get project
RUN git clone {{cookiecutter.giturl}} {{cookiecutter.projectname}}
WORKDIR {{cookiecutter.projectname}}
# Is a python requirements.txt present
{% if cookiecutter.requirements == "y" %}
{% if cookiecutter.pythonversion == "python2" %}
RUN pip install -r requirements.txt
{% elif cookiecutter.pythonversion == "python3" %}
RUN pip3 install -r requirements.txt
{% endif %}
{% endif %}
# Expose ports
{% if cookiecutter.ports %}
EXPOSE {{cookiecutter.ports}}
{% endif %}
# Start tool
CMD ["python", {{cookiecutter.pythonfile}}]
ENTRYPOINT ["/sbin/tini", "--"]
