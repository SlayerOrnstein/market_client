import 'package:market_client/market_client.dart';

Future<void> main() async {
  final api = MarketClient(client: MarketHttpClient());
  final item = await api.items.getMarketItem('secura_dual_cestra');

  // ignore: avoid_print
  print(item.id);
}
