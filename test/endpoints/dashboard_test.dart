import 'dart:io';

import 'package:http/http.dart';
import 'package:market_client/market_client.dart';
import 'package:market_client/src/endpoints/dashboard.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../data/api_response.dart';
import '../data/dashboard.dart';
import '../mocks.dart';

void main() {
  late MarketHttpClient client;
  late DashboardEndpoint dashboard;

  setUp(() {
    client = MockMarketHttpClient();
    dashboard = DashboardEndpoint(client);
  });

  tearDown(() => reset(client));

  test('fetchShowcase() => get current showcase', () async {
    when(
      () => client.get('/dashboard/showcase'),
    ).thenAnswer((_) async => Response(apiResponse(showcase), HttpStatus.ok));

    final dashsc = await dashboard.fetchShowcase();

    expect(dashsc.items.first.item, equals('673516a9db3ac2cfade14a70'));
  });
}
