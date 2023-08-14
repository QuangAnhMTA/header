gen:
	protoc --proto_path=. --go_out=account --go_opt=paths=source_relative \
		--go-grpc_out=account --go-grpc_opt=require_unimplemented_servers=false --go-grpc_opt=paths=source_relative account.proto
	protoc-go-tags --dir=account
	