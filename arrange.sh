#!/bin/bash

cd SWE_2021_41_week_5-main/SWE_2021_41_week_5-main/files

for file in *; do
  first_letter=${file:0:1}
  first_letter=${first_letter,,}

  if [ ! -d "../$first_letter" ]; then
    mkdir "../$first_letter"
  fi

  mv "$file" "../$first_letter/"
done