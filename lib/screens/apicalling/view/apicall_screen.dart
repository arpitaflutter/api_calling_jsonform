import 'package:api_calling_jsonform/screens/apicalling/provider/apicallProvider.dart';
import 'package:api_calling_jsonform/utils/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class apicall_screen extends StatefulWidget {
  const apicall_screen({Key? key}) : super(key: key);

  @override
  State<apicall_screen> createState() => _apicall_screenState();
}

class _apicall_screenState extends State<apicall_screen> {

  @override
  void initState() {
   super.initState();

   Provider.of<apicallProvider>(context,listen: false).PostApiCall();
  }

  apicallProvider? at;
  apicallProvider? af;
  @override
  Widget build(BuildContext context) {

    at = Provider.of<apicallProvider>(context,listen: true);
    af = Provider.of<apicallProvider>(context,listen: false);

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
                  af!.PostApiCall();
                },
                child: Text("API call")),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${at!.l1[index].userId}"),
                  subtitle: Text("${at!.l1[index].id}"),
                );
              },
                itemCount: at!.l1.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
