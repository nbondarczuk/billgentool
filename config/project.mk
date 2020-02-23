.PHONY: all bin lib src sql

PLATFORM := $(shell uname -sm | tr ' ' '_')
DIR := $(shell pwd)
PROJECT_DIR := $(DIR)/../..
ORACLE_CLIENT := $(PROJECT_DIR)/oracle/instantclient_12_2/$(PLATFORM)
CXX := g++
