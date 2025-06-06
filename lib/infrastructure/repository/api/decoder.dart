import 'dart:convert';

T decodeResponse<T>(String body, T Function(Map<String, dynamic>) fromJson) {
  final json = jsonDecode(body) as Map<String, dynamic>;
  return fromJson(json);
}

List<T> decodeListResponse<T>(
  String body,
  T Function(Map<String, dynamic>) fromJson,
) {
  final jsonList = jsonDecode(body) as List<Map<String, dynamic>>;
  return jsonList.map((e) => fromJson(e)).toList();
}
