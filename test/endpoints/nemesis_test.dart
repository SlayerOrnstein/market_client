import 'package:http/http.dart';
import 'package:market_client/src/endpoints/nemesis.dart';
import 'package:market_client/src/http_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../data/api_response.dart';
import '../data/nemesis.dart';
import '../mocks.dart';

typedef NemesisData = ({Map<String, dynamic> weapon, Map<String, dynamic> ephemera, Map<String, dynamic> quirk});

void main() {
  const responses = <NemesisType, NemesisData>{
    NemesisType.lich: (weapon: lichWeapon, ephemera: lichEphemera, quirk: lichQuirk),
    NemesisType.sister: (weapon: sisterWeapon, ephemera: sisterEphemera, quirk: sisterQuirk),
  };

  for (final type in NemesisType.values) {
    // Throw if data doesn't exist, reminds me to add data for it
    final data = responses[type]!;

    group('${type.name} endpoints', () {
      late MarketHttpClient client;
      late Nemesis endpoint;

      setUp(() {
        client = MockMarketHttpClient();
        endpoint = Nemesis(client, type: type);
      });

      tearDown(() => reset(client));

      test('fetchWeapons() => Get list of nemesis weapons', () async {
        when(
          () => client.get('/${type.name}/weapons'),
        ).thenAnswer((_) async => Response(apiResponse([data.weapon]), 200));

        final weapons = await endpoint.fetchWeapons();

        expect(weapons.map((w) => w.toMap()).toList(), equals([data.weapon]));
      });

      test('fetchWeapon(slug) => Get one nemesis weapon', () async {
        final slug = data.weapon['slug'] as String;

        when(
          () => client.get('/${type.name}/weapon/$slug'),
        ).thenAnswer((_) async => Response(apiResponse(data.weapon), 200));

        final weapon = await endpoint.fetchWeapon(slug);

        expect(weapon.toMap(), equals(data.weapon));
      });

      test('fetchEphemeras() => Get list of nemesis ephemeras', () async {
        when(
          () => client.get('/${type.name}/ephemeras'),
        ).thenAnswer((_) async => Response(apiResponse([data.ephemera]), 200));

        final ephemeras = await endpoint.fetchEphemeras();

        expect(ephemeras.map((i) => i.toMap()).toList(), equals([data.ephemera]));
      });

      test('fetchQuirks() => Get list of nemesis quirks', () async {
        when(
          () => client.get('/${type.name}/quirks'),
        ).thenAnswer((_) async => Response(apiResponse([data.quirk]), 200));

        final quirks = await endpoint.fetchQuirks();

        expect(quirks.map((i) => i.toMap()).toList(), equals([data.quirk]));
      });
    });
  }
}
