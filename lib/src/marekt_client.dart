import 'package:market_client/market_client.dart';

/// {@template market_client}
/// Base Market client that exposes other endpoints.
/// {@endtemplate}
class MarketClient {
  /// {@macro market_client}
  const MarketClient(this.client);

  /// [MarketHttpClient] to use for all endpoints
  final MarketHttpClient client;

  /// Get order(s)
  Orders get orders => Orders(client);

  /// Get item(s)
  Items get items => Items(client);

  /// Get litch/sister/Technocyte weapons, ephemeras, and quirks.
  Nemesis nemesis(NemesisType type) => Nemesis(client, type: type);

  /// Get Riven weapon(s) and atrributes
  Rivens get rivens => Rivens(client);
}
