import 'package:flutter/material.dart';
import 'package:mad_lab/splashscreen.dart';
import 'package:mad_lab/login.dart';
import 'package:mad_lab/register.dart';
import 'package:mad_lab/resetpass.dart';
import 'package:mad_lab/pages/setup.dart';
import 'package:mad_lab/pages/tp_sub.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome',
      title: 'Google-Internship',
      //home: MyHomePage(),
      routes: {
        'welcome':(context) => splashscreen(),
        'login': (context) => MyLogin(),
        'register': (context) => myRegister(),
        'forgot': (context) => resetPassword(),
        "/setup": (context) => Setup(),
        "/sub": (context) => TpSub(),
      },
    );
  }
}