BUILD_DIR="out"
LLVM_DIR="$PWD/llvm-project"
INSTALL_DIR="install"

mkdir "$BUILD_DIR"
mkdir "$INSTALL_DIR"

cmake -G "Ninja" -B "$BUILD_DIR" -S "$LLVM_DIR/llvm" \
    -DCMAKE_C_COMPILER="clang" \
    -DCMAKE_CXX_COMPILER="clang++" \
    -DLLVM_USE_LINKER="lld" \
    -DCMAKE_INSTALL_PREFIX="$INSTALL_DIR" \
    -DBUILD_SHARED_LIBS=OFF \
    -DLLVM_CCACHE_BUILD=ON \
    -DLLVM_PARALLEL_COMPILE_JOBS=6 \
    -DLLVM_PARALLEL_LINK_JOBS=2 \
    -DLLVM_PARALLEL_TABLEGEN_JOBS=6 \
    -DLLVM_ENABLE_BINDINGS=ON \
    -DLLVM_INSTALL_UTILS=ON \
    -DLLVM_OPTIMIZED_TABLEGEN=ON \
    -DLLVM_INCLUDE_BENCHMARKS=OFF \
    -DLLVM_INCLUDE_EXAMPLES=OFF \
    -DLLVM_INCLUDE_TESTS=OFF \
    -DLLVM_ENABLE_LTO=Full \
    -DLLVM_ENABLE_RTTI=ON \
    -DCMAKE_BUILD_TYPE=Release \
    -DLLVM_TARGET_ARCH="X86" \
    -DLLVM_TARGETS_TO_BUILD="AArch64;ARM;WebAssembly;X86" \
    -DLLVM_ENABLE_PROJECTS="bolt;clang;clang-tools-extra;lld;lldb;mlir;polly" \
    -DLLVM_ENABLE_RUNTIMES="libc;libunwind;libcxxabi;pstl;libcxx;compiler-rt;openmp;offload"

cmake --build "$BUILD_DIR"
ninja -C "$BUILD_DIR" install
