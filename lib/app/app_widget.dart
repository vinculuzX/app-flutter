import 'package:aplicativo_frontend_flutter/app/screens/Login/login_widget.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget{
 @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Minha Estácio',
      debugShowCheckedModeBanner: false,
      home:LoginScreen()
    );
  }
}