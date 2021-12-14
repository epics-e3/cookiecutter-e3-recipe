# e3 conda recipe cookiecutter template

[Cookiecutter](https://github.com/audreyr/cookiecutter) template for e3 conda recipes.

## Quickstart

Install the latest Cookiecutter if you haven't installed it yet:

```
$ pip install --user cookiecutter
```

Generate an Ansible role project:

```
$ cookiecutter git+https://gitlab.esss.lu.se/ics-cookiecutter/cookiecutter-e3-recipe.git
```

As this is not easy to remember, you can add an alias in your `~/.bash_profile`:

```
alias e3-recipe='cookiecutter git+https://gitlab.esss.lu.se/ics-cookiecutter/cookiecutter-e3-recipe.git'
```

## Detailed instructions

### ESS module

To create the recipe for sis8300llrf:

```
$ e3-recipe
company [European Spallation Source ERIC]:
module_name [mymodule]: sis8300llrf
summary [EPICS sis8300llrf module]:
Select module_kind:
1 - ESS
2 - ESS-WP12
3 - Community
Choose from 1, 2, 3 [1]:
module_home [https://gitlab.esss.lu.se/epics-modules]:
module_version [1.0.0]: 3.14.3
```

This creates the following recipe:

```
sis8300llrf-recipe/
├── LICENSE
├── README.md
└── recipe
    ├── build.sh
    └── meta.yaml
```

There are comments in the `meta.yaml` file with instructions about what to update.
Remove the comments when done.

Note that the `Makefile.E3` file to build the module with E3 is expected to be at the root of the module repository.
No extra files should be needed in the recipe repository.

### ESS WP12 module

To create the recipe for julabof25hl:

```
$ e3-recipe
company [European Spallation Source ERIC]:
module_name [mymodule]: julabof25hl
summary [EPICS julabof25hl module]:
Select module_kind:
1 - ESS
2 - ESS-WP12
3 - Community
Choose from 1, 2, 3 [2]:
module_home [https://gitlab.esss.lu.se/epics-modules]:
module_version [1.0.0]: 0.1.17
```

This creates the following recipe:

```
julabof25hl-recipe/
├── LICENSE
├── README.md
├── recipe
│   ├── build.sh
│   └── meta.yaml
└── src
    └── Makefile
```

There are comments in the `meta.yaml` file with instructions about what to update.

For WP12 modules, the `Makefile` required to build the module with E3 is part of the recipe repository.
The template provided should be updated. Extra files can be added under the `src` directory if needed.
### Community module

To create the recipe for asyn:

```
$ e3-recipe
company [European Spallation Source ERIC]:
module_name [mymodule]: asyn
summary [EPICS asyn module]: EPICS module for driver and device support
Select module_kind:
1 - ESS
2 - ESS-WP12
3 - Community
Choose from 1, 2, 3 [3]:
module_home [https://gitlab.esss.lu.se/epics-modules]: https://github.com/epics-modules
module_version [1.0.0]: 4.33.0
```

This creates the following recipe:

```
asyn-recipe/
├── LICENSE
├── README.md
├── recipe
│   ├── build.sh
│   └── meta.yaml
└── src
    └── Makefile.E3
```

There are comments in the `meta.yaml` file with instructions about what to update.

For community modules, the `Makefile.E3` required to build the module with E3 is part of the recipe repository.
The template provided should be updated. Extra files can be added under the `src` directory if needed.

## License

BSD 3-clause license
