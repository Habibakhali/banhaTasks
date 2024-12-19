import 'package:flutter/material.dart';
import 'package:tasks_banha/calculater.dart';
import 'package:tasks_banha/login.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Login.routes,
      routes: {
        Login.routes: (_) => Login(),
        Calculater.routes:(_)=> Calculater()
      },
      home: Login(),
    );
  }
}
