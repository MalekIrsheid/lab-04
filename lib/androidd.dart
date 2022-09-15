import 'package:flutter/material.dart';
import 'package:lab4/main.dart';

class androidd extends StatefulWidget {
  const androidd({super.key});

  @override
  State<androidd> createState() => _androiddState();
}

class _androiddState extends State<androidd> {
  String samsung = "";
  String huawei = "";
  String redmi = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/564x/2d/67/f9/2d67f9834649b584682ab58606f5a27e.jpg"),
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
              value: samsung,
              toggleable: true,
              groupValue: samsung,
              onChanged: ((value) {
                setState(() {
                  samsung = value.toString();
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
              value: huawei,
              groupValue: huawei,
              onChanged: ((val) {
                setState(() {
                  huawei = val.toString();
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
              value: redmi,
              groupValue: '',
              onChanged: ((val) {
                setState(() {
                  redmi = val.toString();
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
