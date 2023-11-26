import 'package:market_client/market_client.dart';
import 'package:meta/meta.dart';

/// {@template auth}
/// Login, logout, registration and password reset.
/// {@endtemplate}
class AuthEndpoint {
  /// {@macro auth}
  const AuthEndpoint(MarketHttpClient client) : _client = client;

  final MarketHttpClient _client;

  /// Signs in a user and returns an instance of [CurrentUser] and the token.
  ///
  /// Token should be saved by the client securely.
  Future<(MarketHttpClient, CurrentUser)> signIn(SignInRequest request) async {
    final response = await _client.post(
      '/auth/signin',
      headers: <String, String>{'authorization': 'JWT'},
      body: request.toJson(),
    );

    final payload = HttpHelpers.parseResponse(response.body);
    final auth = response.headers['authorization'];
    if (auth == null) {
      throw UnauthorisedException();
    }

    return (
      _client.copyWith(token: auth),
      CurrentUser.fromJson(payload['user'] as Map<String, dynamic>)
    );
  }

  /// Registers a new user.
  @experimental
  Future<(String, CurrentUser)> registerUser(
    RegistrationRequest request,
  ) async {
    final response = await _client.post(
      '/auth/registration',
      headers: <String, String>{'authorization': 'JWT'},
      body: request.toJson(),
    );

    final payload = HttpHelpers.parseResponse(response.body);
    final auth = response.headers['authorization'];
    if (auth == null) {
      throw UnauthorisedException();
    }

    return (
      auth,
      CurrentUser.fromJson(payload['user'] as Map<String, dynamic>)
    );
  }

  /// Reset user password
  @experimental
  Future<void> resetPassword(String email) async {
    await _client.post('/auth/restore', body: {'email': email});
  }
}
