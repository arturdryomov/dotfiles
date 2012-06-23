alias cmake="cmake ."


function cmake-debug() {
  build_directory="build_debug"

  mkdir ${build_directory}
  cd ${build_directory}

  cmake -DCMAKE_BUILD_TYPE=Debug ..
}

function cmake-release() {
  build_directory="build_release"

  mkdir ${build_directory}
  cd ${build_directory}

  cmake -DCMAKE_BUILD_TYPE=Release ..
}

function cmake-clean() {
  find . -name "build_*" | xargs rm -rf

  find . -name "CMakeFiles" | xargs rm -rf
  find . -name "Testing" | xargs rm -rf

  find . -name "CMakeCache.txt" | xargs rm -f
  find . -name "CTestTestfile.cmake" | xargs rm -f
  find . -name "Makefile" | xargs rm -f
  find . -name "cmake_install.cmake" | xargs rm -f
}
