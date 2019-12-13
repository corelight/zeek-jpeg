# @TEST-EXEC: zeek -NN Zeek::JPEG |sed -e 's/version.*)/version)/g' >output
# @TEST-EXEC: btest-diff output
