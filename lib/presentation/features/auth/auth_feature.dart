import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:composable_architecture/composable_architecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matool2/core/aws_cognito.dart';
import 'package:matool2/core/future_utils.dart';
import 'package:riverpod/riverpod.dart';

part 'auth_feature.freezed.dart';
part 'auth_feature.g.dart';

@freezed
@KeyPathable()
class AuthState with _$AuthState {
  AuthState({this.session, this.isLoading = false, this.error});

  @override
  final CognitoUserSession? session;
  @override
  final bool isLoading;
  @override
  final String? error;
}

@CaseKeyPathable()
sealed class AuthAction<
  OnApper,
  LoginButtonTapped,
  LogoutButtonTapped,
  SessionResponce extends Result<bool>,
  LoginResponce extends Result<CognitoUserSession?>,
  LogoutResponce extends Result<void>
> {}

final class AuthFeature extends Feature<AuthState, AuthAction> {
  AuthFeature({required CognitoService cognitoService})
    : _cognitoService = cognitoService;

  final CognitoService _cognitoService;
  @override
  Reducer<AuthState, AuthAction> build() => Reduce((state, action) {
    switch (action) {
      case AuthActionOnApper():
        return Effect.future(() async {
          try {
            final isValid = await _cognitoService.isSessionValid();
            if (!isValid) {
              state.mutate((s) => s);
            }
          } catch (e) {
            state.mutate((s) => s);
          }
          return AuthActionSessionResponce();
        });
      case AuthActionLoginButtonTapped():
        state.mutate((s) => s.copyWith(isLoading: true));
        return Effect.future(() async {
          try {
            final session = await _cognitoService.login('', '');
            return AuthActionLoginResponce(Success(session));
          } catch (e) {
            return AuthActionLoginResponce(Failure(e));
          }
        });

      case AuthActionLogoutButtonTapped():
        state.mutate((s) => s.copyWith(isLoading: true));
        return Effect.future(() async {
          try {
            await _cognitoService.logout();
            return AuthActionLogoutResponce(Result.success());
          } catch (e) {
            return AuthActionLogoutResponce(Result.failure(e));
          }
        });
      case AuthActionSessionResponce():
        return Effect.none();
      case AuthActionLoginResponce():
        action.loginResponce.when(
          onSuccess: (session) {
            if (session != null) {
              state.mutate(
                (s) => s.copyWith(session: session, isLoading: false),
              );
            } else {
              state.mutate(
                (s) => s.copyWith(isLoading: false, error: 'ログイン失敗'),
              );
            }
          },
          onError:
              (error) => state.mutate(
                (s) => s.copyWith(isLoading: false, error: 'エラーが発生しました'),
              ),
        );
        return Effect.none();
      case AuthActionLogoutResponce():
        action.logoutResponce.when(
          onSuccess: (_) => state.mutate((s) => s.copyWith(isLoading: false)),
          onError:
              (error) => state.mutate(
                (s) => s.copyWith(isLoading: false, error: error.toString()),
              ),
        );
        return Effect.none();
    }
  });
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._cognitoService) : super(AuthState());

  Future<void> login(String username, String password) async {}

  Future<void> logout() async {}

  Future<void> checkSession() async {}
}

final cognitoServiceProvider = Provider<CognitoService>((ref) {
  return CognitoService();
});
