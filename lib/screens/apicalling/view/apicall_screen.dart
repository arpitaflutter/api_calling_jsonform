import 'package:api_calling_jsonform/utils/api_helper.dart';
import 'package:flutter/material.dart';

class apicall_screen extends StatefulWidget {
  const apicall_screen({Key? key}) : super(key: key);

  @override
  State<apicall_screen> createState() => _apicall_screenState();
}

class _apicall_screenState extends State<apicall_screen> {
  @override
  Widget build(BuildContext context) {
    Api_Helper api_helper = Api_Helper();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Api Calling Jsonform Data",style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Api_Helper? a1 = Api_Helper();
                  a1.apiCall();
                },
                child: Text("API call")),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${api_helper.apiCall()}"),
                );
              },
                itemCount: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
