import 'dart:convert';

import 'package:http/http.dart';
import 'package:market_client/market_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../fixtures.dart';

class MockMarketHttpClient extends Mock implements MarketHttpClient {}

void main() {
  late MarketHttpClient mockClient;
  late ItemsEndpoint itemsEndpoint;

  setUp(() {
    mockClient = MockMarketHttpClient();
    itemsEndpoint = ItemsEndpoint(mockClient);
  });

  test('Make sure short items are parsed correctly', () async {
    when(() => mockClient.get('/items')).thenAnswer(
      (_) async => Response(
        json.encode({
          'apiVersion': 'x.x.x',
          'data': [itemShort],
          'error': null,
        }),
        200,
      ),
    );

    final items = await itemsEndpoint.fetchItems();

    expect(items.map((i) => i.toMap()).toList(), equals([itemShort]));
  });

  test('Make sure full items are parsed correctly', () async {
    when(() => mockClient.get('/item/abating_link')).thenAnswer(
      (_) async => Response(
        json.encode({'apiVersion': 'x.x.x', 'data': itemFull, 'error': null}),
        200,
      ),
    );

    final res = await itemsEndpoint.fetchItem('abating_link');

    expect(res.toMap(), equals(itemFull));
  });
}
