import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() async {
  late Dio dio;
  late DioAdapter dioAdapter;

  Response<dynamic> response;

  group('Accounts', () {
    const baseUrl = 'https://exemplo.com';
    const userCredentials = <String, dynamic>{
      'email': 'caiovini08@outlook.com',
      'password': '1234'
    };

    setUp(() {
      dio = Dio(BaseOptions(baseUrl: baseUrl));
      dioAdapter = DioAdapter(dio: dio);
    });

    test('signs up user', () async {
      const route = '/signup';
      dioAdapter.onPost(route, (server) => server.reply(201, null),
          data: userCredentials);

      response = await dio.post(route, data: userCredentials);

      expect(response.statusCode, 201);
    });
  });
}
