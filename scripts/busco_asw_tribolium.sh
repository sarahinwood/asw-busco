#!/usr/bin/env bash
export PATH="${HOME}/local/bin:${HOME}/local/bin/augustus/bin:${HOME}/local/bin/augustus/scripts:${PATH}"
export AUGUSTUS_CONFIG_PATH="${HOME}/local/bin/augustus/config"

python bin/busco/BUSCO.py \
--in data/assemblies/nopcr.binned_SOAPdenovo2_51.fa \
--out nopcr.binned_SOAP_51_tribolium \
--lineage data/endopterygota_odb9 \
--mode genome \
--cpu 10 --species tribolium2012