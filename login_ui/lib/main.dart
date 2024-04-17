import 'package:flutter/material.dart';
import 'package:login_ui/pages/Forgot.dart';
import 'package:login_ui/pages/Register.dart';
import 'package:login_ui/pages/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context)=> MyLogin(),
      'register':(context)=> MyRegister(),
      'forgot-password':(context)=> MyForgot(),
    },
  ));
}

