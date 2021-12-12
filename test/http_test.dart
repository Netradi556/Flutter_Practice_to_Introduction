import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  late HttpServer server;
  late Uri? url;
  setUp(() async {
    server = await HttpServer.bind('localhost', 0);
    url = Uri.parse('http://${server.address.host}:${server.port}');
  });

  // ｎull unableのため、演習どおりのコードだとエラーになる箇所
  tearDown(() async {
    await server.close(force: true);

    server = null as HttpServer;
    url = null;
  });
}
