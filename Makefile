PROTO_SRC := users/users.proto
PROTO_PATH := .
GO_OUT := gen/go

.PHONY: deps gen clean

deps:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

gen:
	mkdir -p $(GO_OUT)
	protoc \
		-I $(PROTO_PATH) \
		--go_out=$(GO_OUT) --go_opt=paths=source_relative \
		--go-grpc_out=$(GO_OUT) --go-grpc_opt=paths=source_relative \
		$(PROTO_SRC)

clean:
	rm -rf $(GO_OUT)
