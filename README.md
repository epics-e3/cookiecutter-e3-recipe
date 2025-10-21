# e3 conda recipe cookiecutter template

[Cookiecutter](https://github.com/cookiecutter/cookiecutter) template for e3 conda recipes.

## Quickstart

```
$ pip install --user cookiecutter
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
├── .gitlab-ci.yml
├── LICENSE
├── recipe
│   ├── build.sh
│   └── meta.yaml
└── src
    └── Makefile
```

The minimal `Makefile` template includes only the required lines to use `require`'s build interface.
Add variables (`SOURCES`, `HEADERS`, `DBDS`, `TEMPLATES`, `SCRIPTS`, etc.) and extra files under the `src` directory as needed.

See https://e3.pages.ess.eu for further instructions.

## License

BSD 3-clause license
