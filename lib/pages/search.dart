import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SearchPage extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future<void> getUserData() async {
    final url = "http://jsonplaceholder.typicode.com/users";
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print(data);
        print('success');
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e'); 
    }
  }

  Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  Future<String?> login(String email, String password) async {
    final url = "http://127.0.0.1:8000/api/user/login";
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'email': email,
          'password': password,
        }),
      );
      print(' status: ${response.statusCode}');
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        print(data);
        String token = data['token'];
        if (token == null) {
          throw Exception('hooson');
        } else {
          await saveToken(token);
          print(token); 
        }
      } else {
        print('Login failed with status: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Login error: $e');
      return null; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              getUserData();
            },
            child: Text('get'),
          ),
        ),
        Center(
           child: ElevatedButton(
            onPressed: () {
             login(_emailController.text,_passwordController.text);
            },
            child: Text('post'),
          ),
        ),
        Column(
          children: [
            Container(
              child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
            ),
               Container(
              child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                     
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
            ),
          ],
        )
      ],

      )
    );
  }
}
