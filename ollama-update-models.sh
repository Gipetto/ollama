#!/bin/bash
ollama list | tail -n +2 | awk '$1 !~ /^registry.local/ {print $1}' | while read -r model; do
    echo "pulling $model"
    ollama pull "$model"
done