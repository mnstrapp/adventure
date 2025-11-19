# Adventure

Take your MNSTRs on an adventure!

## Development

### Requirements

- [Flutter 3.38.1 or newer](https://flutter.dev)
- [Protoc](https://github.com/protocolbuffers/protobuf#protobuf-compiler-installation)
- [Protoc Plugin](https://github.com/google/protobuf.dart/tree/master/protoc_plugin)

### Protobufs

In order to make the GRPC code work, the Protobufs must be compiled.

#### Git submodule

The protobufs come from a shared adventure submodule: [adventure_proto](https://github.com/mnstrapp/adventure_proto).

To ensure it is installed, run the following in your terminal:

```
git submodule init
git submodule update
```

This will create the **adventure_proto** directory in your root directory, so that we have access to the protobufs for compiling.

In order to get any updates to your protobufs, run:

```
git submodule update
```

#### protoc_plugin Installation

To install the protoc_plugin, paste the following in your terminal:

```
dart pub global activate protoc_plugin
```

The use of this requires that you have the dart global cache in your path. You can add it by editing your **~/.bashrc** or **~/.zshrc** and adding this line:

```
export PATH=$HOME/.pub-cache/bin:$PATH
```

Opening a new terminal or sourcing your rc will load it into the path.

#### Compiling the Protobufs

To generate the client code you need to compile the protobufs. That can be done with this in your terminal:

```
protoc --dart_out=grpc:lib/proto -Iadventure_proto adventure_proto/*.proto
```