import 'dart:ffi';

import 'package:app/components/succes_scereen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditSrceen extends StatefulWidget {
  const EditSrceen({super.key});

  @override
  State<EditSrceen> createState() => _EditSrceenState();
}

class _EditSrceenState extends State<EditSrceen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _ageController = TextEditingController();
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();

  Future<void> saveName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user_name', name);
    print('name stored');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('saved'))
    );
  }
 Future<void> saveEmail(String email) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('email', email);
  print(email);
}
  Future<String?> getEmail() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getString('email'));
  }
  Future<void> saveondorjin(String weight, String height) async{
    double theight = double.parse(height);
    double tweight = double.parse(weight);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('height', theight);
    await prefs.setDouble('weight', tweight);
    print('success');
  }

   Future<double?> getondorjin() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getDouble('theight'));
    print(prefs.getDouble('tweight'));
  }
  Future<void> removeName() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 24),
            Text('Email',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(height: 24),
            Text('Age',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: TextField(
                controller: _ageController,
                decoration: InputDecoration(
                  hintText: 'Enter your age',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 24),
            Text('Weight (kg)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: TextField(
                controller: _weightController,
                decoration: InputDecoration(
                  hintText: 'Enter your weight',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 24),
            Text('Height (cm)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: TextField(
                controller: _heightController,
                decoration: InputDecoration(
                  hintText: 'Enter your height',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Container(
                  child: Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new, size: 18),
                      label: Text('Back'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                        textStyle: TextStyle(fontSize: 16),
                        shape: StadiumBorder(),
                        elevation: 8,
                        shadowColor: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      saveName(_nameController.text);
                    },
                    child: Text('Save'),
                  ),
                ),
                Container(
                  child: 
                  ElevatedButton(onPressed: () {
                    saveEmail(_emailController.text);
                  } , child: Text('email')),
                ),
                Container(
                  child: 
                  ElevatedButton(onPressed: () {
                    getEmail();
                  } , child: Text('getemail')),
                ),
                Container(
                  child: 
                  ElevatedButton(onPressed: () {
                    saveondorjin(_heightController.text, _weightController.text);
                  } , child: Text('ondor jin  hadgalah')),
                ),
                 Container(
                  child: 
                  ElevatedButton(onPressed: () {
                    getondorjin();
                  } , child: Text('get height  weight')),
                ),
                 Container(
                  child: 
                  ElevatedButton(onPressed: () {
                    removeName();
                  } , child: Text('remove email')),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
