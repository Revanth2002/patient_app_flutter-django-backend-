//import 'package:Patient/screens/loginscreen/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_app/api/api.dart';
import 'package:patient_app/api/apiget.dart';
import 'package:patient_app/screens/homescreen/homescreen.dart';
import 'screens/loginscreen/loginscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PatientProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Credentials(),
        ),
      ),
    );
  }
}
