import 'package:http/http.dart';
import 'package:market_client/src/endpoints/riven.dart';
import 'package:market_client/src/http_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../data/api_response.dart';
import '../data/rivens.dart';
import '../mocks.dart';

void main() {
  late MarketHttpClient client;
  late Rivens rivens;

  setUp(() {
    client = MockMarketHttpClient();
    rivens = Rivens(client);
  });

  tearDown(() => reset(client));

  test('fetchRivens() => Get list of rivens', () async {
    when(() => client.get('/riven/weapons')).thenAnswer((_) async => Response(apiResponse([rivenItem]), 200));

    final rivs = await rivens.fetchRivens();

    expect(rivs.map((i) => i.toMap()).toList(), equals([rivenItem]));
  });

  test('fetchRiven(slug) => Get a Riven', () async {
    when(() => client.get('/riven/weapon/kulstar')).thenAnswer((_) async => Response(apiResponse(rivenItem), 200));

    final riven = await rivens.fetchRiven('kulstar');

    expect(riven.toMap(), equals(rivenItem));
  });

  test('fetchRivenAttributes() => Get list of riven attributes', () async {
    when(() => client.get('/riven/attributes')).thenAnswer((_) async => Response(apiResponse([rivenAttribute]), 200));

    final attributes = await rivens.fetchRivenAttributes();

    expect(attributes.map((i) => i.toMap()).toList(), equals([rivenAttribute]));
  });
}
