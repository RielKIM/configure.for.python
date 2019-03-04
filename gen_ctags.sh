#!/bin/sh
if ! [ -x "$(ctags)" ]; then
	echo "Error: ctags not installed." >&2
	exit 1
fi

ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags . $(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")
