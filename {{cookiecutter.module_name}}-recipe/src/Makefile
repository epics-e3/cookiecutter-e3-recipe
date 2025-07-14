## The following lines are mandatory, please don't change them.
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile


############################################################################
#
# Add any required modules here that come from startup scripts, etc.
#
############################################################################

# REQUIRED += stream


############################################################################
#
# If you want to exclude any architectures:
#
############################################################################

# EXCLUDE_ARCHS += linux-ppc64e6500


############################################################################
#
# Relevant directories to point to files
#
############################################################################

APP:={{ cookiecutter.module_name }}App
#APPDB:=$(APP)/Db
APPSRC:=$(APP)/src
#APPCMDS:=$(APP)/cmds


############################################################################
#
# Add any files that should be copied to $(module)/Db
#
############################################################################

# TEMPLATES += $(wildcard $(APPDB)/*.db)
# TEMPLATES += $(wildcard $(APPDB)/*.proto)
# TEMPLATES += $(wildcard $(APPDB)/*.template)

# USR_INCLUDES += -I$(where_am_I)$(APPSRC)


############################################################################
#
# Add any files that need to be compiled (e.g. .c, .cpp, .st, .stt)
#
############################################################################

SOURCES   += $(APPSRC)/{{ cookiecutter.module_name }}Main.cpp


############################################################################
#
# Add any header files that should be included in the install (e.g. 
# StreamDevice or asyn header files that are used by other modules)
#
############################################################################

#HEADERS   += 


############################################################################
#
# Add any startup scripts that should be installed in the base directory
#
############################################################################

SCRIPTS += $(wildcard iocsh/*.iocsh)

# USR_DBFLAGS += -I . -I ..
# USR_DBFLAGS += -I $(EPICS_BASE)/db
# USR_DBFLAGS += -I $(APPDB)
# 
# SUBS=$(wildcard $(APPDB)/*.substitutions)
# TMPS=$(wildcard $(APPDB)/*.template)
