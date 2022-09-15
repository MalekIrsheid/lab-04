import 'package:flutter/material.dart';
import 'package:lab4/main.dart';

class ios extends StatefulWidget {
  const ios({super.key});

  @override
  State<ios> createState() => _iosState();
}

class _iosState extends State<ios> {
  List myItems = ["macbook", "airbuds", "Iphone"];
  String mySelectedItem = "Iphone";
  bool applle = false;
  bool mac = false;
  bool ear = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 500,
          height: 800,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://wallpapers.com/images/hd/metal-apple-logo-dx3bhzaaf839omrq.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero, color: Colors.black),
                child: Text(
                  "Please Select What Do You want",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70),
                ),
              ),
              Divider(
                height: 100,
              ),
              DropdownButton(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                dropdownColor: Colors.black54,
                icon: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.arrow_circle_down,
                    color: Colors.black,
                  ),
                ),
                value: mySelectedItem,
                items: myItems
                    .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    mySelectedItem = val.toString();
                  });
                },
              ),
              CheckboxListTile(
                  secondary: CircleAvatar(
                      child: Icon(Icons.apple), backgroundColor: Color(26)),
                  title: Text("Iphone"),
                  subtitle: Text(
                    " 13 Pro max ",
                    style: TextStyle(fontSize: 30),
                  ),
                  isThreeLine: true,
                  checkColor: Colors.amber,
                  value: applle,
                  onChanged: (val) {
                    setState(() {
                      applle = val!;
                    });
                  }),
              CheckboxListTile(
                  secondary: CircleAvatar(
                      child: Icon(Icons.laptop), backgroundColor: Color(26)),
                  title: Text("macbook"),
                  subtitle: Text(
                    " macbook pro 2022 ",
                    style: TextStyle(fontSize: 30),
                  ),
                  isThreeLine: true,
                  checkColor: Colors.amber,
                  value: mac,
                  onChanged: (val) {
                    setState(() {
                      mac = val!;
                    });
                  }),
              CheckboxListTile(
                  secondary: CircleAvatar(
                      child: Icon(Icons.earbuds), backgroundColor: Color(26)),
                  title: Text("Airbuds"),
                  subtitle: Text(
                    " airbuds 3pro ",
                    style: TextStyle(fontSize: 30),
                  ),
                  isThreeLine: true,
                  checkColor: Colors.amber,
                  value: ear,
                  onChanged: (val) {
                    setState(() {
                      ear = val!;
                    });
                  }),
              Divider(
                height: 20,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context, MaterialPageRoute(
                        builder: (context) {
                          return Home();
                        },
                      ));
                    });
                  },
                  icon: Icon(Icons.home),
                  label: Text("Home"))
            ],
          ),
        ),
      ),
    );
  }
}
