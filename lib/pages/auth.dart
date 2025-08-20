import 'package:app/pages/MainPage.dart';
import 'package:app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class auth extends StatefulWidget {
  const auth({super.key});

  @override
  State<auth> createState() => _authState();
}

class _authState extends State<auth> {
  bool isLoggedIn = false;
  void initstate(){
    super.initState();
    checkLoginStatus();
  }
  void checkLoginStatus () async{
    setState(() {
      isLoggedIn = false;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token') ?? '';
    if(token == null){
      setState(() {
        isLoggedIn = false;
      });
    }else{
      isLoggedIn = true;
    }
  }
  
  
  @override
  Widget build(BuildContext context) {
    return isLoggedIn
    ? MainPage()
    : Login();
  }
}