import 'package:market_client/src/endpoints/base_endpoint.dart';
import 'package:market_client/src/models/models.dart';
import 'package:market_client/src/utils/utils.dart';

class DashboardEndpoint extends BaseEndpoint {
  DashboardEndpoint(super.client);

  Future<DashboardShowcase> fetchShowcase() async {
    final response = await client.get('/dashboard/showcase');
    final body = HttpHelpers.parseResponse<Map<String, dynamic>>(response.body);

    return DashboardShowcase.fromMap(body.data);
  }
}
