# e3 conda recipe cookiecutter template

[Cookiecutter](https://github.com/cookiecutter/cookiecutter) template for e3 conda recipes.

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

To create the recipe for julabof25hl:

```
$ e3-recipe
company [European Spallation Source ERIC]:
module_name [mymodule]: julabof25hl
summary [EPICS julabof25hl module]:
module_home [https://gitlab.esss.lu.se/epics-modules]:
module_version [1.0.0]: 0.1.17
```

This creates the following recipe:

```
julabof25hl-recipe/
├── LICENSE
├── README.md
├── recipe
│   ├── build.sh
│   └── meta.yaml
└── src
    └── Makefile
```

There are comments in the `meta.yaml` file with instructions about what to update.

The `Makefile` required to build the module is part of the recipe repository.
The template provided should be updated. Extra files can be added under the `src` directory if needed.

## License

BSD 3-clause license
