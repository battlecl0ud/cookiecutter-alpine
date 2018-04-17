## {{ cookiecutter.toolname }}
[![Generic badge](https://img.shields.io/badge/source-{{cookiecutter.toolname}}-green.svg)]({{cookiecutter.giturl}})  
:cloud:  
:cloud: *battlecloud friendly edition*  
:cloud:

### Auto generated block :monkey_face:


| Information                	| Auto-generated information 	|
|----------------------------	|:----------------------------:	|
| Creator                    	| {{ cookiecutter.name }}        	|
| Email                      	| {{ cookiecutter.email }}        	|
| Project Source             	| {{ cookiecutter.giturl }}        	|
| Notes                      	| {{ cookiecutter.description }}        	|
| Ports to map               	| {{ cookiecutter.ports }}        	|
| Additional alpine packages 	| {{ cookiecutter.alpinepackages }}        	|

### Tweaking :wrench:

Generated files might require some tweaking to work. Common tweaks include:

* Correcting ports
* Dockerhub image source
* Project information
* Alpine packages
* Environment variables
* Tool dependent setup
  - We suggest doing those in the `docker-entrypoint.sh` script

### Port mapping :ear:
In the Portainer interface, make sure you map you desired ports accordingly in `Advanced Options`.

### Loot :moneybag:
A `/loot` volume is created when the image is run, you can use it like so to keep generated data:  

```bash
$ nmap example.com > /loot/nmap_results.txt

```



-------
*To use this template, please refer to the battlecloud cookiecutter [template repository](https://github.com/battlecl0ud/cookiecutter-alpine)* :construction_worker:
