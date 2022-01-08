import 'package:market_client/src/http.dart';

/// {@template profile_client}
/// Holds endpoints that don't require auth in order to retrive orders and
/// statistics from profiles
/// {@endtemplate}
class ProfileClient {
  /// {@macro profile_client}
  ProfileClient(MarketGuestHttpClient? client)
      : _client = client ?? MarketGuestHttpClient();

  // ignore: unused_field
  final MarketGuestHttpClient _client;
}
