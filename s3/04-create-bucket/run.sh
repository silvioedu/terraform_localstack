#!/bin/bash

echo "######################################################"
echo "Syntax must be 'script -a VALUE -e VALUE'"
echo "######################################################"
echo "  -a (action)     : plan, apply, destroy"
echo "  -e (environment): env/value.tfvars"
echo "######################################################"

while getopts ":a:e:" option; do
  case "${option}" in
    a)
      action=${OPTARG}
      if ! [ $action == "plan" -o $action == "apply" -o $action == "destroy" ]; then
        echo "ERROR: incorrect action ${action}"
        exit
      fi
      ;;
    e)
      environment=${PWD}"/env/"${OPTARG}".tfvars"
      if [ ! -f $environment ]; then
        echo "ERROR: environment file ${environment} does NOT exist."
        exit
      fi
      ;;
    *)
      echo "ERROR: Input error"
      exit
      ;;
  esac
done
echo ""
echo "action      -> ${action}"
echo "environment -> ${environment}"

if [ -z $action -o -z $environment ]; then
  echo "ERROR: invalid parameters"
  exit
fi

echo ""
command="terraform ${action} -var-file=${environment}"
echo $command

eval $command