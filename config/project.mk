.PHONY: all bin lib src sql

PLATFORM := $(shell uname -sm | tr ' ' '_')
PROJECT_HOME := ../..
ORACLE_CLIENT := $(PROJECT_HOME)/oracle/instantclient_12_2/$(PLATFORM)
