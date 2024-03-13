import 'package:http/http.dart';

enum RequestEnum { get, post, patch, delete }

class HttpManager {
  final Client client;
  HttpManager({required this.client});

  Future<Response> hitApi(
      {required RequestEnum requestType, required String url, dynamic param}) {
    Map<String, String> heading = {
      'Content-Type': 'application/json',
    };

    Map<String, String> headingWithToken = {
      'Authorization': 'Bearer //tokenvariable',
    };
    Map<String, String> headingWithPatchToken = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer //tokenvariable',
    };

    switch (requestType) {
      case RequestEnum.get:
        return client.get(Uri.parse(url), headers: heading);
      case RequestEnum.delete:
        return client.post(Uri.parse(url),
            headers: headingWithToken, body: param);
      case RequestEnum.patch:
        return client.patch(Uri.parse(url),
            headers: headingWithPatchToken, body: param);
      case RequestEnum.delete:
        return client.delete(Uri.parse(url), headers: heading, body: param);
      default:
        throw Exception('sorry the provided path is not right');
    }
  }
}
