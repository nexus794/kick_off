import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController txtpesan = TextEditingController();
  TextEditingController txtpesanlagi = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Profile Page"),
       ),
       body: Container(
         child: Column(
           children: [
             TextField(
               controller: txtpesan,
             ),
             TextField(
               controller: txtpesanlagi,
             ),
             RaisedButton(
               child: Text("Send & Exit"),
               onPressed: (){
                 var result = <String, String>{
                   "pesan1": txtpesan.text,
                   "pesan2": txtpesanlagi.text,
                 };
                Navigator.pop(context, result);
               },
             )
           ],
         ),
       ),
    );
  }
}