#!/bin/bash

if ! virtualenv . --no-site-packages --python=python3; then
	exit 1;
fi;

if ! source bin/activate; then
	exit 1;
fi;

if ! pip install --upgrade pip; then
	exit 1;
fi;

if ! pip install -r requirements.txt; then 
	exit 1;
fi;

