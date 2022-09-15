import 'package:flutter/material.dart';
import 'package:lab4/main.dart';

class androidd extends StatefulWidget {
  const androidd({super.key});

  @override
  State<androidd> createState() => _androiddState();
}

class _androiddState extends State<androidd> {
  String phone = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Android_robot.svg/1745px-Android_robot.svg.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.zero,
                color: Colors.amber,
              ),
              child: Text(
                "Choose your phone",
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile(
              activeColor: Colors.blue,
              secondary: Icon(Icons.phone_android),
              title: Text(
                "Samsung S22 Ultra",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(" Memory:256GB RAM:8GB "),
              value: "samsung",
              groupValue: phone,
              onChanged: ((value) {
                setState(() {
                  value = value.toString();
                });
              }),
            ),
            RadioListTile(
              activeColor: Colors.blue,
              secondary: Icon(Icons.phone_android),
              title: Text(
                "Huawei Mate 40 pro",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(" Memory:128 RAM:6GB "),
              value: "huawei",
              groupValue: phone,
              onChanged: ((val) {
                setState(() {
                  phone = val.toString();
                });
              }),
            ),
            RadioListTile(
              activeColor: Colors.blue,
              secondary: Icon(Icons.phone_android),
              title: Text(
                "Redmi note 11pro",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(" Memory:512 RAM:12GB "),
              value: "redmi",
              groupValue: phone,
              onChanged: ((val) {
                setState(() {
                  val = val.toString();
                });
              }),
            ),
            Divider(
              height: 100,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ));
                },
                icon: Icon(Icons.home_filled),
                label: Text("Home Page"))
          ],
        ),
      ),
    );
  }
}
