#!/usr/bin/env bash
#>*******************************************************
# THIS FILE WAS AUTO-GENERATED BY ATLASSIAN BITBUCKET.
# IT CONTAINS NO USER-SERVICEABLE PARTS.
#>*******************************************************

hook_input=`cat`
hook_dir="${1}"
shift
for file in ${hook_dir}/*
do
    if [[ -f $file ]]; then
        echo "${hook_input}" | $file "$@"
        exit_code=$?
        if [[ "${exit_code}" -ne "0" ]]; then
           exit ${exit_code}
        fi
    fi
done
