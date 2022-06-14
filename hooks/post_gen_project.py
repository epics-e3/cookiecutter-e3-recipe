#!/usr/bin/env python
import shutil
import requests


if __name__ == "__main__":
    if "{{ cookiecutter.module_kind }}" == "ESS":
        shutil.rmtree("src")
    elif "{{ cookiecutter.module_kind }}" == "ESS-WP12":
        fname = 'src/Makefile.E3'
        repos = "{{cookiecutter.module_home}}/{{cookiecutter.module_name}}"
        url = repos + "/-/raw/"\
            "{{cookiecutter.module_version}}/"\
            "{{cookiecutter.module_name}}.Makefile"
        r = requests.get(url, allow_redirects=False)
        if r.status_code == 404:
            # if return 404 (page not found) try to get url with Makefile.E3
            url = repos + "/-/raw/"\
              "{{cookiecutter.module_version}}/"\
              "Makefile.E3"
            r = requests.get(url, allow_redirects=False)

        if r.status_code == 200:
            with open(fname, 'wb') as f:
                f.write(r.content)
