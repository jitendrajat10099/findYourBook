import 'package:auth/screens/auth/forgot.dart';
import 'package:auth/screens/auth/root.dart';
import 'package:auth/screens/auth/signIn.dart';
import 'package:auth/screens/auth/signUp.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner : false,
        initialRoute: '/',
        routes: {
          '/' : (context)=>Root(),
          '/signup' : (context)=> SignUp(),
          '/forgotPassword' :(context)=> ForgotPassword(),
        },
      title: 'My app',
    );
  }
}

