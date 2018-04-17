## {{ cookiecutter.projectname }}
[![Generic badge](https://img.shields.io/badge/source-{{cookiecutter.projectname}}-green.svg)]({{cookiecutter.giturl}})

### Auto generated block


| Information                	| Auto-generated information 	|
|----------------------------	|:----------------------------:	|
| Creator                    	| {{ cookiecutter.name }}        	|
| Email                      	| {{ cookiecutter.email }}        	|
| Project Source             	| {{ cookiecutter.giturl }}        	|
| Notes                      	| {{ cookiecutter.description }}        	|
| Ports to map               	| {{ cookiecutter.ports }}        	|
| Additional alpine packages 	| {{ cookiecutter.alpinepackages }}        	|

### Tweaking

Generated files might require some tweaking to work. Common tweaks include:

* Correcting ports
* Dockerhub image source
* Project information
* Alpine packages
* Environment variables
* Tool dependent setup
  - We suggest doing those in the `docker-entrypoint.sh` script

### Port mapping
In the Portainer interface, make sure you map you desired ports accordingly in `Advanced Options`.

### Loot
A `/loot` volume is created when the image is run, you can use it like so to keep generated data:  

```bash
$ nmap example.com > /loot/nmap_results.txt

```



-------
*To use this template, please refer to the battlecloud cookiecutter template repository*
