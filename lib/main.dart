import 'package:api_calling_jsonform/screens/apicalling/provider/apicallProvider.dart';
import 'package:api_calling_jsonform/screens/apicalling/view/apicall_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => apicallProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => apicall_screen(),
        },
      ),
    ),
  );
}