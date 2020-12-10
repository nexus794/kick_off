import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController txtPesan = TextEditingController();
  String pesan = "Hello World";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Aplikasi Saya"),
    ),
    body: Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset("assets/1.jpg",
          fit: (BoxFit.none),),
          Text(pesan),
            RaisedButton.icon(
          icon: Icon(CupertinoIcons.paperplane),
          label: Text("Ubah Variable"),
          color: Colors.blueAccent,
          onPressed: (){
            setState(() {
               pesan = "Hello Panda";
            });
          },
           ),
           TextField(
             decoration: InputDecoration(labelText: "Input Here"),
             onChanged:  (value){
               setState(() {
                 pesan = "Test " + value;
               });
             },
           ),
          RaisedButton(
          child: Text("Set Ke Default"),
          onPressed: (){
            setState(() {
               pesan = txtPesan.text;
            });
          },
           ),
           RaisedButton(
          child: Text("Clear"),
          onPressed: (){
            txtPesan.clear();
          },
           ),
           SizedBox(height: 50,),
          RaisedButton(
          child: Text("Profile Page"),
          // onPressed: (){
          //   Navigator.pushNamed(context, "/profile").then((value){
          //     txtPesan.text = value;
          //   });
          // }
          onPressed: () async {
            var value = await Navigator.pushNamed(context, "/profile");
            if(value is Map) {
              setState(() {
                txtPesan.text = value["pesan1"];
                pesan = value ["pesan2"];
              });
            }
            }),
           
           RaisedButton(
          child: Text("Setting Page"),
          onPressed: (){
            Navigator.pushNamed(context, "/setting")
          ;
          },
        ),
        ],
    ),
      ),
        ),
    ),
    ),
    );
  }
}
