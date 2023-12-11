#!/bin/bash

while true; do
    echo -n "simple_shell> "

    read command

    if [ -z "$command" ]; then
        echo "Fim de arquivo. Saindo."
        break
    fi

    if command -v "$command" &> /dev/null; then
        $command
    else
        echo "Comando não encontrado: $command"
    fi
done
