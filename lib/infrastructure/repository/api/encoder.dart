import 'dart:convert';

String encodeToJson<T>(T object, Map<String, dynamic> Function(T) toJson) {
  return jsonEncode(toJson(object));
}

String encodeListToJson<T>(
  List<T> list,
  Map<String, dynamic> Function(T) toJson,
) {
  return jsonEncode(list.map(toJson).toList());
}
