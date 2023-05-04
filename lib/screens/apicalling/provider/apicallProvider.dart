import 'package:api_calling_jsonform/screens/apicalling/model/apiModel.dart';
import 'package:api_calling_jsonform/utils/api_helper.dart';
import 'package:flutter/material.dart';

class apicallProvider extends ChangeNotifier
{

  List<dynamic> l1 = [];
   Future<void> PostApiCall()
   async {
     Api_Helper a1 = Api_Helper();

     List<dynamic> PostList = await a1.apiCall();

     l1 = PostList;
     notifyListeners();
   }
}
