rm -rf ./build-native/CMakeFiles/
rm -rf ./build-native/CMakeCache.txt

cmake -S . -B build-native  -DCMAKE_BUILD_TYPE=Release
cmake --build build-native -v -j 15  --clean-first
cp ./src/kvazaar ./build-native
