#!/bin/bash

# =============================================================================
# Optimized Build Script for Fortran (GFortran 12 + Ivy Bridge)
# =============================================================================

# 1. Cleanup of previous artifacts
rm -f binarytrees *.gcda *.gcno *.o *.mod 01-*.txt

# 2. APR Library Configuration (Required for your current code)
# Checks if pkg-config can find APR, otherwise uses default Ubuntu path
# if pkg-config --exists apr-1; then
#     APR_FLAGS=$(pkg-config --cflags --libs apr-1)
# else
    # Common fallback on Debian/Ubuntu distros
    APR_FLAGS="-I/usr/include/apr-1.0 -lapr-1"
# fi

# 3. Optimization Flags (Extreme HPC)
# -march=native: Automatically detects your i5-3210M
# -flto: Allows aggressive inlining between modules
# -fno-protect-parens: Allows reordering (a+b)+c -> a+(b+c) for performance
OPC="-std=f2018 -O3 -march=native -flto -fopenmp \
    -funroll-loops \
    -fno-protect-parens -fno-signaling-nans \
    --param max-inline-insns-single=1200 --param max-inline-insns-auto=1000"

echo "=== PHASE 1: Instrumentation (Generate) ==="
# Compiles the binary that will "learn" the code behavior
# Note: APR_FLAGS must come at the end for the linker to find the libs
gfortran $OPC -fprofile-generate \
    binarytrees.f90 -o binarytrees $APR_FLAGS

echo "=== PHASE 2: Training (Profile) ==="
# Runs with N=18 (fast) to generate statistics (.gcda).
# IMPORTANT: Single Thread here to avoid profile data corruption.
OMP_NUM_THREADS=1 ./binarytrees 18 > /dev/null

# Removes the training binary
rm -f binarytrees

echo "=== PHASE 3: Final Compilation (PGO Use) ==="
# Uses the generated data to create the ultra-optimized final binary
# -fprofile-correction: Corrects minor multithread counting errors
# Detailed logs are saved in 01-compilation_info.txt
gfortran $OPC -fprofile-use -fprofile-correction \
    -fopt-info-vec-missed -fopt-info-inline-missed \
    binarytrees.f90 -o binarytrees $APR_FLAGS > 01-compilation_info.txt 2>&1



echo "=== PHASE 4: Official Execution (10 repetitions) ==="
echo "Please wait... executing 10 times to calculate mean and standard deviation."

# -r 10: Repeats 10 times
# -d: Shows detailed cache statistics (L1, LLC)
# perf stat -r 10 -d ./binarytrees 21
#
# echo ""
# echo "---------------------------------------------------------------------"
# echo "VALIDITY CHECK (Benchmarks Game Rules):"
# echo "Look for the line 'seconds time elapsed' above."
# echo "Next to the time, you will see a percentage (+- X.XX%)."
# echo ""
# echo ">> If the variation (std dev) is low (e.g., < 1%),"
# echo ">> the result is considered stable, reliable, and ACCEPTED."
# echo "---------------------------------------------------------------------"


# echo "=== PHASE 4: Execution and Telemetry (perf stat) ==="
# Runs the official benchmark (N=21)
# 'perf stat' measures hardware counters without heavy disk writing
perf stat -e cycles,instructions,cache-misses,branches,branch-misses,context-switches,L1-dcache-load-misses,LLC-load-misses \
    ./binarytrees 21 &> 01-binarytrees_perf.txt

echo "=== PHASE 5: Assembly Analysis ==="
# Generates the final assembly to check if APR calls have disappeared (inlining)
objdump -d -S --no-show-raw-insn binarytrees > 01-binarytrees-fortran.asm

# Displays final result
echo ""
echo "------------------------------------------------"
echo "FINAL RESULT (Fortran):"
grep "seconds time elapsed" 01-binarytrees_perf.txt
echo "------------------------------------------------"
echo "Generated Reports:"
echo "  1. 01-binarytrees_perf.txt   -> CPU and Time Metrics"
echo "  2. 01-binarytrees-fortran.asm -> Assembly Code"
echo "  3. 01-compilation_info.txt   -> Compiler Log"
echo "------------------------------------------------"
