#!/bin/bash

INPUT_FILE=$1
OUTPUT_FILE_BASE=${INPUT_FILE}_output

pdfjam --nup 2x3 \
	   --frame true \
	   --noautoscale false \
	   --delta "0.2cm 0.3cm" \
       --scale 0.95 \
	   ${INPUT_FILE} \
       --outfile ${OUTPUT_FILE_BASE}_1.pdf

## Full page 2x2 landscape
pdfjam --nup 2x2 \
	   --frame false \
	   --landscape \
	   --delta "0.2cm 0.3cm" \
       --scale 0.95 \
	   ${INPUT_FILE} \
       --outfile ${OUTPUT_FILE_BASE}_2.pdf

## Full page 1x3 portrait
pdfjam --nup 1x3 \
	   --frame false \
	   --delta "0.2cm 0.3cm" \
       --scale 0.95 \
	   ${INPUT_FILE} \
       --outfile ${OUTPUT_FILE_BASE}_3.pdf

## Full page 4x4 landscape
pdfjam --nup 4x4 \
	   --frame false \
	   --landscape \
	   --delta "0.2cm 0.3cm" \
       --scale 0.95 \
	   ${INPUT_FILE} \
       --outfile ${OUTPUT_FILE_BASE}_4.pdf

