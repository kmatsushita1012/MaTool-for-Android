import 'package:matool2/core/future_utils.dart';

abstract class AWSCognitoRepository {
  Future<Result<bool, AWSCognitoError>> initialize();
  Future<Result<bool, AWSCognitoError>> signIn({
    required String username,
    required String password,
  });
  Future<Result<String, AWSCognitoError>> getUserId();
  Future<Result<String?, AWSCognitoError>> getToken();
  Future<Result<void, AWSCognitoError>> signOut();
}

class AWSCognitoError {
  AWSCognitoError.network(this.message);
  final String message;

  @override
  String toString() => 'AWSCognitoError: $message';
}
