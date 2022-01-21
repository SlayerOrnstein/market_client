import 'package:market_client/src/clients/clients.dart';
import 'package:market_client/src/clients/item_client.dart';
import 'package:market_client/src/http.dart';

/// {@template marketclient}
/// Main Entry point for the market client.
/// {@endtemplate}
class MarketClient {
  /// {@macro marketclient}
  MarketClient({required this.client});

  /// Client used for all other clients.
  final MarketHttpClient client;

  /// Contains all endpoints to access Warframe Market Items.
  ItemClient get items => ItemClient(client: client);

  /// Contains all endpoints to access Warframe Market profiles.
  ProfileClient profiles(String ingameName) {
    return ProfileClient(ingameName: ingameName, client: client);
  }

  // TODO(SlayerOrn): implment user client

  // TODO(SlayerOrn): implment lich client

  // TODO(SlayerOrn): implment riven client
}
