# @TEST-EXEC: zeek -NN FileAnalyzers::JPEG |sed -e 's/version.*)/version)/g' >output
# @TEST-EXEC: btest-diff output
