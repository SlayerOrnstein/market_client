import 'package:market_client/market_client.dart';
import 'package:market_client/src/exceptions.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

class MockMarketHttpClient extends Mock implements MarketHttpClient {}

void main() {
  late MarketHttpClient client;
  late MarketClient api;

  setUpAll(() {
    client = MockMarketHttpClient();
    api = MarketClient(client: client);
  });

  test('Test Market Item retrivial', () async {
    when(() => client.get('/items')).thenAnswer(
      (i) => Future.value(<String, dynamic>{'items': []}),
    );

    expect(await api.getMarketItems(), <MarketItem>[]);
  });

  test('Test retrivial of a specfic item', () {});

  test('Test Market item exceptions', () {
    when(() => client.get('/items')).thenThrow(BadRequestException());
    expect(() => api.getMarketItems(), throwsA(isA<BadRequestException>()));
  });
}
