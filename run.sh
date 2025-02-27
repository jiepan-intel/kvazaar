#can't use d8
NODE=/home/panjie/tools/node/out/Release/node

ORG_FLAG=" --turboshaft_wasm  --turboshaft_wasm_instruction_selection_experimental --turboshaft_wasm_instruction_selection_staged --no-liftoff"
OPT_FLAG=" --turboshaft_wasm  --turboshaft_wasm_instruction_selection_experimental --turboshaft_wasm_instruction_selection_staged --no-liftoff --experimental-wasm-revectorize"
#OPT_FLAG=" --turboshaft_wasm  --turboshaft_wasm_instruction_selection_experimental --turboshaft_wasm_instruction_selection_staged --no-liftoff --experimental-wasm-revectorize  --trace-wasm-revectorize"


#cd src
(cd src; ${NODE} ${ORG_FLAG} ./kvazaar.js   -i ../asset_dir/waterfall_cif.yuv --input-res 352x288  -o watfall.hevc --threads 4)
(cd src; ${NODE} ${OPT_FLAG} ./kvazaar.js   -i ../asset_dir/waterfall_cif.yuv --input-res 352x288  -o watfall.hevc --threads 4)
#(cd src; node ./kvazaar.js   -i ../asset_dir/waterfall_cif.yuv --input-res 352x288  -o watfall.hevc )
#exit


#(cd  build/tests ; node  /home/panjie/apx/work/kvazaar/build/tests/kvazaar_tests.js -v )

#(cd  build/tests; /home/panjie/apx/work/v8-latest/v8/out.gn/x64.release/d8  /home/panjie/apx/work/kvazaar/build/tests/kvazaar_tests.js -- -v )

#(cd  build/tests; /home/panjie/apx/work/v8-latest/v8/out.gn/x64.release/d8    /home/panjie/apx/work/kvazaar/build/tests/kvazaar_tests.js -- -v >revec-org1.log 2>&1 )
#(cd  build/tests; /home/panjie/apx/work/v8-latest/v8/out.gn/x64.release/d8  --experimental-wasm-revectorize /home/panjie/apx/work/kvazaar/build/tests/kvazaar_tests.js -- -v > revec-opt1.log 2>&1 )

#trace
#(cd  build/tests; /home/panjie/apx/work/v8-latest/v8/out.gn/x64.release/d8  --experimental-wasm-revectorize --trace-wasm-revectorize /home/panjie/apx/work/kvazaar/build/tests/kvazaar_tests.js -- -v )

