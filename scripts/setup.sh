#!/usr/bin/env bash

set -ex
pdm install
pdm run huggingface-cli download bartowski/Phi-3.5-mini-instruct-GGUF --include "Phi-3.5-mini-instruct-Q4_K_M.gguf" --local-dir ./.model/phi-3.5-gguf
pdm run huggingface-cli download microsoft/Phi-3.5-MoE-instruct --local-dir ./.model/phi-3.5