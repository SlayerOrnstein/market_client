import 'package:market_client/market_client.dart';
import 'package:market_client/src/exceptions.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/fixture_reader.dart';

class MockMarketHttpClient extends Mock implements MarketGuestHttpClient {}

void main() {
  // final itemOrderFixture = fixture('item_order.json');
  final itemsFixture = fixture('items.json');
  final itemFixture = fixture('item.json');
  // final recentFixture = fixture('most_recent.json');
  // final userProfileFixture = fixture('user_profile.json');

  late MarketGuestHttpClient client;
  late MarketClient api;

  setUpAll(() {
    client = MockMarketHttpClient();
    api = MarketClient(client: client);
  });

  test('Test items retrivial', () async {
    when(() => client.get('/items'))
        .thenAnswer((_) => Future.value(itemsFixture));

    final items = await api.getMarketItems();

    expect(
      items.map<Map<String, dynamic>>((e) => e.toJson()).toList(),
      List<Map<String, dynamic>>.from(itemsFixture['items'] as List<dynamic>),
    );
  });

  test('Test items exceptions', () {
    when(() => client.get('/items')).thenThrow(BadRequestException());
    expect(() => api.getMarketItems(), throwsA(isA<BadRequestException>()));
  });

  test('Test retrivial of a single item', () async {
    when(() => client.get('/items/secura_dual_cestra'))
        .thenAnswer((_) => Future.value(itemFixture));

    final item = await api.getMarketItem('secura_dual_cestra');

    expect(item.toJson(), itemFixture['item'] as Map<String, dynamic>);
  });

  // test('Test most recent orders parsing', () async {
  //   when(() => client.get('/most_recent'))
  //       .thenAnswer((_) async => recentFixture);

  //   final recent = await api.mostRecentOrders();

  //   final buyOrders = List<Map<String, dynamic>>.from(
  //       recentFixture['buy_orders'] as List<dynamic>,);

  //   final sellOrders = List<Map<String, dynamic>>.from(
  //       recentFixture['sell_orders'] as List<dynamic>,);

  //   expect(recent.buyOrders.map((e) => e.toJson()).toList(), buyOrders);
  //   expect(recent.sellOrders.map((e) => e.toJson()).toList(), sellOrders);
  // });
}
