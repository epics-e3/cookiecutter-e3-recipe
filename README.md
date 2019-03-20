# e3 conda recipe cookiecutter template

[Cookiecutter](https://github.com/audreyr/cookiecutter) template for e3 conda recipes.

## Quickstart

Install the latest Cookiecutter if you haven't installed it yet:

```
$ pip install cookiecutter
```

Generate an Ansible role project:

```
$ cookiecutter git+https://gitlab.esss.lu.se/ics-infrastructure/cookiecutter-e3-recipe.git
```

As this is not easy to remember, you can add an alias in your `~/.bash_profile`:

```
alias e3-recipe='cookiecutter git+https://gitlab.esss.lu.se/ics-infrastructure/cookiecutter-e3-recipe.git'
```

## Detailed instructions

To create the recipe `asyn-recipe`:

```
$ e3-recipe
company [European Spallation Source ERIC]:
module_name [mymodule]: asyn
summary [EPICS asyn module]: EPICS module for driver and device support
module_home [https://github.com/epics-modules/asyn]:
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
    └── Makefile
```

There are comments in the `meta.yml` file with instructions about what to update.

You should replace `src/Makefile` with the Makefile required to build the module.

## License

BSD 3-clause license
