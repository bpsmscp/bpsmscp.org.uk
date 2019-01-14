#!/usr/bin/env bash


if [ "$1" == "--not-safe" ]; then

	# This command is DANGEROUS. It will delete, with no hope of salvation,
	# everything in this directory and everything below it, that is not
	# being currently tracked by Git.

	echo "Deleting everything that is not tracked by Git"
	git clean -fdX

fi

echo "Building blogdown site"
Rscript -e 'blogdown::build_site()'
