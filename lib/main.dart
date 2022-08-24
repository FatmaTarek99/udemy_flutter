import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/login/Login_Screen.dart';
import 'package:udemy_flutter/modules/massenger/MassengerScreen.dart';
import 'package:udemy_flutter/modules/bmi_result/bmi_result_screen.dart';
import 'package:udemy_flutter/modules/bmi/bmi_screen.dart';
import 'package:udemy_flutter/modules/counter/counter_screen.dart';
import 'package:udemy_flutter/modules/users/users_screen.dart';
main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Login_screen(),
   );
  }
}