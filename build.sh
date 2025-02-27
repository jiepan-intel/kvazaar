rm -rf ./build/CMakeFiles/
rm -rf ./build/CMakeCache.txt

emcmake cmake -S . -B build -DEMSCRIPTEN=ON -DCMAKE_BUILD_TYPE=Release
cmake --build build -v -j 15  --clean-first
