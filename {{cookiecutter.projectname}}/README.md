## {{ cookiecutter.projectname }}

### Auto generated block


| Information                	| Auto-generated information 	|
|----------------------------	|:----------------------------:	|
| Creator                    	| {{ cookiecutter.name }}        	|
| Email                      	| {{ cookiecutter.email }}        	|
| Project Source             	| {{ cookiecutter.giturl }}        	|
| Notes                      	| {{ cookiecutter.description }}        	|
| Ports to map               	| {{ cookiecutter.ports }}        	|
| Additional alpine packages 	| {{ cookiecutter.alpinepackages }}        	|


### Loot
A `/loot` volume is created when the image is run, you can use it like so to keep generated data:  

```bash
$ nmap example.com > /loot/nmap_results.txt

```



-------
*To use this template, please refer to the battlecloud cookiecutter template repository*
