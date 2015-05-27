#!/bin/bash

if [ "$VIRTUAL_ENV" != "" ]; then
	echo "There is a virtualenv currently activated. Attempting to deactivate it."
	if ! deactivate; then
		echo "Cannot deactivate the virtualenv. Try to manually call deactivate and try again." 1>&2
		exit 1;
	fi;
fi;

[ -d "bin" ] && rm -r bin
[ -d "include" ] && rm -r include
[ -d "lib" ] && rm -r lib
[ "lib64" ] && rm lib64
[ "pip-selfcheck.json" ] && rm pip-selfcheck.json





