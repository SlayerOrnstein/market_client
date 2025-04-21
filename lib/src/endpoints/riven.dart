import 'package:market_client/src/endpoints/base_endpoint.dart';
import 'package:market_client/src/models/models.dart';
import 'package:market_client/src/utils/utils.dart';

/// {@template riven_endpoint}
/// Entry point for riven endpoint
/// {@endtemplate}
class Rivens extends BaseEndpoint {
  /// {@macro riven_endpoint}
  const Rivens(super.client);

  /// Get list of all tradable riven items.
  Future<List<Riven>> fetchRivens() async {
    final response = await client.get('/riven/weapons');
    final body = HttpHelpers.parseResponse<List<dynamic>>(response.body);
    final weapons = List<Map<String, dynamic>>.from(body.data);

    return weapons.map(Riven.fromMap).toList();
  }

  /// Get a specific riven items.
  Future<Riven> fetchRiven(String slug) async {
    final response = await client.get('/riven/weapon/$slug');
    final body = HttpHelpers.parseResponse<Map<String, dynamic>>(response.body);

    return Riven.fromMap(body.data);
  }

  /// Get a list of riven attributes.
  Future<List<RivenAttribute>> fetchRivenAttributes() async {
    final response = await client.get('/riven/attributes');
    final body = HttpHelpers.parseResponse<List<dynamic>>(response.body);
    final attributes = List<Map<String, dynamic>>.from(body.data);

    return attributes.map(RivenAttribute.fromMap).toList();
  }
}
