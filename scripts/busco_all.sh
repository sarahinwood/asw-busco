#!/usr/bin/env bash

set -eu

export PATH="${HOME}/local/bin:${HOME}/local/bin/augustus/bin:${HOME}/local/bin/augustus/scripts:${PATH}"
export AUGUSTUS_CONFIG_PATH="${HOME}/local/bin/augustus/config"

find data/assemblies/ -name "*.fa" -print0 | while read -d $'\0' file
do
	echo "${file}"
	bn=$(basename "${file}" .fa)
	python bin/busco/BUSCO.py \
		--in "${file}" \
		--out "${bn}" \
		--lineage data/endopterygota_odb9 \
		--mode genome \
		--cpu 5 --species tribolium2012 &
	
done

wait