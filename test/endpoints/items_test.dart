import 'package:http/http.dart';
import 'package:market_client/market_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../data/api_response.dart';
import '../data/items.dart';
import '../mocks.dart';

void main() {
  late MarketHttpClient client;
  late Items itemsEndpoint;

  setUp(() {
    client = MockMarketHttpClient();
    itemsEndpoint = Items(client);
  });

  tearDown(() => reset(client));

  test('Make sure short items are parsed correctly', () async {
    when(() => client.get('/items')).thenAnswer((_) async => Response(apiResponse([itemShort]), 200));

    final items = await itemsEndpoint.fetchItems();

    expect(items.map((i) => i.toMap()).toList(), equals([itemShort]));
  });

  test('Make sure full items are parsed correctly', () async {
    when(() => client.get('/item/abating_link')).thenAnswer((_) async => Response(apiResponse(itemFull), 200));

    final res = await itemsEndpoint.fetchItem('abating_link');

    expect(res.toMap(), equals(itemFull));
  });
}
