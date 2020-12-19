#!/bin/bash

IFS=' ' read -r -a array <<< "$@"

if [ "${array[-2]}" = ">" ]
then
  exec krane "${array[@]::${#array[@]}-2}" > ${array[-1]}
else
  exec krane $@
fi

