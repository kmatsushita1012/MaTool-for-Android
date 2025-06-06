import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpClient {
  HttpClient({required this.baseUrl, http.Client? client})
    : client = client ?? http.Client();
  final String baseUrl;
  final http.Client client;

  Future<http.Response> get(
    String endpoint, {
    Map<String, String>? queryParameters,
  }) async {
    final uri = Uri.parse(
      '$baseUrl$endpoint',
    ).replace(queryParameters: queryParameters);
    final response = await client.get(uri);
    _checkForError(response);
    return response;
  }

  Future<http.Response> delete(
    String endpoint, {
    Map<String, String>? queryParameters,
    String? accessToken,
  }) async {
    final uri = Uri.parse(
      '$baseUrl$endpoint',
    ).replace(queryParameters: queryParameters);
    final headers = {
      if (accessToken != null) 'Authorization': 'Bearer $accessToken',
    };
    final response = await client.delete(uri, headers: headers);
    _checkForError(response);
    return response;
  }

  Future<http.Response> post(
    String endpoint,
    Object? body, {
    String? accessToken,
  }) async {
    final uri = Uri.parse('$baseUrl$endpoint');

    // ヘッダーを作成
    final headers = {
      'Content-Type': 'application/json',
      if (accessToken != null) 'Authorization': 'Bearer $accessToken',
    };

    final response = await client.post(
      uri,
      headers: headers,
      body: json.encode(body),
    );

    _checkForError(response);
    return response;
  }

  void _checkForError(http.Response response) {
    if (response.statusCode >= 400) {
      throw Exception('API Error: ${response.statusCode} ${response.body}');
    }
  }
}
