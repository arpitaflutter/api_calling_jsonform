import 'dart:convert';

import 'package:api_calling_jsonform/screens/apicalling/model/apiModel.dart';
import 'package:http/http.dart' as http;

class Api_Helper
{
  //post api call
  Future<void> apiCall()
  async {
    String apiLink = "https://jsonplaceholder.typicode.com/posts";
    List<dynamic> l1 = [];

    //api call
    Uri uri = Uri.parse(apiLink);

    //get api
    var response = await http.get(uri);
    // print(response.body);

    var json = jsonDecode(response.body);

    List<dynamic> jsonPostData = json.map((e) => postModel().fromPost(e)).toList();
    l1 = jsonPostData;

  }
}