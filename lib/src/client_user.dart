import 'package:market_client/market_client.dart';

class MarketUser {
  const MarketUser({required MarketClient client}) : _client = client;

  final MarketClient _client;
}
