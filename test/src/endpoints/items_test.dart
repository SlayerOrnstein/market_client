import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:market_client/market_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

class MockMarketHttpClient extends Mock implements MarketHttpClient {}

void main() {
  late MarketHttpClient mockClient;
  late ItemsEndpoint itemsEndpoint;

  setUp(() {
    mockClient = MockMarketHttpClient();
    itemsEndpoint = ItemsEndpoint(mockClient);
  });

  test('Make sure short items are parsed correctly', () async {
    final itemsFixture = await File('test/fixtures/items.json').readAsString();

    when(() => mockClient.get('/items'))
        .thenAnswer((_) async => Response(itemsFixture, 200));

    final items = await itemsEndpoint.fetchItems();
    final itemsJson = {
      'payload': {
        'items': items.map((i) => i.toJson()).toList(),
      },
    };

    expect(itemsJson, equals(json.decode(itemsFixture)));
  });

  test('Make sure full items are parsed correctly', () async {
    final itemFullFixture =
        await File('test/fixtures/item_full.json').readAsString();

    when(() => mockClient.get('/items/secura_dual_cestra'))
        .thenAnswer((_) async => Response(itemFullFixture, 200));

    final itemsInSet = await itemsEndpoint.fetchItem('secura_dual_cestra');
    final itemJson = {
      'payload': {
        'item': {
          'id': '54aae292e7798909064f1575',
          'items_in_set': itemsInSet.map((i) => i.toJson()).toList(),
        },
      },
    };

    expect(itemJson, equals(json.decode(itemFullFixture)));
  });

  group('Get item orders with and without full item', () {
    test('Get orders with full item included', () async {
      final ordersFixture =
          await File('test/fixtures/orders.json').readAsString();

      when(
        () => mockClient.get(
          '/items/secura_dual_cestra/orders',
          queryParameters: {'include': 'item'},
        ),
      ).thenAnswer((_) async => Response(ordersFixture, 200));

      final ordersWithItem = await itemsEndpoint
          .fetchItemOrders('secura_dual_cestra', includeItem: true);

      final ordersJson = {
        'payload': {
          'orders': ordersWithItem.$1.map((o) => o.toJson()).toList(),
        },
        'include': {
          'item': {
            'id': '54aae292e7798909064f1575',
            'items_in_set': ordersWithItem.$2?.map((i) => i.toJson()).toList(),
          },
        },
      };

      expect(ordersWithItem.$2, isNotNull);
      expect(ordersJson, equals(json.decode(ordersFixture)));
    });

    test('Get orders without full item included', () async {
      final ordersFixture =
          await File('test/fixtures/orders.json').readAsString();

      when(
        () => mockClient.get('/items/secura_dual_cestra/orders'),
      ).thenAnswer((_) async => Response(ordersFixture, 200));

      final ordersWithItem =
          await itemsEndpoint.fetchItemOrders('secura_dual_cestra');

      final ordersJson = {
        'payload': {
          'orders': ordersWithItem.$1.map((o) => o.toJson()).toList(),
        },
      };

      expect(ordersWithItem.$2, isNull);

      // Reuse the same fixture but remove "include" so test doesn't fail.
      final payload = json.decode(ordersFixture) as Map<String, dynamic>
        ..removeWhere((k, v) => k == 'include');

      expect(ordersJson, equals(payload));
    });
  });
}
