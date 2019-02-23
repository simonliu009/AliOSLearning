NAME := project1
$(NAME)_SOURCES := helloworld.c
$(NAME)_COMPONENTS += info_a
GLOBAL_DEFINES += AOS_NO_WIFI

$(NAME)_COMPONENTS += yloop cli

ifeq ($(BENCHMARKS),1)
$(NAME)_COMPONENTS  += benchmarks
GLOBAL_DEFINES      += CONFIG_CMD_BENCHMARKS
endif

GLOBAL_INCLUDES += ./