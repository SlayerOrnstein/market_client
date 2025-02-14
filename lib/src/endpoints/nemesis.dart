import 'package:market_client/src/http_client.dart';
import 'package:market_client/src/models/models.dart';
import 'package:market_client/src/utils/utils.dart';

/// Nemesis type
enum NemesisType {
  /// Kuva Lich
  lich,

  /// Sister of Parvos
  sister
}

/// {@template nemesis_endpoint}
/// Endpoints to make litch/sister/Technocyte calls
/// {@endtemplate}
class NemesisEndpoint {
  /// {@macro nemesis_endpoint}
  const NemesisEndpoint({required this.type, required MarketHttpClient client})
      : _client = client;

  /// Nemesis type that all request will be made for
  final NemesisType type;

  final MarketHttpClient _client;

  /// Get list of all tradable [NemesisType] weapons
  Future<List<NemesisWeapon>> fetchWeapons() async {
    final response = await _client.get('/${type.name}/weapons');
    final body = HttpHelpers.parseResponse<List<dynamic>>(response.body);
    final weapons = List<Map<String, dynamic>>.from(body.data);

    return weapons.map(NemesisWeapon.fromJson).toList();
  }

  /// Get [NemesisType] weapon
  Future<NemesisWeapon> fetchWeapon(String slug) async {
    final response = await _client.get('/${type.name}/weapon/$slug');
    final body = HttpHelpers.parseResponse<Map<String, dynamic>>(response.body);

    return NemesisWeapon.fromJson(body.data);
  }

  /// Get list of all tradable [NemesisType] ephemeras
  Future<List<NemesisEphemera>> fetchEphemeras() async {
    final response = await _client.get('/${type.name}/ephemeras');
    final body = HttpHelpers.parseResponse<List<dynamic>>(response.body);
    final ephemeras = List<Map<String, dynamic>>.from(body.data);

    return ephemeras.map(NemesisEphemera.fromJson).toList();
  }

  /// Get list of all tradable [NemesisType] quirks
  Future<List<NemesisQuirk>> fetchQuirks() async {
    final response = await _client.get('/${type.name}/quirks');
    final body = HttpHelpers.parseResponse<List<dynamic>>(response.body);
    final quirks = List<Map<String, dynamic>>.from(body.data);

    return quirks.map(NemesisQuirk.fromJson).toList();
  }
}
