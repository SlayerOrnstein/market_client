import 'package:market_client/market_client.dart';

Future<void> main() async {
  final api = MarketClient();
  final item = await api.getMarketItem('secura_dual_cestra');

  print(item.id);
}
