//this is just to simulate the api calls becasue we actually
// don't have real api now

import 'package:dynamicrequest/api.dart';
import 'package:dynamicrequest/http_manager.dart';
import 'package:http/http.dart';

class ApiSimulate {
  HttpManager httpManager = HttpManager(client: Client());

  void fetchGetApi() {
    final response = httpManager
        .hitApi(requestType: RequestEnum.get, url: Apis.baseurl, param: {
      'hare': "rama",
      'hare ': 'krishana',
    });
  }

  void postApi() {
    final response = httpManager
        .hitApi(requestType: RequestEnum.patch, url: Apis.baseurl, param: {
      'hare': "rama",
      'hare ': 'krishana',
    });
  }
}


// this is just a demo showing how does the api calls work on 
// this new method