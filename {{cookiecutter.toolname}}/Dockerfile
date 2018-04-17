FROM {{ cookiecutter.alpineversion }}

LABEL maintainer={{ cookiecutter.name}}
LABEL email={{ cookiecutter.email}}
LABEL image={{ cookiecutter.toolname }}
LABEL source={{ cookiecutter.giturl }}

RUN apk add --no-cache git {{cookiecutter.alpinepackages}}
{% if 'python' in cookiecutter.alpineversion %}
RUN git clone {{cookiecutter.giturl}} {{cookiecutter.toolname}}
WORKDIR {{cookiecutter.toolname}}
RUN pip install {{ cookiecutter.requirements }}
{% elif 'golang' in cookiecutter.alpineversion %}
RUN go get -u {{ cookiecutter.requirements }}
WORKDIR /go/bin
{% endif %}
# Expose ports
{% if cookiecutter.ports %}
EXPOSE {{cookiecutter.ports}}
{% endif %}
# Start tool
VOLUME ["/loot"]
COPY docker-entrypoint.sh .
ENTRYPOINT ["./docker-entrypoint.sh"]
