#!/usr/bin/env bash

export CPU_LIMIT=2
export MEM_LIMIT=2gb
export BENCH_OVER_TIME=60s
export BENCH_MAX_VUS=40
export SUBGRAPH_DELAY=10
export BENCH_RESULTS_OUTPUT_DIR="tmp"

# export INVENTORY_SUBGRAPH_DELAY_MS="$SUBGRAPH_DELAY"
# export ACCOUNTS_SUBGRAPH_DELAY_MS="$SUBGRAPH_DELAY"
# export PRODUCTS_SUBGRAPH_DELAY_MS="$SUBGRAPH_DELAY"
# export REVIEWS_SUBGRAPH_DELAY_MS="$SUBGRAPH_DELAY"

# BENCH_MAX_VUS=180 BENCH_VUS_LIST="1500" ./run.sh "grafbase-latest"
# BENCH_MAX_VUS=80 BENCH_VUS_LIST="600" ./run.sh "apollo-router"
# BENCH_MAX_VUS=20 BENCH_VUS_LIST="100 200 250 300 310" ./run.sh "apollo-router2"
# BENCH_MAX_VUS=20 BENCH_VUS_LIST="100 200 300 350 370" ./run.sh "apollo-router2-ts"
# BENCH_MAX_VUS=200 BENCH_VUS_LIST="1500" ./run.sh "grafbase"
# BENCH_MAX_VUS=5 BENCH_VUS_LIST="250 255" ./run.sh "mesh-supergraph-bun"
# BENCH_MAX_VUS=100 BENCH_VUS_LIST="1505" ./run.sh "grafbase-latest"
# BENCH_VUS_LIST="350" ./run.sh "apollo-router-no-ts"
# BENCH_VUS_LIST="500" ./run.sh "apollo-router"
# BENCH_MAX_VUS=800 BENCH_VUS_LIST="3200" ./run.sh "cosmo2"
BENCH_MAX_VUS=85 BENCH_VUS_LIST="1600" ./run.sh "grafbase"


