#!/usr/bin/env bash

export CPU_LIMIT=1
export MEM_LIMIT=1gb
export BENCH_OVER_TIME=60s
export BENCH_MAX_VUS=60

# for gateway in "grafbase"; do
#     docker stop -t 1 $(docker ps -a -q)
#     echo "Running $gateway"
#     BENCH_VUST_LIST="100" ./run.sh "$gateway"
# done
#
# for gateway in "apollo-router"; do
#     docker stop -t 1 $(docker ps -a -q)
#     echo "Running $gateway"
#     BENCH_VUST_LIST="100" ./run.sh "$gateway"
# done
#
# for gateway in "cosmo"; do
#     docker stop -t 1 $(docker ps -a -q)
#     echo "Running $gateway"
#     BENCH_VUST_LIST="100" ./run.sh "$gateway"
# done

for gateway in "grafbase" "apollo-router" "cosmo" "mesh-supergraph-bun"; do
    docker stop -t 1 $(docker ps -a -q)
    echo "Running $gateway"
    BENCH_VUS_LIST="100" ./run.sh "$gateway"
done

# for gateway in "grafbase"; do
#     docker stop -t 1 $(docker ps -a -q)
#     echo "Running $gateway"
#     BENCH_VUS_LIST="200 300 400 500 600 700 800 900" ./run.sh "$gateway"
# done
#
# for gateway in "apollo-router"; do
#     docker stop -t 1 $(docker ps -a -q)
#     echo "Running $gateway"
#     BENCH_VUS_LIST="200 250 300 350 400" ./run.sh "$gateway"
# done
#
# for gateway in "cosmo"; do
#     docker stop -t 1 $(docker ps -a -q)
#     echo "Running $gateway"
#     BENCH_VUS_LIST="200 250 300 350 400 450" ./run.sh "$gateway"
# done
#
# for gateway in "mesh-supergraph-bun"; do
#     docker stop -t 1 $(docker ps -a -q)
#     echo "Running $gateway"
#     BENCH_VUS_LIST="125 150 175 200" ./run.sh "$gateway"
# done
