## command file to test the module
require {{ cookiecutter.module_name | lower }}

## add extra commands below
## like loading a iocsh snippet
## epicsEnvSet("IOCNAME", "my-ioc")
## loadIocsh("xxxx.iocsh", "IOCNAME=$(IOCNAME)")


iocInit()
