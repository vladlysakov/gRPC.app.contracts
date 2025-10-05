# gRPC.app.contracts

This repository contains protobuf contracts for the Users service.

Structure:
- users/schemas/request/users.proto — requests (IdRequest, ListRequest, UpdateRequest)
- users/schemas/response/users.proto — entities and responses (User, RetrieveResponse, ListResponse)
- users/users.proto — Users service definition
- gen/go — generated Go code output directory (use `make gen`)

Prerequisites:
- protoc (3.21+)
- Go 1.20+

Generate code:

- Install protoc plugins (one-time):
  make deps

- Generate Go code:
  make gen

The go_package of the protos is set to gRPC.app.contracts/gen/go/users;usersv1 so the generated Go package name is usersv1 and the import path is gRPC.app.contracts/gen/go/users.
