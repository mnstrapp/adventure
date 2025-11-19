import 'package:grpc/grpc.dart';
import '../environment/endpoints.dart';

ClientChannel createGrpcChannel() {
  return ClientChannel(
    grpcHost,
    port: grpcPort,
    options: ChannelOptions(
      credentials: isGrpcSecure
          ? ChannelCredentials.secure()
          : ChannelCredentials.insecure(),
      codecRegistry: CodecRegistry(
        codecs: const [
          GzipCodec(),
          IdentityCodec(),
        ],
      ),
    ),
  );
}
