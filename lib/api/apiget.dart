import 'package:patient_app/api/api.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class PatientProvider with ChangeNotifier {
  PatientProvider() {
    this.fetchTask();
  }
  List<PatientRecords> _patient = [];
  List<PatientRecords> get patient {
    return [..._patient];
  }

  fetchTask() async{
    final url = "http://10.0.2.2:8000/list/?format=json";
    final response = await http.get(url);
    if(response.statusCode == 200){
      var data = json.decode(response.body) as List;
      _patient = data.map<PatientRecords>((json) => PatientRecords.fromJson(json)).toList();
      //notifyListeners();
    }
  }
}
