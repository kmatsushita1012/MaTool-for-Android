import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:matool2/core/future_utils.dart';
import 'package:matool2/domain/interfaces/repository/aws_cognito_repository.dart';

class AWSCognitoLiveRepository extends AWSCognitoRepository {
  final _userPool = CognitoUserPool('YOUR_USER_POOL_ID', 'YOUR_CLIENT_ID');
  CognitoUser? _currentUser;

  // 初期化して、現在のユーザー情報を取得するメソッド
  @override
  Future<Result<bool, AWSCognitoError>> initialize() async {
    try {
      final user = await _userPool.getCurrentUser();

      if (user == null) {
        return Result.success(false);
      }

      final session = await user.getSession();

      if (session != null && session.isValid()) {
        _currentUser = user;
        return Result.success(true);
      } else {
        return Result.success(false);
      }
    } catch (e) {
      return Result.failure(AWSCognitoError.network(e.toString()));
    }
  }

  @override
  Future<Result<bool, AWSCognitoError>> signIn({
    required String username,
    required String password,
  }) async {
    final cognitoUser = CognitoUser(username, _userPool);
    final authDetails = AuthenticationDetails(
      username: username,
      password: password,
    );

    try {
      final _ = await cognitoUser.authenticateUser(authDetails);
      _currentUser = cognitoUser;
      return Result.success(true);
    } catch (e) {
      return Result.failure(AWSCognitoError.network(e.toString()));
    }
  }

  @override
  Future<Result<String, AWSCognitoError>> getUserId() async {
    try {
      if (_currentUser == null) {
        return Result.failure(AWSCognitoError.network('User not signed in'));
      }

      final attributes = await _currentUser!.getUserAttributes();
      if (attributes == null) {
        return Result.failure(AWSCognitoError.network(''));
      }
      final subAttr = attributes.firstWhere(
        (attr) => attr.name == 'sub',
        orElse: () => throw Exception('sub not found'),
      );
      final value = subAttr.value;
      if (value != null) {
        return Result.success(value);
      }
      return Result.failure(AWSCognitoError.network('userId is null'));
    } catch (e) {
      return Result.failure(AWSCognitoError.network(e.toString()));
    }
  }

  @override
  Future<Result<void, AWSCognitoError>> signOut() async {
    try {
      await _currentUser?.signOut();
      return Result.success(null);
    } catch (e) {
      return Result.failure(AWSCognitoError.network(e.toString()));
    }
  }

  // トークン取得メソッド
  @override
  Future<Result<String?, AWSCognitoError>> getToken() async {
    try {
      final session = await _currentUser?.getSession();
      if (session?.idToken != null) {
        return Result.success(session?.idToken.jwtToken);
      } else {
        return Result.failure(AWSCognitoError.network('No valid token found'));
      }
    } catch (e) {
      return Result.failure(AWSCognitoError.network(e.toString()));
    }
  }
}
