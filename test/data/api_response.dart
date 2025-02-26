import 'dart:convert';

String apiResponse(dynamic data, [dynamic error]) => json.encode({'apiVersion': 'x.x.x', 'data': data, 'error': error});
