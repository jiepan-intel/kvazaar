#can't use d8

#cd src
#(cd src; node ./kvazaar.js   -i ../asset_dir/waterfall_cif.yuv --input-res 352x288  -o watfall.hevc --threads 1)
#(cd src; node ./kvazaar.js   -i ../asset_dir/waterfall_cif.yuv --input-res 352x288  -o watfall.hevc )
#exit


#(cd  build/tests ; node  /home/panjie/apx/work/kvazaar/build/tests/kvazaar_tests.js -v )

#(cd  build/tests; /home/panjie/apx/work/v8-latest/v8/out.gn/x64.release/d8  /home/panjie/apx/work/kvazaar/build/tests/kvazaar_tests.js -- -v )

(cd  build/tests; /home/panjie/apx/work/v8-latest/v8/out.gn/x64.release/d8    /home/panjie/apx/work/kvazaar/build/tests/kvazaar_tests.js -- -v >revec-org1.log 2>&1 )
(cd  build/tests; /home/panjie/apx/work/v8-latest/v8/out.gn/x64.release/d8  --experimental-wasm-revectorize /home/panjie/apx/work/kvazaar/build/tests/kvazaar_tests.js -- -v > revec-opt1.log 2>&1 )

#trace
#(cd  build/tests; /home/panjie/apx/work/v8-latest/v8/out.gn/x64.release/d8  --experimental-wasm-revectorize --trace-wasm-revectorize /home/panjie/apx/work/kvazaar/build/tests/kvazaar_tests.js -- -v )

