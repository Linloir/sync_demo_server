# Compile all the proto files in the /proto directory
echo "[INFO] Compiling protos..."
protoc -Iprotos $(find protos -iname "*.proto") --dart_out=grpc:lib/src/generated/grpc
echo "[INFO] Done."
