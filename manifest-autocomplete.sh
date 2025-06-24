#!/bin/bash

_manifest_completion() {
    local cur
    cur=${COMP_WORDS[COMP_CWORD]}

    if [ "${COMP_WORDS[1]}" = "edit" ] && [ $COMP_CWORD -eq 2 ]; then
        if [ -r /tmp/manifest_files_cache ]; then
            COMPREPLY=( $(compgen -W "$(cat /tmp/manifest_files_cache)" -- "$cur") )
        else
            COMPREPLY=()
        fi
    else
        COMPREPLY=()
    fi
}

complete -F _manifest_completion -o default manifest
