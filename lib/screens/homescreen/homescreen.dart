
import 'package:flutter/material.dart';
import 'package:patient_app/screens/homescreen/navigate.dart';
import 'package:patient_app/screens/loginscreen/loginscreen.dart';
import 'package:provider/provider.dart';
import '../../api/apiget.dart';

class PatientViewHome extends StatefulWidget {
  @override
  _PatientViewHomeState createState() => _PatientViewHomeState();
}

class _PatientViewHomeState extends State<PatientViewHome> {
  @override
  Widget build(BuildContext context) {
    TextStyle contentStyle = TextStyle(fontSize: 22, color: Colors.grey,fontWeight: FontWeight.w400);
    TextStyle subStyle = TextStyle(fontSize: 11, color: Colors.blueGrey,fontWeight: FontWeight.w700);
    final patientP = Provider.of<PatientProvider>(context);
    return Scaffold(
      appBar: AppBar(
          elevation: 20,
          shadowColor: Colors.deepPurpleAccent,
          backgroundColor: Colors.white,
          //backgroundColorEnd: const Color(0xff008efa),
          //backgroundColorStart: const Color(0x5c42c6ee),
          title: Padding(
            padding: const EdgeInsets.only(right: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.medical_services,color: Colors.red,),
                    SizedBox(width: 5,),
                    Text(
                      "Patient's Hub",
                      style: TextStyle(
                        fontFamily: 'Candara',
                        fontSize: 20,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),],
                ),
                IconButton(padding: EdgeInsets.only(left: 50),
                  icon: Icon(Icons.logout),
                  color: Colors.deepPurple,
                  iconSize: 23,
                  onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context)=> new Credentials()));
                  },
                )
              ],
            ),
          )
      ),
      backgroundColor: const Color.fromRGBO(245,245,245, 1),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 270),
            child: new Image.asset(
              'assets/images/doctor1.png',
              width: 350,
              height: 400,
              fit: BoxFit.contain,
            ),
          ),
          ListView.builder(
            itemCount: patientP.patient.length=1,
            itemBuilder: (BuildContext context,int index){
              return Column(
                children: [
                  ListTile(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> patientView(patientDetails: patientP.patient[index],)));
                    },
                    title: Text(patientP.patient[index=2].name,style: contentStyle,),
                    subtitle: Text("view details",style: subStyle,),
                  ),
                  Divider(indent: 5,endIndent: 5,color: Colors.blueGrey,thickness: 1,)
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
