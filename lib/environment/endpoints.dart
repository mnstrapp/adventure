const grpcUrl = String.fromEnvironment(
  'MNSTR_ADVENTURE_GRPC_URL',
  defaultValue: 'http://localhost:8000',
);

Uri get grpcUri => Uri.parse(grpcUrl);

bool get isGrpcSecure => grpcUri.scheme == 'https';
String get grpcHost => grpcUri.host;
int get grpcPort => grpcUri.port;
