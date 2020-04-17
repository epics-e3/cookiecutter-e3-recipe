#!/usr/bin/env python
import shutil


if __name__ == "__main__":
    if "{{ cookiecutter.module_kind }}" == "ESS":
        shutil.rmtree("src")
